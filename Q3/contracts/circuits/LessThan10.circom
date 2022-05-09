pragma circom 2.0.0;

include "../../node_modules/circomlib/circuits/comparators.circom";


template LessThan10() {
    signal input in; //  here is 32-bit integer input 
    signal output out; // output is a boolean

    component lt = LessThan(32);  // this is 32-bit comparator

    // connect inputs
    lt.in[0] <== in; 
    lt.in[1] <== 10;
    
    // connect outputs
    out <== lt.out;

}