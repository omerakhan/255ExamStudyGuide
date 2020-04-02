// THIS CODE IS MY OWN WORK, IT WAS WRITTEN WITHOUT CONSULTING A TUTOR   
// OR CODE WRITTEN BY OTHER STUDENTS - your name
// 
// 
//
	.global main, Stop, CodeEnd
	.global DataStart, DataEnd
	.global Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10
	.global A, B, C
	.global i, j, k
	.global head
	.global ans_b, ans_s, ans_i

main:
//******************************************************************
// Put your assembler instructions here
// Write the answer to each question after the corresponding label.
// DO NOT REMOVE ANY LABEL IN THIS ASSIGNMENT (all labels are now NECESSARY)
// *** Failure to do so will result in point dedections !!! ***
//******************************************************************


// Write assembler instruction here to execute:
//You're fine
//         ans_b = A[3];
Q1:
	//r0 = ans_b
	//r1 = A
	//r4 = ans_i
	//r5 = B
	//r6 = C
	//r8 = ans_s

	//free are 2,3,7,9
	

	movw  r0, #:lower16:ans_b
   	movt  r0, #:upper16:ans_b

	movw  r1, #:lower16:A
  	movt  r1, #:upper16:A
 
	ldrsb r3, [r1, #3]
	strb  r3, [r0]
	






// Write assembler instruction here to execute:
//         ans_i = B[8];
Q2:

	movw  r4, #:lower16:ans_i
 	movt  r4, #:upper16:ans_i

	movw  r5, #:lower16:B
 	movt  r5, #:upper16:B

	ldrsh r3, [r5, #16]  
	strh  r3, [r4]       






// Write assembler instruction here to execute:
//         ans_s = C[k];
Q3:

	movw  r6, #:lower16:C
 	movt  r6, #:upper16:C

	movw  r7, #:lower16:k
 	movt  r7, #:upper16:k

	ldr   r7, [r7]
	add     r7, r7, r7
	add     r7, r7, r7

	movw  r8, #:lower16:ans_s
 	movt  r8, #:upper16:ans_s

	ldr   r3, [r6, r7] 
	strh  r3, [r8]       
	 
// Write assembler instruction here to execute:
//         ans_s = A[i + j];      
Q4:
	//i is byte
	//j is short
	movw  r7, #:lower16:i
 	movt  r7, #:upper16:i
	ldrsb r7, [r7]

	movw  r3, #:lower16:j
 	movt  r3, #:upper16:j
	ldrsh r3, [r3]

	add r3,r7,r3
	
 	movw  r9, #:lower16:ans_s
   	movt  r9, #:upper16:ans_s
	
	movw  r1, #:lower16:A
  	movt  r1, #:upper16:A
 
	ldrsb r5, [r1, r3]
	strh  r5, [r9]
	

// Write assembler instruction here to execute:
//         ans_s = C[j + k];      
Q5:

	movw  r7, #:lower16:j
 	movt  r7, #:upper16:j
	ldrsh r7, [r7]

	movw  r3, #:lower16:k
 	movt  r3, #:upper16:k
	ldr r3, [r3]


	add r3,r7,r3
	add     r3, r3, r3
	add     r3, r3, r3

	movw  r9, #:lower16:ans_s
   	movt  r9, #:upper16:ans_s

	movw  r1, #:lower16:C
  	movt  r1, #:upper16:C

	ldr r5, [r1, r3]
	strh  r5, [r9]


// Write assembler instruction here to execute:
//         ans_i = A[i] + B[k];  
Q6:

	movw  r7, #:lower16:i
 	movt  r7, #:upper16:i
	ldrsb r7, [r7]

	movw  r3, #:lower16:k
 	movt  r3, #:upper16:k
	ldr r3, [r3]
	add r3, r3, r3

	movw  r2, #:lower16:ans_i
   	movt  r2, #:upper16:ans_i

	movw  r0, #:lower16:A
  	movt  r0, #:upper16:A

	movw  r1, #:lower16:B
  	movt  r1, #:upper16:B

	ldrsb r5, [r0, r7]
	ldrsh r6, [r1, r3]
	add r6,r5,r6
	strh  r6, [r2]

	








// Write assembler instruction here to execute:
//         ans_i = B[A[k] - 50];      
Q7:

	movw  r3, #:lower16:k
 	movt  r3, #:upper16:k
	ldr r3, [r3]

	movw  r0, #:lower16:A
  	movt  r0, #:upper16:A

	movw  r1, #:lower16:B
  	movt  r1, #:upper16:B

	ldrsb r5, [r0, r3]

	movw  r9, #:lower16:ans_i
   	movt  r9, #:upper16:ans_i

	mov  r2, #50
	sub r5,r5,r2
	
	add r5,r5,r5

	ldrsh r6, [r1, r5]
	str  r6, [r9]








// Write assembler instruction here to execute:
//         ans_s = B[ 14 ]
Q8:
	//14 is out of bounds for array B, thus it moves to the next area in memory
	//This happens to be array C which has the value 3333
	//It moves to C because they're stored next to each other in memory

	movw  r9, #:lower16:ans_s
   	movt  r9, #:upper16:ans_s

	movw  r5, #:lower16:B
 	movt  r5, #:upper16:B

	ldrsh r3, [r5, #28]  
	strh  r3, [r9]       






// Write assembler instruction here to execute:
//	  ans_i = head.value3;
Q9:

	movw  r0, #:lower16:head
   	movt  r0, #:upper16:head
	ldr r0, [r0]

	ldr r1, [r0,#0]


	ldrsh r2,[r0,#4]

	ldrsh r3, [r0,#6]
	


	movw  r9, #:lower16:ans_i
   	movt  r9, #:upper16:ans_i
	strh  r3, [r9] 

	





// Write assembler instruction here to execute:
//	  ans_s = head.next.next.value1;
Q10:


	movw  r0, #:lower16:head
   	movt  r0, #:upper16:head
	ldr r0, [r0]

	ldr r1, [r0,#0]


	ldrsh r2,[r0,#4]

	ldrsh r3, [r0,#6]

	ldr r0, [r0,#8]
	ldr     r4, [r0]
	ldrsh   r5, [r0,#4]
	ldrsh   r6, [r0,#6]
	ldr     r0, [r0,#8]
	ldr     r7, [r0]

	movw  r9, #:lower16:ans_s
   	movt  r9, #:upper16:ans_s
	str  r7, [r9]


//************************************************
// Don't change any thing below this line  !!!!!
//************************************************

Stop:	nop

CodeEnd:
	nop

//***********************************************************************
// Data segment
//***********************************************************************

	.data
DataStart:
//***********************************************************************
// I have defined the ans_b, ans_s and ans_i variables below this line
//
// Don't touch these variables !!!!
// Also: you do NOT need to define any more variables !!!
//***********************************************************************
	.align
ans_b:  .skip  1		// Uninit byte variable

	.align
ans_s:  .skip  2		// Uninit short variable

	.align
ans_i:  .skip  4		// Uninit short variable

	.align
i:      .byte  2		// byte i = 2;

	.align
j:      .2byte 3		// short j = 3;

	.align
k:      .4byte  4		// int k = 4;

// arrays  A (byte), B(short) and C(int)
	.align
A:      .byte     11, -22, 33, -44, 55, -66, 77, -88, 99, -123

	.align
B:      .2byte    111, -222, 333, -444, 555, -666, 777, -888, 999, -5432

	.align
C:      .4byte  1111, -2222, 3333, -4444, 5555, -6666, 7777, -8888, 9999, -9876

// Linked list
//
// head ->[1234,89,-11]->[2345,78,66]->[-3456,67,44]->[4567,56,77]->[5678,45,44]

	.align 4
head:   .4byte  list1

list3:  .4byte  -3456
        .2byte 67
        .2byte 44
	.4byte  list4

list2:  .4byte  2345
        .2byte 78
        .2byte 66
	.4byte  list3

list4:  .4byte  4567
        .2byte 56
        .2byte 77
	.4byte  list5

list1:  .4byte  1234
        .2byte 89
        .2byte -11
	.4byte  list2

list5:  .4byte  5678
        .2byte 45
        .2byte 44
	.4byte  0

DataEnd:
	.end

