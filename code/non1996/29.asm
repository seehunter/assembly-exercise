DATA SEGMENT
	ARRAY DW 1, 2, 1
DATA ENDS

CODE SEGMENT
	ASSUME CS:CODE, DS:DATA
START:
	MOV AX, DATA
	MOV DS, AX

	MOV BX, 0
	MOV DX, 0
	MOV AX, ARRAY[BX]

FIRST:
	CMP AX, ARRAY[BX + 2]
	JNZ SECOND
	INC DL	

SECOND:
	CMP AX, ARRAY[BX + 4]
	JNZ THIRD
	INC DL
	CMP DL, 2
	JZ COUT

THIRD:	
	MOV AX, ARRAY[BX + 2]
	CMP AX, ARRAY[BX + 4]
	JNZ COUT
	INC DL

COUT:
	MOV AH, 02H
	ADD DL, '0'
	INT 21H
	

	MOV AH, 04CH
	INT 21H
CODE ENDS
    END START