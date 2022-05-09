pragma circom 2.0.0;

// [assignment] Modify the circuit below to perform a multiplication of three signals

template Multiplier2 () {  

   // Declaration of signals.  
   signal input a;  
   signal input b;
   signal output c;
  
   c <== a * b;
}

template Multiplier3 () { 
   
   //Declaration of signals and components.
   
   signal input a;
   signal input b;
   signal input c;
   signal output d;
   component M1 = Multiplier2(); // Multiplier2 is a template
   component M2 = Multiplier2();

   //Connecting the inputs of the first multiplier.
   M1.a <== a;
   M1.b <== b;
   M2.a <== M1.c;
   M2.b <== c;
   d <== M2.c;
}

component main = Multiplier3();