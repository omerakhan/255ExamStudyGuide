//
// THIS CODE IS MY OWN WORK, IT WAS WRITTEN WITHOUT CONSULTING A TUTOR
// OR CODE WRITTEN BY OTHER STUDENTS - your name
//
//
//
	.global main, Stop, CodeEnd
	.global DataStart, DataEnd
	.global Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10
	.global ans_b, ans_s, ans_i, x, y, z

//******************************************************************
// DO NOT make any changes to the next 8 lines below
//******************************************************************
main:

//******************************************************************
// DO NOT make any changes to the line ABOVE
//
// Write the assembler instruction to each question after the 
// CORRESPONDING LABEL:
//                       Q1, Q2, Q3, ..... Q10
//
// I have defined the necessary variable at the v1, v2,.. labels 
// which are located at the end of the file (if you want to see them)
//******************************************************************

//******************************************************************
// Put your assembler instructions AFTER this line
//******************************************************************

//*************************************************************************
// Write the assembler instruction at label Q1 that executes this
// high level programming language statement: 
//
//      ans_b = 44;
//
// Do NOT forget to SKIP some space (or tab) before writing assembler code !!!
//*************************************************************************
Q1:
	movw  r0, #:lower16:ans_b
   	movt  r0, #:upper16:ans_b 
	mov  r1, #44
	strb  r1, [r0]
	
	
	

//*************************************************************************
// Write the assembler instruction at label Q2 that executes this
// high level programming language statement:
//
//      ans_s = -99;
//
// Do NOT forget to SKIP some space (or tab) before writing assembler code !!!
//*************************************************************************
Q2:

	movw  r2, #:lower16:ans_s
   	movt  r2, #:upper16:ans_s
	mov  r3, #-99
	strh  r3, [r2]



//*************************************************************************
// Write the assembler instruction at label Q3 that executes this
// high level programming language statement:
//
//      ans_i = 444;
//
// Do NOT forget to SKIP some space (or tab) before writing assembler code !!!
//*************************************************************************
Q3:

	movw  r4, #:lower16:ans_i
   	movt  r4, #:upper16:ans_i
	movw  r5, #:lower16:444
	movt  r5, #:upper16:444
	str  r5, [r4]




//*************************************************************************
// Write the assembler instruction at label Q4 that executes this
// high level programming language statement:
//
//      ans_b = x;
//
// Do NOT forget to SKIP some space (or tab) before writing assembler code !!!
//*************************************************************************
Q4:

	movw  r6, #:lower16:x
   	movt  r6, #:upper16:x
	ldrsb r7,[r6] 
	strb  r7, [r0]





//*************************************************************************
// Write the assembler instruction at label Q5 that executes this
// high level programming language statement:
//
//      ans_s = x;
//
// Do NOT forget to SKIP some space (or tab) before writing assembler code !!!
//*************************************************************************
Q5:

	strh  r7, [r2]





//*************************************************************************
// Write the assembler instruction at label Q6 that executes this
// high level programming language statement:
//
//      ans_i = x;
//
// Do NOT forget to SKIP some space (or tab) before writing assembler code !!!
//*************************************************************************
Q6:

	str  r7, [r4]






//*************************************************************************
// Write the assembler instruction at label Q7 that executes this
// high level programming language statement:
//
//      ans_b = y;  (can you explain the difference in the stored value ?)
//
// Do NOT forget to SKIP some space (or tab) before writing assembler code !!!
//*************************************************************************
Q7:

	movw  r8, #:lower16:y
   	movt  r8, #:upper16:y
	ldrsh r9,[r8] 
	strb  r9, [r0]

	//The differences in the stored value is that y is a short with the representation
	//of 2057 = 00001000 00001001

	//Meanwhile ans_b is a byte type variable which holds only 8 bits so it takes the eight from the right
	//which results in 00001001 and this is equal to 9






//*************************************************************************
// Write the assembler instruction at label Q8 that executes this
// high level programming language statement:
//
//      ans_b = z;  (can you explain the difference in the stored value ?)
//
// Do NOT forget to SKIP some space (or tab) before writing assembler code !!!
//*************************************************************************
Q8:

	movw  r6, #:lower16:z
   	movt  r6, #:upper16:z
	ldr r7,[r6] 
	strb  r7, [r0]

	//Once again ans_b is a byte while z is an int w/ value 147463 = 00000000 00000010 01000000 00000111
	//ans_b will take the last eight bits which results in 00000111 = 7



//*************************************************************************
// Write the assembler instruction at label Q9 that executes this
// high level programming language statement:
//
//      ans_s = z;  (can you explain the difference in the stored value ?)
//
// Do NOT forget to SKIP some space (or tab) before writing assembler code !!!
//*************************************************************************
Q9:

	strh  r7, [r2]
	//Similar to the others, ans_s is a short with 16 bits
	//z is an int w/ value 147463 = 00000000 00000010 01000000 00000111
	//ans_s will take the last 16 bits which is 01000000 00000111 = 16391







//*************************************************************************
// Write the assembler instruction at label Q10 that executes this
// high level programming language statement:
//
//      ans_i = y;
//
// Do NOT forget to SKIP some space (or tab) before writing assembler code !!!
//*************************************************************************
Q10:


	str r9, [r4]





//*************************************************************************
// DO NOT change anything below this line
//*************************************************************************
Stop:	
CodeEnd:
	nop







	.data
DataStart:

	.align  
ans_b:  .skip 1

	.align  
ans_s:  .skip 2

	.align  
ans_i:  .skip 4


	.align
x:	.byte  -13


	.align
y:	.2byte  2057		// 2^11 + 9

	.align
z:	.4byte  147463		// 2^17 + 2^14 + 7


DataEnd:
	.end

