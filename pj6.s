// ********************************************************************
// Do not touch the following 2 lists of global symbols:
// ********************************************************************
        .global main, Stop, CodeEnd
        .global DataStart, DataEnd
        .global A, B, GCD
        .global While1, While2




// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// You can add more .globals HERE to export labels to ARM if you wish
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



	.global firstLess, While2Body, Setter




// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//      Put your assembler program between the 'main' and the 'Stop' labels
//
//      DO NOT define any variables here (because the content in the
//	variables will be TREATED (by the computer) as INSTRUCTIONS !!!)
//      If you need extra variables, define them in the "Variable Section"
// 	AFTER the Stop  label
// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
main:




                //  Write you GCD algorithm here 


	movw    r0, #:lower16:A
        movt    r0, #:upper16:A    //if statement check
	ldr     r0, [r0] 

	movw    r9, #:lower16:B
        movt    r9, #:upper16:B
	ldr     r9, [r9] 

	cmp  r0, r9
	blt  firstLess
	beq Setter
	b While1
	


firstLess:

	movw    r4, #:lower16:X
        movt    r4, #:upper16:X

	str r0, [r4]
	ldr r4,[r4] 		//if statement body
	movw    r0, #:lower16:A
        movt    r0, #:upper16:A
	str r9, [r0]
	ldr r0,[r0]

	movw    r9, #:lower16:B
        movt    r9, #:upper16:B
	str r4, [r9]
	ldr r9,[r9]

While1:
	
	cmp r0,r9
	bne While2 //Checks if A is not equal to B
	b Setter


While2:
  //Checks if B<A if it is, then continue to body otherwise 
  //do 3 statements and go back to original check
	cmp r9,r0
	blt  While2Body
	b WhileSwap
					


While2Body:
	sub r0,r0,r9
	b While2


WhileSwap:

	movw    r4, #:lower16:X
        movt    r4, #:upper16:X
	str r0, [r4] //A into r4 which is X
	ldr r4,[r4]
	movw    r0, #:lower16:A
        movt    r0, #:upper16:A 

	str r9, [r0]
	ldr r0,[r0]
	
	movw  	r9, #:lower16:B
        movt    r9, #:upper16:B
	str r4, [r9]
	ldr r9,[r9] 
	b While1

Setter:

	movw  	r10, #:lower16:GCD
        movt    r10, #:upper16:GCD
	str r9,[r10]
	ldr r10,[r10]


// ********************************************************************
// Don't touch the Stop and CodeEnd labels - EGTAPI needs them !!!
// ********************************************************************
Stop:   
	nop

CodeEnd:
	nop



// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// **                          Variable Section                           **
// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	.data
DataStart:


// ===============================================================
//    YOU can define variables here IF you need more variables
// ===============================================================

X:      .4byte  0



// ********************************************************************
// The following variables ate used as input and output of the program 
// (I have defined them for you already)
// 
// ** Don't touch the variables A, B and GCD below this line !!!
// ********************************************************************
A:      .4byte  168
B:      .4byte  651
GCD:    .skip  4

DataEnd:    
	nop

        .end
