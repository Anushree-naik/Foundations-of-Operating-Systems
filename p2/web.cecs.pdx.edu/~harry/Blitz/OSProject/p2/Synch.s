! Name of package being compiled: Synch
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_Thread_InitializeScheduler
	.import	_P_Thread_Run
	.import	_P_Thread_PrintReadyList
	.import	_P_Thread_ThreadStartMain
	.import	_P_Thread_ThreadFinish
	.import	_P_Thread_FatalError
	.import	_P_Thread_SetInterruptsTo
	.import	_P_Thread_TimerInterruptHandler
	.import	Switch
	.import	ThreadStartUp
! Externally visible functions in this package
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Thread_Thread
! The following class and its methods are from this package
	.export	_P_Synch_Semaphore
	.export	_Method_P_Synch_Semaphore_1
	.export	_Method_P_Synch_Semaphore_2
	.export	_Method_P_Synch_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Synch_Mutex
	.export	_Method_P_Synch_Mutex_1
	.export	_Method_P_Synch_Mutex_2
	.export	_Method_P_Synch_Mutex_3
	.export	_Method_P_Synch_Mutex_4
! The following class and its methods are from this package
	.export	_P_Synch_Condition
	.export	_Method_P_Synch_Condition_1
	.export	_Method_P_Synch_Condition_2
	.export	_Method_P_Synch_Condition_3
	.export	_Method_P_Synch_Condition_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_Thread_readyList
	.import	_P_Thread_currentThread
	.import	_P_Thread_mainThread
	.import	_P_Thread_idleThread
	.import	_P_Thread_threadsToBeDestroyed
	.import	_P_Thread_currentInterruptStatus
! Global variables in this package
	.data
	.align
! String constants
_StringConst_8:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_7:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_6:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_5:
	.word	52			! length
	.ascii	"Attempt to unlock a Mutex by a thread not holding it"
	.align
_StringConst_4:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_3:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_2:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_1:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Synch.c\0"
_packageName:
	.ascii	"Synch\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Synch_:
	.export	_CheckVersion_P_Synch_
	set	0xf6b6fb40,r4		! myHashVal = -155780288
	cmp	r3,r4
	be	_Label_9
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_9:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_10
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_10
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_10
_Label_10:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Synch_Semaphore:
	.word	_Label_11
	jmp	_Method_P_Synch_Semaphore_1	! 4:	Init
	jmp	_Method_P_Synch_Semaphore_3	! 8:	Down
	jmp	_Method_P_Synch_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_11:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_12
	.word	_sourceFileName
	.word	5		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Synch_Semaphore
	.word	_P_System_Object
	.word	0
_Label_12:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_152:
	push	r0
	sub	r1,1,r1
	bne	_Label_152
	mov	34,r13		! source line 34
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_14		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_14
!	jmp	_Label_13
_Label_13:
! THEN...
	mov	36,r13		! source line 36
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_15 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_15  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	36,r13		! source line 36
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_14:
! ASSIGNMENT STATEMENT...
	mov	38,r13		! source line 38
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_17
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_18
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_19
	.word	12
	.word	4
	.word	_Label_20
	.word	-12
	.word	4
	.word	_Label_21
	.word	-16
	.word	4
	.word	0
_Label_17:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_18:
	.ascii	"Pself\0"
	.align
_Label_19:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_20:
	.byte	'?'
	.ascii	"_temp_16\0"
	.align
_Label_21:
	.byte	'?'
	.ascii	"_temp_15\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Synch_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_153:
	push	r0
	sub	r1,1,r1
	bne	_Label_153
	mov	45,r13		! source line 45
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	49,r13		! source line 49
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	49,r13		! source line 49
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	50,r13		! source line 50
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_23		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_23
!	jmp	_Label_22
_Label_22:
! THEN...
	mov	51,r13		! source line 51
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_24 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_24  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	51,r13		! source line 51
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_23:
! ASSIGNMENT STATEMENT...
	mov	53,r13		! source line 53
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	54,r13		! source line 54
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_26		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_26
!	jmp	_Label_25
_Label_25:
! THEN...
	mov	55,r13		! source line 55
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	55,r13		! source line 55
	mov	"\0\0AS",r10
	mov	55,r13		! source line 55
	mov	"\0\0SE",r10
!   _temp_27 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	56,r13		! source line 56
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_28 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_28 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	57,r13		! source line 57
	mov	"\0\0SE",r10
!   _temp_29 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_26:
! ASSIGNMENT STATEMENT...
	mov	59,r13		! source line 59
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	59,r13		! source line 59
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	59,r13		! source line 59
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_30
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_31
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_32
	.word	-12
	.word	4
	.word	_Label_33
	.word	-16
	.word	4
	.word	_Label_34
	.word	-20
	.word	4
	.word	_Label_35
	.word	-24
	.word	4
	.word	_Label_36
	.word	-28
	.word	4
	.word	_Label_37
	.word	-32
	.word	4
	.word	0
_Label_30:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_31:
	.ascii	"Pself\0"
	.align
_Label_32:
	.byte	'?'
	.ascii	"_temp_29\0"
	.align
_Label_33:
	.byte	'?'
	.ascii	"_temp_28\0"
	.align
_Label_34:
	.byte	'?'
	.ascii	"_temp_27\0"
	.align
_Label_35:
	.byte	'?'
	.ascii	"_temp_24\0"
	.align
_Label_36:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_37:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Synch_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_154:
	push	r0
	sub	r1,1,r1
	bne	_Label_154
	mov	65,r13		! source line 65
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	68,r13		! source line 68
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_39		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_39
!	jmp	_Label_38
_Label_38:
! THEN...
	mov	70,r13		! source line 70
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_40 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_40  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	70,r13		! source line 70
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_39:
! ASSIGNMENT STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_42		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_42
!	jmp	_Label_41
_Label_41:
! THEN...
	mov	74,r13		! source line 74
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0SE",r10
!   _temp_43 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_42:
! ASSIGNMENT STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	77,r13		! source line 77
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_44
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_45
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_46
	.word	-12
	.word	4
	.word	_Label_47
	.word	-16
	.word	4
	.word	_Label_48
	.word	-20
	.word	4
	.word	0
_Label_44:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_45:
	.ascii	"Pself\0"
	.align
_Label_46:
	.byte	'?'
	.ascii	"_temp_43\0"
	.align
_Label_47:
	.byte	'?'
	.ascii	"_temp_40\0"
	.align
_Label_48:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Synch_Mutex:
	.word	_Label_49
	jmp	_Method_P_Synch_Mutex_1	! 4:	Init
	jmp	_Method_P_Synch_Mutex_2	! 8:	Lock
	jmp	_Method_P_Synch_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Synch_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_49:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_50
	.word	_sourceFileName
	.word	16		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Synch_Mutex
	.word	_P_System_Object
	.word	0
_Label_50:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_155:
	push	r0
	sub	r1,1,r1
	bne	_Label_155
	mov	101,r13		! source line 101
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	102,r13		! source line 102
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	102,r13		! source line 102
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_1:
	.word	_sourceFileName
	.word	_Label_52
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_53
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_54
	.word	-12
	.word	4
	.word	0
_Label_52:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_53:
	.ascii	"Pself\0"
	.align
_Label_54:
	.byte	'?'
	.ascii	"_temp_51\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Synch_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_156:
	push	r0
	sub	r1,1,r1
	bne	_Label_156
	mov	108,r13		! source line 108
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0IF",r10
!   if isHeldBy != _P_Thread_currentThread then goto _Label_56		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_56
!	jmp	_Label_55
_Label_55:
! THEN...
	mov	112,r13		! source line 112
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_57 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_57  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_56:
! ASSIGNMENT STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	114,r13		! source line 114
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0IF",r10
!   if isHeldBy == 0 then goto _Label_61		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_61
!   _temp_60 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_62
_Label_61:
!   _temp_60 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_62:
!   if _temp_60 then goto _Label_59 else goto _Label_58
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_58
	jmp	_Label_59
_Label_58:
! THEN...
	mov	116,r13		! source line 116
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0AS",r10
!   isHeldBy = _P_Thread_currentThread		(4 bytes)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+16]
	jmp	_Label_63
_Label_59:
! ELSE...
	mov	118,r13		! source line 118
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	118,r13		! source line 118
	mov	"\0\0SE",r10
!   _temp_64 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	119,r13		! source line 119
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_63:
! ASSIGNMENT STATEMENT...
	mov	121,r13		! source line 121
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	121,r13		! source line 121
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	121,r13		! source line 121
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_2:
	.word	_sourceFileName
	.word	_Label_65
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_66
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_67
	.word	-16
	.word	4
	.word	_Label_68
	.word	-9
	.word	1
	.word	_Label_69
	.word	-20
	.word	4
	.word	_Label_70
	.word	-24
	.word	4
	.word	0
_Label_65:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_66:
	.ascii	"Pself\0"
	.align
_Label_67:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_68:
	.byte	'C'
	.ascii	"_temp_60\0"
	.align
_Label_69:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_70:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Synch_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_157:
	push	r0
	sub	r1,1,r1
	bne	_Label_157
	mov	127,r13		! source line 127
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0IF",r10
!   if isHeldBy == _P_Thread_currentThread then goto _Label_72		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_72
!	jmp	_Label_71
_Label_71:
! THEN...
	mov	132,r13		! source line 132
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_73 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_73  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	132,r13		! source line 132
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_72:
! ASSIGNMENT STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	134,r13		! source line 134
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0AS",r10
	mov	135,r13		! source line 135
	mov	"\0\0SE",r10
!   _temp_74 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_76		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_76
!	jmp	_Label_75
_Label_75:
! THEN...
	mov	137,r13		! source line 137
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	137,r13		! source line 137
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_77 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_77 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0SE",r10
!   _temp_78 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	139,r13		! source line 139
	mov	"\0\0AS",r10
!   isHeldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+16]
	jmp	_Label_79
_Label_76:
! ELSE...
	mov	141,r13		! source line 141
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	141,r13		! source line 141
	mov	"\0\0AS",r10
!   isHeldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! END IF...
_Label_79:
! ASSIGNMENT STATEMENT...
	mov	143,r13		! source line 143
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	143,r13		! source line 143
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	143,r13		! source line 143
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_3:
	.word	_sourceFileName
	.word	_Label_80
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_81
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_82
	.word	-12
	.word	4
	.word	_Label_83
	.word	-16
	.word	4
	.word	_Label_84
	.word	-20
	.word	4
	.word	_Label_85
	.word	-24
	.word	4
	.word	_Label_86
	.word	-28
	.word	4
	.word	_Label_87
	.word	-32
	.word	4
	.word	0
_Label_80:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_81:
	.ascii	"Pself\0"
	.align
_Label_82:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_86:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_87:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Synch_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_4,r1
	push	r1
	mov	148,r13		! source line 148
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0IF",r10
!   if isHeldBy != _P_Thread_currentThread then goto _Label_89		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_89
!	jmp	_Label_88
_Label_88:
! THEN...
	mov	150,r13		! source line 150
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	150,r13		! source line 150
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_90
_Label_89:
! ELSE...
	mov	152,r13		! source line 152
	mov	"\0\0EL",r10
! RETURN STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_90:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_4:
	.word	_sourceFileName
	.word	_Label_91
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_92
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_91:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_92:
	.ascii	"Pself\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Synch_Condition:
	.word	_Label_93
	jmp	_Method_P_Synch_Condition_1	! 4:	Init
	jmp	_Method_P_Synch_Condition_2	! 8:	Wait
	jmp	_Method_P_Synch_Condition_3	! 12:	Signal
	jmp	_Method_P_Synch_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_93:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_94
	.word	_sourceFileName
	.word	28		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Synch_Condition
	.word	_P_System_Object
	.word	0
_Label_94:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_1,r1
	push	r1
	mov	1,r1
_Label_158:
	push	r0
	sub	r1,1,r1
	bne	_Label_158
	mov	194,r13		! source line 194
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_1:
	.word	_sourceFileName
	.word	_Label_96
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_97
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_98
	.word	-12
	.word	4
	.word	0
_Label_96:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_97:
	.ascii	"Pself\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_95\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Synch_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_2,r1
	push	r1
	mov	6,r1
_Label_159:
	push	r0
	sub	r1,1,r1
	bne	_Label_159
	mov	201,r13		! source line 201
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	204,r13		! source line 204
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	204,r13		! source line 204
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	205,r13		! source line 205
	mov	"\0\0IF",r10
	mov	205,r13		! source line 205
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_101  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_101 then goto _Label_100 else goto _Label_99
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_99
	jmp	_Label_100
_Label_99:
! THEN...
	mov	206,r13		! source line 206
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_102 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_102  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	206,r13		! source line 206
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_100:
! SEND STATEMENT...
	mov	209,r13		! source line 209
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	210,r13		! source line 210
	mov	"\0\0SE",r10
!   _temp_103 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	211,r13		! source line 211
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	212,r13		! source line 212
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	213,r13		! source line 213
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_2:
	.word	_sourceFileName
	.word	_Label_104
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_105
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_106
	.word	12
	.word	4
	.word	_Label_107
	.word	-16
	.word	4
	.word	_Label_108
	.word	-20
	.word	4
	.word	_Label_109
	.word	-9
	.word	1
	.word	_Label_110
	.word	-24
	.word	4
	.word	0
_Label_104:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_105:
	.ascii	"Pself\0"
	.align
_Label_106:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_107:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_108:
	.byte	'?'
	.ascii	"_temp_102\0"
	.align
_Label_109:
	.byte	'C'
	.ascii	"_temp_101\0"
	.align
_Label_110:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Synch_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_3,r1
	push	r1
	mov	9,r1
_Label_160:
	push	r0
	sub	r1,1,r1
	bne	_Label_160
	mov	219,r13		! source line 219
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	223,r13		! source line 223
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	223,r13		! source line 223
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0IF",r10
	mov	224,r13		! source line 224
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_113  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_113 then goto _Label_112 else goto _Label_111
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_111
	jmp	_Label_112
_Label_111:
! THEN...
	mov	225,r13		! source line 225
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_114 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_114  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	225,r13		! source line 225
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_112:
! ASSIGNMENT STATEMENT...
	mov	228,r13		! source line 228
	mov	"\0\0AS",r10
	mov	228,r13		! source line 228
	mov	"\0\0SE",r10
!   _temp_115 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	229,r13		! source line 229
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_117		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_117
!	jmp	_Label_116
_Label_116:
! THEN...
	mov	230,r13		! source line 230
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_118 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_118 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0SE",r10
!   _temp_119 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_117:
! ASSIGNMENT STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	233,r13		! source line 233
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_3:
	.word	_sourceFileName
	.word	_Label_120
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_121
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_122
	.word	12
	.word	4
	.word	_Label_123
	.word	-16
	.word	4
	.word	_Label_124
	.word	-20
	.word	4
	.word	_Label_125
	.word	-24
	.word	4
	.word	_Label_126
	.word	-28
	.word	4
	.word	_Label_127
	.word	-9
	.word	1
	.word	_Label_128
	.word	-32
	.word	4
	.word	_Label_129
	.word	-36
	.word	4
	.word	0
_Label_120:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_121:
	.ascii	"Pself\0"
	.align
_Label_122:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_123:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_124:
	.byte	'?'
	.ascii	"_temp_118\0"
	.align
_Label_125:
	.byte	'?'
	.ascii	"_temp_115\0"
	.align
_Label_126:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_127:
	.byte	'C'
	.ascii	"_temp_113\0"
	.align
_Label_128:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_129:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Synch_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_4,r1
	push	r1
	mov	9,r1
_Label_161:
	push	r0
	sub	r1,1,r1
	bne	_Label_161
	mov	239,r13		! source line 239
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0IF",r10
	mov	243,r13		! source line 243
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_132  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_132 then goto _Label_131 else goto _Label_130
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_130
	jmp	_Label_131
_Label_130:
! THEN...
	mov	244,r13		! source line 244
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_133 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_133  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_131:
! ASSIGNMENT STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	246,r13		! source line 246
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0WH",r10
_Label_134:
!	jmp	_Label_135
_Label_135:
	mov	247,r13		! source line 247
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
	mov	248,r13		! source line 248
	mov	"\0\0SE",r10
!   _temp_137 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_138
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_138
	jmp	_Label_139
_Label_138:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0BR",r10
	jmp	_Label_136
! END IF...
_Label_139:
! ASSIGNMENT STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_140 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_140 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0SE",r10
!   _temp_141 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_134
_Label_136:
! ASSIGNMENT STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	255,r13		! source line 255
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_4:
	.word	_sourceFileName
	.word	_Label_142
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_143
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_144
	.word	12
	.word	4
	.word	_Label_145
	.word	-16
	.word	4
	.word	_Label_146
	.word	-20
	.word	4
	.word	_Label_147
	.word	-24
	.word	4
	.word	_Label_148
	.word	-28
	.word	4
	.word	_Label_149
	.word	-9
	.word	1
	.word	_Label_150
	.word	-32
	.word	4
	.word	_Label_151
	.word	-36
	.word	4
	.word	0
_Label_142:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_143:
	.ascii	"Pself\0"
	.align
_Label_144:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_149:
	.byte	'C'
	.ascii	"_temp_132\0"
	.align
_Label_150:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_151:
	.byte	'P'
	.ascii	"t\0"
	.align
