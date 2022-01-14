

const uint8_t num_to_led[] = {
  0b10100000, // 0
  0b11111001, // 1
  0b11000100, // 2
  0b01010000,  // 3 
  0b10011001,        //4
  0b10010010,       // 5
  0b00000010, //6
  0b11111000,      //7
  0,     //8
    0b00010000,  // 9 
  };
  
 inline void display_number_multiplex_at_once(int &val)
 {  
   int val2 = val;
   for (uint8_t i=0;i<8;i++)
   {
     
    digitalWrite(LATCH_PIN,LOW);
    
    shiftOut(DATA_PIN, CLOCK_PIN, MSBFIRST,1<<i);
    shiftOut(DATA_PIN, CLOCK_PIN, MSBFIRST, num_to_led[val2%10]);

    digitalWrite(LATCH_PIN,HIGH);
    digitalWrite(LATCH_PIN,LOW);
    Serial.println(i);
    //delay(2);
    val2/=10;
    if(val==0)
      break;

   }

 }

  inline void display_number_multiplex_per_digit(uint8_t pos,uint8_t val)
 {  


     
    digitalWrite(LATCH_PIN,LOW);
    
    shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST,1<<pos);
    shiftOut(DATA_PIN, CLOCK_PIN, MSBFIRST, num_to_led[val]);

    digitalWrite(LATCH_PIN,HIGH);
    digitalWrite(LATCH_PIN,LOW);

   

 }
