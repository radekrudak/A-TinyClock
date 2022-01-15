
// Defining pins ofr Atmega on whith i tested this
#ifdef __AVR_ATmega328P__
#define ANALOG_BUTTON A1
#define CLOCK_INTERUPT_PIN 2

#define DATA_PIN 11 // those are used in "multiplex_led_out.h"
#define LATCH_PIN 10
#define CLOCK_PIN 13

// defining pins for Attiny13a for with suppose to be end platform
#else
//  #define ADD_HOURS_BUTTON  5
#define ANALOG_BUTTON A1
#define CLOCK_INTERUPT_PIN 1

#define DATA_PIN 0 // those are also used in "multiplex_led_out.h" so keep that in mind
#define LATCH_PIN 3
#define CLOCK_PIN 4
#endif

#include "multiplex_led_out.h"
// used for button press detection
uint8_t interupt_timer = 0;
uint8_t last_pressed_button = 0;

// don't ask why it is in struct... long story
struct my_time {
  uint8_t sec = 0;
  uint8_t minutes = 0;
  uint8_t hours = 0;
};

struct my_time real_time;


// WHY IS THIS IN INTERUPT?!
//interupt trigered if voltage on pin AIN0 (Aruino: PIN 0 ) is higher than voltage on pin AIN1 (Arduino PIN 1)... 
// so why in interupt and not loop ? Well long story i i kinda misread datasheet and trough that PIN1 is also A1 ... it isn't
// I tried to put this in loop function but it didn't work (first digits from left were dim and only first from left was somehow bright 
 //(probably because it displayed right digits fastly them after displaying last one it was checking button stuff while last digit was still 
 // on and thus appeared bright)) 
// ), i could use timer interupt
// with would be more elegant 
//
//  TL:DR: I misread datasheet and used this interupt... but keeping this in this interuptit works(while puting this in loop fun isn't) 
//  so i keep that this way. 
//
//  What it dose ?
//  When it checks what button is pressed by checking what voltage (from voltage ledder) is on ANALOG_BUTTON pin
//  but first it checks if it is below certain voltage if it isn't pin is pulled up and thus no button is pressed.
//  but button press is registered only if interupt timer is equal to 255, with is incremented each time ANALOG_BUTTON is below certain value
//  but zeroed if ANALOG_BUTTON is above said value. It ensures that button press will be detected only after voltage is below certain value for 255 times in a row.(interupt_timer will be zeroed by overflow)

ISR(ANA_COMP_vect)
{

  if (analogRead(ANALOG_BUTTON) < 700)
  {
    interupt_timer ++;


    if (interupt_timer == 255)
    {
      interupt_timer = 0;
      pinMode(ANALOG_BUTTON, INPUT);
      last_pressed_button = (analogRead(ANALOG_BUTTON) + 32  ) / 128;
      pinMode(ANALOG_BUTTON, INPUT_PULLUP);


      if (last_pressed_button == 0)
      {
        real_time.sec = 0;
      }

      else if (last_pressed_button == 1)
      {
        real_time.minutes = 0;

      }
      else if (last_pressed_button == 2)
      {
        real_time.minutes ++;
        if (real_time.minutes >= 60)
        {
          real_time.minutes = 0;
        }
      }


      else if ( last_pressed_button == 3)
      {
        real_time.hours = 0;
      }
      else if ( last_pressed_button == 4)
      {
        real_time.hours++;
        if (real_time.hours >= 24)
        {
          real_time.hours = 0;
        }
      }
    }
  }
  else
  {
    interupt_timer = 0;
  }
}



// function called by INT0 interupt trigered by clock source in my case with frequency of 0.5hz it is trigered every 2 seconds. 
// If you're using different clock frequency you have to change this code
void add_Second()
{


  real_time.sec += 2;
  if (real_time.sec == 60)
  {
    real_time.sec = 0;
    real_time.minutes++;
    if (real_time.minutes == 60)
    {
      real_time.minutes = 0;
      real_time.hours++;
      if (real_time.hours == 24)
      {
        real_time.hours = 0;
      }
    }

  } // end of if sec == 60
 


} // end of interupt function




void setup ()
{

  // Setups all ups I/O pins
  pinMode(DATA_PIN , OUTPUT);
  pinMode(LATCH_PIN, OUTPUT);
  pinMode(CLOCK_PIN, OUTPUT);
  
  pinMode(ANALOG_BUTTON, INPUT_PULLUP);
  pinMode(CLOCK_INTERUPT_PIN, INPUT); // i probably don't have to set up this pin as input but why not.
  // Attach interupt for clock signal
  attachInterrupt(digitalPinToInterrupt(CLOCK_INTERUPT_PIN), add_Second, FALLING);
  // set ups interupt for ANA_COMP_vect interupt
  ADMUX |= 0b01;
  ADCSRB |= 0b01000000;
  ACSR |= 0b00001010;
  interrupts();             // enable all interrupts



}

void loop() {


  display_number_multiplex_per_digit(7, real_time.minutes % 10);    // display ones number of minutes
  if (real_time.minutes / 10 % 10)                            
    display_number_multiplex_per_digit(6, real_time.minutes / 10 % 10); // if minutes have ten'th place display it
    
  display_number_multiplex_per_digit(5, 8); // It turns on two tods (':' between minutes and hours) on display
  
  display_number_multiplex_per_digit(4, real_time.hours % 10); // display ones number of hours
  if (real_time.hours / 10 % 10)
    display_number_multiplex_per_digit(3, real_time.hours / 10 % 10); // if hours have ten'th place display it


}
//////////////////////////////////////////////
