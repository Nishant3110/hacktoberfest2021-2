		AREA PROGRAM,CODE,READONLY
ENTRY
	LDR R0,VALUE1
	LDR R1,VALUE2
LOOP
	MUL R3,R0,R1
	ADD R1,#0x00000001
	CMP R1,#0x0000000B
	BNE LOOP
	
	AREA PROGRAM,DATA,READONLY
VALUE1 DCD &00000008
VALUE2 DCD &00000001
	END