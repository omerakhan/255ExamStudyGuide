
        .global BubbleSort


BubbleSort:
//*****************************************************
// Write your bubble sort assembler subroutine here
//
//    BubbleSort: input  r0 = address of int array
//                       r1 = # elements in the array
//*****************************************************



        // Write your bubble sort function here.....
	// Make sure you RETURN to the caller !!!

	mov r5,#0 //i

	//Done is r3
	mov   r3, #0
	mov   r4, #1 //k

while:
	cmp r3, #0 
	bne whileEnd
	mov   r3, #1 //Done

whileFor:

	sub r6, r1,r4
	cmp r5,r6
	bge WhileForEnd
	add r2, r5,r5
	add r2, r2, r2
	ldr   r7, [r0, r2] //r7 stores value of A[i]

	
	add r8, r5, #1
	add r8, r8, r8
	add r8, r8, r8

	ldr   r9, [r0, r8] //r9 stores value of A[i+1]

	cmp r7,r9
	ble whileAdder
	
	
	


	str r9, [r0, r2]  //store value in r9 (A[i+1} into A[i] where i is r2
	str r7, [r0,r8]
	mov   r3, #0
	add r5,r5,#1
	b whileFor
	 

WhileForEnd:
	
		add r4, r4, #1
		mov r5,#0 //i
		b while
	
whileAdder:	
	add r5,r5,#1
	b whileFor

whileEnd:
	mov pc, lr




	.data
// *************************************************************************
// If you need local variables, you can define them below this line
// *************************************************************************





        .end
