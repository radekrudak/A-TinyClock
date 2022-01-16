<h1>A-TinyClock</h1>
  Clock i made based on Attiny13a. In this README file you will find principle of operation while repo contains code and schematics.
<h2>Analogue button(s)/User input</h2>
  How attiny13a detect keypresses from 5 buttons with only 1 pin ?
  Well side of each button is connected to mentioned above pin (ADC1/A1 physical pin 7), while other is connected to corresponding place on resistive ladder 
  (as is in schematic) each point on that ladder have different voltage, so pressing of different buttons will short corresponding voltage to pin ADC1/A1 with can be
  read and interpreted (see source code especially ISR(ANA_COMP_vect) part for further details ). Plus of such design is small pin count (only one analogue pin), 
  but cons are: requirement of additional resistors to form a ladder, additional computing power required to decode analogue signal, debounce, and prevent it from
  triggering from random interference.  
 <h2>Poor's man clock module/ What generates precise clock signal ?</h2>
    If you open analogue(that is, with physical leads instead of some sorts of electronic display) quartz clock you will probably find circuit (presumably on circuit board) with 2 power inputs and 2 output for stepper motor (that drives clock's leads) such circuit was used here.
    Outputs for stepper motor generate pulses that drive stepper motor pulses are 1 second apart and move stepper motor each second, stepper motor moves second's lead and so on. The thing is if you connect ground to one of those outputs and measure voltage of second output, those pulses are interchangeably positive and negative(this kind of signal pattern is required for driving stepper motor). I could theoretic try to rectify this signal fully but i detected to go with easier option and connect one output to the ground(at the moment this isn't shown on schematic) and detect only positive pulses on the other(which is shown on schematic).
So when negative(relative to ground since other output is grounded) pulse on Clock_Output(see schematic) appears transistor Q2 dosn't conduct. When positive pulse appears transistor Q2 pulls CLOCK_INTERUPTP_PIN to ground and thus triggers interupt INT0 attached to function add_Second(See shemtaic and/or source code for futher details). Between those two signals there is dead time where no signal is outputed by clock module and thus interupt isn't trigered. 
<h2> How clock display time ? </h2>
Circuit uses shift registers to drive 5 digit + 2 dots common anode 7 segment LED display from microwave oven. First (from data flow POV) shift register is "addressing" segments with shall be turned on or off (last pin unused)and second one digit on witch segments shall be turned on or off(last 3 pins unused).
Attiny13a Displays digit by multiplexing.
