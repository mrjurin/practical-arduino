/**
 * ScopeDigital
 *
 *
 * Copyright 2009 Jonathan Oxer <jon@oxer.com.au>
 * Copyright 2009 Hugh Blemings <hugh@blemings.org>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version. http://www.gnu.org/licenses/
 *
 * www.practicalarduino.com/projects/scope-logic-analyzer
 */

/**
 * Prepares the relevant digital inputs and opens serial comms with the
 * host
 */
void setup()
{
  pinMode(14, INPUT);
  pinMode(15, INPUT);
  pinMode(16, INPUT);
  pinMode(17, INPUT);
  pinMode(18, INPUT);
  pinMode(19, INPUT);
  pinMode(6, INPUT);
  pinMode(7, INPUT);

  Serial.begin(115200);
}

/**
 * Read the inputs and send values to the host. Reads are performed
 * by directly accessing the PINC and PIND (Port INput) registers and
 * applying a bitmask to select the correct bit.
 */
void loop()
{
  Serial.print( PINC & B00000001 );
  Serial.print(" ");
  Serial.print( (PINC & B00000010) >> 1 );
  Serial.print(" ");
  Serial.print( (PINC & B00000100) >> 2 );
  Serial.print(" ");
  Serial.print( (PINC & B00001000) >> 3 );
  Serial.print(" ");
  Serial.print( (PINC & B00010000) >> 4 );
  Serial.print(" ");
  Serial.print( (PINC & B00100000) >> 5 );
  Serial.print(" ");
  Serial.print( (PIND & B01000000) >> 6 );
  Serial.print(" ");
  Serial.print( (PIND & B10000000) >> 7 );
 
  Serial.println();
}
