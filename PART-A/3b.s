    AREA PROG3B,CODE,READONLY
ENTRY
     LDR R7,=TABLE
	 MOV R0,#3
	 LDRH R1,[R7]
BACKK
     LDRH R2,[R7,#2]!
	 ADD R1,R1,R2
	 SUBS R0,R0,#1
	 BNE BACKK
	 MOV R5,R1
	 MOV R6,#4
	 MOV R8,#0
BACKK1
      SUBS R5,R5,R6
	  ADDPL R8,R8,#1
	  BPL BACKK1
	  ADDMI R5,R5,R6
GO    B GO
TABLE DCW 40,45,40,34
      END