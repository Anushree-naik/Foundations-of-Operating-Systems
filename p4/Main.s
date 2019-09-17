! Name of package being compiled: Main
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
	.import	_P_System_PrintMemory
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
	.import	_P_BitMap_TestBitMap
	.import	_P_Kernel_TimerInterruptHandler
	.import	_P_Kernel_DiskInterruptHandler
	.import	_P_Kernel_SerialInterruptHandler
	.import	_P_Kernel_IllegalInstructionHandler
	.import	_P_Kernel_ArithmeticExceptionHandler
	.import	_P_Kernel_AddressExceptionHandler
	.import	_P_Kernel_PageInvalidExceptionHandler
	.import	_P_Kernel_PageReadonlyExceptionHandler
	.import	_P_Kernel_PrivilegedInstructionHandler
	.import	_P_Kernel_AlignmentExceptionHandler
	.import	_P_Kernel_SyscallTrapHandler
	.import	_P_Kernel_Handle_Sys_Fork
	.import	_P_Kernel_Handle_Sys_Yield
	.import	_P_Kernel_Handle_Sys_Exec
	.import	_P_Kernel_Handle_Sys_Join
	.import	_P_Kernel_Handle_Sys_Exit
	.import	_P_Kernel_Handle_Sys_Create
	.import	_P_Kernel_Handle_Sys_Open
	.import	_P_Kernel_Handle_Sys_Read
	.import	_P_Kernel_Handle_Sys_Write
	.import	_P_Kernel_Handle_Sys_Seek
	.import	_P_Kernel_Handle_Sys_Close
	.import	_P_Kernel_Handle_Sys_Shutdown
	.import	_P_Kernel_InitializeScheduler
	.import	_P_Kernel_Run
	.import	_P_Kernel_PrintReadyList
	.import	_P_Kernel_ThreadStartMain
	.import	_P_Kernel_ThreadFinish
	.import	_P_Kernel_FatalError_ThreadVersion
	.import	_P_Kernel_SetInterruptsTo
	.import	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Kernel_Semaphore
! The following class and its methods are from other packages
	.import	_P_Kernel_Mutex
! The following class and its methods are from other packages
	.import	_P_Kernel_MutexHoare
! The following class and its methods are from other packages
	.import	_P_Kernel_Condition
! The following class and its methods are from other packages
	.import	_P_Kernel_ConditionHoare
! The following class and its methods are from other packages
	.import	_P_Kernel_Thread
! The following class and its methods are from other packages
	.import	_P_Kernel_ThreadManager
! The following class and its methods are from other packages
	.import	_P_Kernel_ThreadManagerHoare
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessControlBlock
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessManager
! The following class and its methods are from other packages
	.import	_P_Kernel_FrameManager
! The following class and its methods are from other packages
	.import	_P_Kernel_AddrSpace
! The following class and its methods are from other packages
	.import	_P_Kernel_DiskDriver
! The following class and its methods are from other packages
	.import	_P_Kernel_FileManager
! The following class and its methods are from other packages
	.import	_P_Kernel_FileControlBlock
! The following class and its methods are from other packages
	.import	_P_Kernel_OpenFile
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
	.import	_P_Kernel_readyList
	.import	_P_Kernel_currentThread
	.import	_P_Kernel_mainThread
	.import	_P_Kernel_idleThread
	.import	_P_Kernel_threadsToBeDestroyed
	.import	_P_Kernel_currentInterruptStatus
	.import	_P_Kernel_processManager
	.import	_P_Kernel_threadManager
	.import	_P_Kernel_threadManagerHoare
	.import	_P_Kernel_frameManager
	.import	_P_Kernel_diskDriver
	.import	_P_Kernel_fileManager
! Global variables in this package
	.data
_Global_uniqueNumberLock:
! Static object
	.word	_P_Kernel_Mutex
	.word	0
	.word	0
	.word	0
	.word	0
_Global_nextUnique:
	.word	0x00000001		! decimal value = 1
_Global_allDone:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_freeze:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_allDone2:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_histogram:
! Static array
	.word	100		! number of elements
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.align
	.align
! String constants
_StringConst_27:
	.word	49			! length
	.ascii	"Data corruption, indicating that frame was shared"
	.align
_StringConst_26:
	.word	35			! length
	.ascii	"Bad frame number in some addr space"
	.align
_StringConst_25:
	.word	32			! length
	.ascii	"addrSpace.numberOfPages is wrong"
	.align
_StringConst_24:
	.word	43			! length
	.ascii	"Problems with bits in some page table entry"
	.align
_StringConst_23:
	.word	35			! length
	.ascii	"Bad frame number in some addr space"
	.align
_StringConst_22:
	.word	32			! length
	.ascii	"addrSpace.numberOfPages is wrong"
	.align
_StringConst_21:
	.word	57			! length
	.ascii	"\n\n***** FRAME-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_20:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_19:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_18:
	.word	66			! length
	.ascii	"\n\nHere is a histogram showing how many times each frame was used:\n"
	.align
_StringConst_17:
	.word	16			! length
	.ascii	"TestFrameManager"
	.align
_StringConst_16:
	.word	36			! length
	.ascii	"\n\n*****  FRAME-MANAGER TEST  *****\n\n"
	.align
_StringConst_15:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_14:
	.word	59			! length
	.ascii	"\n\n***** PROCESS-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_13:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_12:
	.word	18			! length
	.ascii	"TestProcessManager"
	.align
_StringConst_11:
	.word	38			! length
	.ascii	"\n\n*****  PROCESS-MANAGER TEST  *****\n\n"
	.align
_StringConst_10:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_9:
	.word	64			! length
	.ascii	"\n\n***** THREAD-MANAGER-HOARE TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_8:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_7:
	.word	17			! length
	.ascii	"TestThreadManager"
	.align
_StringConst_6:
	.word	43			! length
	.ascii	"\n\n*****  THREAD-MANAGER-HOARE TEST  *****\n\n"
	.align
_StringConst_5:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_4:
	.word	58			! length
	.ascii	"\n\n***** THREAD-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_3:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_2:
	.word	17			! length
	.ascii	"TestThreadManager"
	.align
_StringConst_1:
	.word	37			! length
	.ascii	"\n\n*****  THREAD-MANAGER TEST  *****\n\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0xeb2db4a8,r3		! .  hashVal = -349326168
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_39		! .
	ret				! .
_Label_39:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Main.c\0"
_packageName:
	.ascii	"Main\0"
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
_CheckVersion_P_Main_:
	.export	_CheckVersion_P_Main_
	set	0xeb2db4a8,r4		! myHashVal = -349326168
	cmp	r3,r4
	be	_Label_40
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
_Label_40:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_41
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_41
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_41
! Make sure _P_Kernel_ has hash value 0x3aba62bd (decimal 985293501)
	set	_packageName,r2
	set	0x3aba62bd,r3
	call	_CheckVersion_P_Kernel_
	.import	_CheckVersion_P_Kernel_
	cmp	r1,0
	bne	_Label_41
_Label_41:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION main  ===============
! 
main:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor_main,r1
	push	r1
	mov	10,r1
_Label_588:
	push	r0
	sub	r1,1,r1
	bne	_Label_588
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0SE",r10
!   _temp_42 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-44]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	20,r13		! source line 20
	mov	"\0\0CA",r10
	call	_P_Kernel_InitializeScheduler
! ASSIGNMENT STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_processManager = zeros  (sizeInBytes=1316)
	set	_P_Kernel_processManager,r4
	mov	329,r3
_Label_589:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_589
!   _P_Kernel_processManager = _P_Kernel_ProcessManager
	set	_P_Kernel_ProcessManager,r1
	set	_P_Kernel_processManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_44 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadManager = zeros  (sizeInBytes=41696)
	set	_P_Kernel_threadManager,r4
	mov	10424,r3
_Label_590:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_590
!   _P_Kernel_threadManager = _P_Kernel_ThreadManager
	set	_P_Kernel_ThreadManager,r1
	set	_P_Kernel_threadManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0SE",r10
!   _temp_46 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadManagerHoare = zeros  (sizeInBytes=41696)
	set	_P_Kernel_threadManagerHoare,r4
	mov	10424,r3
_Label_591:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_591
!   _P_Kernel_threadManagerHoare = _P_Kernel_ThreadManagerHoare
	set	_P_Kernel_ThreadManagerHoare,r1
	set	_P_Kernel_threadManagerHoare,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0SE",r10
!   _temp_48 = &_P_Kernel_threadManagerHoare
	set	_P_Kernel_threadManagerHoare,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_frameManager = zeros  (sizeInBytes=88)
	set	_P_Kernel_frameManager,r4
	mov	22,r3
_Label_592:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_592
!   _P_Kernel_frameManager = _P_Kernel_FrameManager
	set	_P_Kernel_FrameManager,r1
	set	_P_Kernel_frameManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0SE",r10
!   _temp_50 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	121,r13		! source line 121
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	121,r13		! source line 121
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_51
	.word	0		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_52
	.word	-12
	.word	4
	.word	_Label_53
	.word	-16
	.word	4
	.word	_Label_54
	.word	-20
	.word	4
	.word	_Label_55
	.word	-24
	.word	4
	.word	_Label_56
	.word	-28
	.word	4
	.word	_Label_57
	.word	-32
	.word	4
	.word	_Label_58
	.word	-36
	.word	4
	.word	_Label_59
	.word	-40
	.word	4
	.word	_Label_60
	.word	-44
	.word	4
	.word	0
_Label_51:
	.ascii	"main\0"
	.align
_Label_52:
	.byte	'?'
	.ascii	"_temp_50\0"
	.align
_Label_53:
	.byte	'?'
	.ascii	"_temp_49\0"
	.align
_Label_54:
	.byte	'?'
	.ascii	"_temp_48\0"
	.align
_Label_55:
	.byte	'?'
	.ascii	"_temp_47\0"
	.align
_Label_56:
	.byte	'?'
	.ascii	"_temp_46\0"
	.align
_Label_57:
	.byte	'?'
	.ascii	"_temp_45\0"
	.align
_Label_58:
	.byte	'?'
	.ascii	"_temp_44\0"
	.align
_Label_59:
	.byte	'?'
	.ascii	"_temp_43\0"
	.align
_Label_60:
	.byte	'?'
	.ascii	"_temp_42\0"
	.align
! 
! ===============  FUNCTION GetUniqueNumber  ===============
! 
_function_38_GetUniqueNumber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_38_GetUniqueNumber,r1
	push	r1
	mov	4,r1
_Label_593:
	push	r0
	sub	r1,1,r1
	bne	_Label_593
	mov	137,r13		! source line 137
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	139,r13		! source line 139
	mov	"\0\0SE",r10
!   _temp_61 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-16]
!   Send message Lock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	140,r13		! source line 140
	mov	"\0\0AS",r10
!   i = _Global_nextUnique		(4 bytes)
	set	_Global_nextUnique,r1
	load	[r1],r1
	store	r1,[r14+-20]
! ASSIGNMENT STATEMENT...
	mov	141,r13		! source line 141
	mov	"\0\0AS",r10
!   _Global_nextUnique = _Global_nextUnique + count		(int)
	set	_Global_nextUnique,r1
	load	[r1],r1
	load	[r14+8],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_nextUnique,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	142,r13		! source line 142
	mov	"\0\0SE",r10
!   _temp_62 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	143,r13		! source line 143
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_38_GetUniqueNumber:
	.word	_sourceFileName
	.word	_Label_63
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_64
	.word	8
	.word	4
	.word	_Label_65
	.word	-12
	.word	4
	.word	_Label_66
	.word	-16
	.word	4
	.word	_Label_67
	.word	-20
	.word	4
	.word	0
_Label_63:
	.ascii	"GetUniqueNumber\0"
	.align
_Label_64:
	.byte	'I'
	.ascii	"count\0"
	.align
_Label_65:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_66:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_67:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION RunThreadManagerTests  ===============
! 
_function_37_RunThreadManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_37_RunThreadManagerTests,r1
	push	r1
	mov	21,r1
_Label_594:
	push	r0
	sub	r1,1,r1
	bne	_Label_594
	mov	174,r13		! source line 174
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	178,r13		! source line 178
	mov	"\0\0SE",r10
!   _temp_68 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	179,r13		! source line 179
	mov	"\0\0SE",r10
!   _temp_69 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	180,r13		! source line 180
	mov	"\0\0SE",r10
!   _temp_70 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	181,r13		! source line 181
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_71 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_71  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	183,r13		! source line 183
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	185,r13		! source line 185
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_76 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_77 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_76  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_72:
!   Perform the FOR-LOOP termination test
!   if i > _temp_77 then goto _Label_75		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_75
_Label_73:
	mov	185,r13		! source line 185
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	186,r13		! source line 186
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_78)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_595:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_595
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	187,r13		! source line 187
	mov	"\0\0SE",r10
!   _temp_80 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_80  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	188,r13		! source line 188
	mov	"\0\0SE",r10
!   _temp_81 = _function_36_TestThreadManager
	set	_function_36_TestThreadManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_81  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_74:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_72
! END FOR
_Label_75:
! FOR STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_86 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_87 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_86  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_82:
!   Perform the FOR-LOOP termination test
!   if i > _temp_87 then goto _Label_85		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_85
_Label_83:
	mov	193,r13		! source line 193
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0SE",r10
!   _temp_88 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_84:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_82
! END FOR
_Label_85:
! IF STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	197,r13		! source line 197
	mov	"\0\0CA",r10
	call	_function_38_GetUniqueNumber
!   Retrieve Result: targetName=_temp_91  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_91 == 401 then goto _Label_90		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_90
!	jmp	_Label_89
_Label_89:
! THEN...
	mov	198,r13		! source line 198
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_92 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_92  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	198,r13		! source line 198
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_90:
! CALL STATEMENT...
!   _temp_93 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_93  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	200,r13		! source line 200
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	200,r13		! source line 200
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_37_RunThreadManagerTests:
	.word	_sourceFileName
	.word	_Label_94
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_95
	.word	-12
	.word	4
	.word	_Label_96
	.word	-16
	.word	4
	.word	_Label_97
	.word	-20
	.word	4
	.word	_Label_98
	.word	-24
	.word	4
	.word	_Label_99
	.word	-28
	.word	4
	.word	_Label_100
	.word	-32
	.word	4
	.word	_Label_101
	.word	-36
	.word	4
	.word	_Label_102
	.word	-40
	.word	4
	.word	_Label_103
	.word	-44
	.word	4
	.word	_Label_104
	.word	-48
	.word	4
	.word	_Label_105
	.word	-52
	.word	4
	.word	_Label_106
	.word	-56
	.word	4
	.word	_Label_107
	.word	-60
	.word	4
	.word	_Label_108
	.word	-64
	.word	4
	.word	_Label_109
	.word	-68
	.word	4
	.word	_Label_110
	.word	-72
	.word	4
	.word	_Label_111
	.word	-76
	.word	4
	.word	_Label_112
	.word	-80
	.word	4
	.word	0
_Label_94:
	.ascii	"RunThreadManagerTests\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_93\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_91\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_99:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_100:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_101:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_102:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_103:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_104:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_105:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_106:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_107:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_108:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_109:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_110:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_111:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_112:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestThreadManager  ===============
! 
_function_36_TestThreadManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_36_TestThreadManager,r1
	push	r1
	mov	22,r1
_Label_596:
	push	r0
	sub	r1,1,r1
	bne	_Label_596
	mov	212,r13		! source line 212
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	216,r13		! source line 216
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_117 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_118 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_117  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-76]
_Label_113:
!   Perform the FOR-LOOP termination test
!   if i > _temp_118 then goto _Label_116		
	load	[r14+-76],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_116
_Label_114:
	mov	216,r13		! source line 216
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	217,r13		! source line 217
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	218,r13		! source line 218
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	218,r13		! source line 218
	mov	"\0\0CA",r10
	call	_function_38_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	219,r13		! source line 219
	mov	"\0\0AS",r10
	mov	219,r13		! source line 219
	mov	"\0\0SE",r10
!   _temp_119 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-64]
!   Send message GetANewThread
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	220,r13		! source line 220
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_120 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   Move address of _temp_120 [0 ] into _temp_121
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Data Move: *_temp_121 = e  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r14+-56],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_126 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_127 = 10 + i		(int)
	mov	10,r1
	load	[r14+-76],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_126  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-80]
_Label_122:
!   Perform the FOR-LOOP termination test
!   if j > _temp_127 then goto _Label_125		
	load	[r14+-80],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_125
_Label_123:
	mov	221,r13		! source line 221
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	222,r13		! source line 222
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_124:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_122
! END FOR
_Label_125:
! IF STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0IF",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_131 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Move address of _temp_131 [0 ] into _temp_132
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_130 = *_temp_132  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if e == _temp_130 then goto _Label_129		(int)
	load	[r14+-84],r1
	load	[r14+-44],r2
	cmp	r1,r2
	be	_Label_129
!	jmp	_Label_128
_Label_128:
! THEN...
	mov	225,r13		! source line 225
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_133 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_133  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	225,r13		! source line 225
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_129:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	227,r13		! source line 227
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	228,r13		! source line 228
	mov	"\0\0SE",r10
!   _temp_134 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	229,r13		! source line 229
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_139 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_140 = 10 - i		(int)
	mov	10,r1
	load	[r14+-76],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_139  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-80]
_Label_135:
!   Perform the FOR-LOOP termination test
!   if j > _temp_140 then goto _Label_138		
	load	[r14+-80],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_138
_Label_136:
	mov	229,r13		! source line 229
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_137:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_135
! END FOR
_Label_138:
!   Increment the FOR-LOOP index variable and jump back
_Label_115:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_113
! END FOR
_Label_116:
! SEND STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0SE",r10
!   _temp_141 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0SE",r10
!   _temp_142 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_36_TestThreadManager:
	.word	_sourceFileName
	.word	_Label_143
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_144
	.word	8
	.word	4
	.word	_Label_145
	.word	-12
	.word	4
	.word	_Label_146
	.word	-16
	.word	4
	.word	_Label_147
	.word	-20
	.word	4
	.word	_Label_148
	.word	-24
	.word	4
	.word	_Label_149
	.word	-28
	.word	4
	.word	_Label_150
	.word	-32
	.word	4
	.word	_Label_151
	.word	-36
	.word	4
	.word	_Label_152
	.word	-40
	.word	4
	.word	_Label_153
	.word	-44
	.word	4
	.word	_Label_154
	.word	-48
	.word	4
	.word	_Label_155
	.word	-52
	.word	4
	.word	_Label_156
	.word	-56
	.word	4
	.word	_Label_157
	.word	-60
	.word	4
	.word	_Label_158
	.word	-64
	.word	4
	.word	_Label_159
	.word	-68
	.word	4
	.word	_Label_160
	.word	-72
	.word	4
	.word	_Label_161
	.word	-76
	.word	4
	.word	_Label_162
	.word	-80
	.word	4
	.word	_Label_163
	.word	-84
	.word	4
	.word	_Label_164
	.word	-88
	.word	4
	.word	0
_Label_143:
	.ascii	"TestThreadManager\0"
	.align
_Label_144:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_127\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_126\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_118\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
_Label_161:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_162:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_163:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_164:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION RunThreadManagerHoareTests  ===============
! 
_function_35_RunThreadManagerHoareTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_35_RunThreadManagerHoareTests,r1
	push	r1
	mov	21,r1
_Label_597:
	push	r0
	sub	r1,1,r1
	bne	_Label_597
	mov	254,r13		! source line 254
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0SE",r10
!   _temp_165 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0SE",r10
!   _temp_166 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0SE",r10
!   _temp_167 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	261,r13		! source line 261
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_168 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_168  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	263,r13		! source line 263
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_173 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_174 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_173  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_169:
!   Perform the FOR-LOOP termination test
!   if i > _temp_174 then goto _Label_172		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_172
_Label_170:
	mov	265,r13		! source line 265
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_175)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_598:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_598
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0SE",r10
!   _temp_177 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_177  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_178 = _function_34_TestThreadManagerHoare
	set	_function_34_TestThreadManagerHoare,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_178  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_171:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_169
! END FOR
_Label_172:
! FOR STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_183 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_184 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_183  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_179:
!   Perform the FOR-LOOP termination test
!   if i > _temp_184 then goto _Label_182		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_182
_Label_180:
	mov	273,r13		! source line 273
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0SE",r10
!   _temp_185 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_181:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_179
! END FOR
_Label_182:
! IF STATEMENT...
	mov	277,r13		! source line 277
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	277,r13		! source line 277
	mov	"\0\0CA",r10
	call	_function_38_GetUniqueNumber
!   Retrieve Result: targetName=_temp_188  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_188 == 401 then goto _Label_187		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_187
!	jmp	_Label_186
_Label_186:
! THEN...
	mov	278,r13		! source line 278
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_189 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_189  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	278,r13		! source line 278
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_187:
! CALL STATEMENT...
!   _temp_190 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_190  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	280,r13		! source line 280
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	280,r13		! source line 280
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_35_RunThreadManagerHoareTests:
	.word	_sourceFileName
	.word	_Label_191
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_192
	.word	-12
	.word	4
	.word	_Label_193
	.word	-16
	.word	4
	.word	_Label_194
	.word	-20
	.word	4
	.word	_Label_195
	.word	-24
	.word	4
	.word	_Label_196
	.word	-28
	.word	4
	.word	_Label_197
	.word	-32
	.word	4
	.word	_Label_198
	.word	-36
	.word	4
	.word	_Label_199
	.word	-40
	.word	4
	.word	_Label_200
	.word	-44
	.word	4
	.word	_Label_201
	.word	-48
	.word	4
	.word	_Label_202
	.word	-52
	.word	4
	.word	_Label_203
	.word	-56
	.word	4
	.word	_Label_204
	.word	-60
	.word	4
	.word	_Label_205
	.word	-64
	.word	4
	.word	_Label_206
	.word	-68
	.word	4
	.word	_Label_207
	.word	-72
	.word	4
	.word	_Label_208
	.word	-76
	.word	4
	.word	_Label_209
	.word	-80
	.word	4
	.word	0
_Label_191:
	.ascii	"RunThreadManagerHoareTests\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_178\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_177\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_176\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_175\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_174\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_168\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_167\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_166\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_165\0"
	.align
_Label_208:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_209:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestThreadManagerHoare  ===============
! 
_function_34_TestThreadManagerHoare:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_34_TestThreadManagerHoare,r1
	push	r1
	mov	22,r1
_Label_599:
	push	r0
	sub	r1,1,r1
	bne	_Label_599
	mov	292,r13		! source line 292
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_214 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_215 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_214  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-76]
_Label_210:
!   Perform the FOR-LOOP termination test
!   if i > _temp_215 then goto _Label_213		
	load	[r14+-76],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_213
_Label_211:
	mov	296,r13		! source line 296
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	297,r13		! source line 297
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	298,r13		! source line 298
	mov	"\0\0CA",r10
	call	_function_38_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0AS",r10
	mov	299,r13		! source line 299
	mov	"\0\0SE",r10
!   _temp_216 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-64]
!   Send message GetANewThread
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_217 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   Move address of _temp_217 [0 ] into _temp_218
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Data Move: *_temp_218 = e  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r14+-56],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_223 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_224 = 10 + i		(int)
	mov	10,r1
	load	[r14+-76],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_223  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-80]
_Label_219:
!   Perform the FOR-LOOP termination test
!   if j > _temp_224 then goto _Label_222		
	load	[r14+-80],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_222
_Label_220:
	mov	301,r13		! source line 301
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_221:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_219
! END FOR
_Label_222:
! IF STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0IF",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_228 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Move address of _temp_228 [0 ] into _temp_229
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_227 = *_temp_229  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if e == _temp_227 then goto _Label_226		(int)
	load	[r14+-84],r1
	load	[r14+-44],r2
	cmp	r1,r2
	be	_Label_226
!	jmp	_Label_225
_Label_225:
! THEN...
	mov	305,r13		! source line 305
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_230 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_230  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	305,r13		! source line 305
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_226:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	307,r13		! source line 307
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0SE",r10
!   _temp_231 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_236 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_237 = 10 - i		(int)
	mov	10,r1
	load	[r14+-76],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_236  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-80]
_Label_232:
!   Perform the FOR-LOOP termination test
!   if j > _temp_237 then goto _Label_235		
	load	[r14+-80],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_235
_Label_233:
	mov	309,r13		! source line 309
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_234:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_232
! END FOR
_Label_235:
!   Increment the FOR-LOOP index variable and jump back
_Label_212:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_210
! END FOR
_Label_213:
! SEND STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0SE",r10
!   _temp_238 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0SE",r10
!   _temp_239 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_34_TestThreadManagerHoare:
	.word	_sourceFileName
	.word	_Label_240
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_241
	.word	8
	.word	4
	.word	_Label_242
	.word	-12
	.word	4
	.word	_Label_243
	.word	-16
	.word	4
	.word	_Label_244
	.word	-20
	.word	4
	.word	_Label_245
	.word	-24
	.word	4
	.word	_Label_246
	.word	-28
	.word	4
	.word	_Label_247
	.word	-32
	.word	4
	.word	_Label_248
	.word	-36
	.word	4
	.word	_Label_249
	.word	-40
	.word	4
	.word	_Label_250
	.word	-44
	.word	4
	.word	_Label_251
	.word	-48
	.word	4
	.word	_Label_252
	.word	-52
	.word	4
	.word	_Label_253
	.word	-56
	.word	4
	.word	_Label_254
	.word	-60
	.word	4
	.word	_Label_255
	.word	-64
	.word	4
	.word	_Label_256
	.word	-68
	.word	4
	.word	_Label_257
	.word	-72
	.word	4
	.word	_Label_258
	.word	-76
	.word	4
	.word	_Label_259
	.word	-80
	.word	4
	.word	_Label_260
	.word	-84
	.word	4
	.word	_Label_261
	.word	-88
	.word	4
	.word	0
_Label_240:
	.ascii	"TestThreadManagerHoare\0"
	.align
_Label_241:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_258:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_259:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_260:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_261:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION RunProcessManagerTests  ===============
! 
_function_33_RunProcessManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_33_RunProcessManagerTests,r1
	push	r1
	mov	21,r1
_Label_600:
	push	r0
	sub	r1,1,r1
	bne	_Label_600
	mov	336,r13		! source line 336
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0SE",r10
!   _temp_262 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0SE",r10
!   _temp_263 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0SE",r10
!   _temp_264 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_265 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_265  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	345,r13		! source line 345
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	347,r13		! source line 347
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_270 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_271 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_270  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_266:
!   Perform the FOR-LOOP termination test
!   if i > _temp_271 then goto _Label_269		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_269
_Label_267:
	mov	347,r13		! source line 347
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	348,r13		! source line 348
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_272)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_601:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_601
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	349,r13		! source line 349
	mov	"\0\0SE",r10
!   _temp_274 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_274  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0SE",r10
!   _temp_275 = _function_32_TestProcessManager
	set	_function_32_TestProcessManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_275  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_268:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_266
! END FOR
_Label_269:
! FOR STATEMENT...
	mov	355,r13		! source line 355
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_280 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_281 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_280  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_276:
!   Perform the FOR-LOOP termination test
!   if i > _temp_281 then goto _Label_279		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_279
_Label_277:
	mov	355,r13		! source line 355
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	356,r13		! source line 356
	mov	"\0\0SE",r10
!   _temp_282 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_278:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_276
! END FOR
_Label_279:
! IF STATEMENT...
	mov	359,r13		! source line 359
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	359,r13		! source line 359
	mov	"\0\0CA",r10
	call	_function_38_GetUniqueNumber
!   Retrieve Result: targetName=_temp_285  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_285 == 401 then goto _Label_284		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_284
!	jmp	_Label_283
_Label_283:
! THEN...
	mov	360,r13		! source line 360
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_286 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_286  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	360,r13		! source line 360
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_284:
! CALL STATEMENT...
!   _temp_287 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_287  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	362,r13		! source line 362
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	362,r13		! source line 362
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_33_RunProcessManagerTests:
	.word	_sourceFileName
	.word	_Label_288
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_289
	.word	-12
	.word	4
	.word	_Label_290
	.word	-16
	.word	4
	.word	_Label_291
	.word	-20
	.word	4
	.word	_Label_292
	.word	-24
	.word	4
	.word	_Label_293
	.word	-28
	.word	4
	.word	_Label_294
	.word	-32
	.word	4
	.word	_Label_295
	.word	-36
	.word	4
	.word	_Label_296
	.word	-40
	.word	4
	.word	_Label_297
	.word	-44
	.word	4
	.word	_Label_298
	.word	-48
	.word	4
	.word	_Label_299
	.word	-52
	.word	4
	.word	_Label_300
	.word	-56
	.word	4
	.word	_Label_301
	.word	-60
	.word	4
	.word	_Label_302
	.word	-64
	.word	4
	.word	_Label_303
	.word	-68
	.word	4
	.word	_Label_304
	.word	-72
	.word	4
	.word	_Label_305
	.word	-76
	.word	4
	.word	_Label_306
	.word	-80
	.word	4
	.word	0
_Label_288:
	.ascii	"RunProcessManagerTests\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_305:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_306:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestProcessManager  ===============
! 
_function_32_TestProcessManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_32_TestProcessManager,r1
	push	r1
	mov	20,r1
_Label_602:
	push	r0
	sub	r1,1,r1
	bne	_Label_602
	mov	375,r13		! source line 375
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	379,r13		! source line 379
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_311 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_312 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_311  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-68]
_Label_307:
!   Perform the FOR-LOOP termination test
!   if i > _temp_312 then goto _Label_310		
	load	[r14+-68],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_310
_Label_308:
	mov	379,r13		! source line 379
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	380,r13		! source line 380
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	381,r13		! source line 381
	mov	"\0\0CA",r10
	call	_function_38_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0AS",r10
	mov	382,r13		! source line 382
	mov	"\0\0SE",r10
!   _temp_313 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   Send message GetANewProcess
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	383,r13		! source line 383
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_314 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_314 = e  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-52],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	384,r13		! source line 384
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_319 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_320 = 10 + i		(int)
	mov	10,r1
	load	[r14+-68],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_319  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-72]
_Label_315:
!   Perform the FOR-LOOP termination test
!   if j > _temp_320 then goto _Label_318		
	load	[r14+-72],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_318
_Label_316:
	mov	384,r13		! source line 384
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	385,r13		! source line 385
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_317:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_315
! END FOR
_Label_318:
! IF STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0IF",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_324 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-36]
!   Data Move: _temp_323 = *_temp_324  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if e == _temp_323 then goto _Label_322		(int)
	load	[r14+-76],r1
	load	[r14+-40],r2
	cmp	r1,r2
	be	_Label_322
!	jmp	_Label_321
_Label_321:
! THEN...
	mov	388,r13		! source line 388
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_325 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	388,r13		! source line 388
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_322:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	390,r13		! source line 390
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0SE",r10
!   _temp_326 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_331 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_332 = 10 - i		(int)
	mov	10,r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_331  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-72]
_Label_327:
!   Perform the FOR-LOOP termination test
!   if j > _temp_332 then goto _Label_330		
	load	[r14+-72],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_330
_Label_328:
	mov	392,r13		! source line 392
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_329:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_327
! END FOR
_Label_330:
!   Increment the FOR-LOOP index variable and jump back
_Label_309:
!   i = i + 1
	load	[r14+-68],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
	jmp	_Label_307
! END FOR
_Label_310:
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   _temp_333 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0SE",r10
!   _temp_334 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_32_TestProcessManager:
	.word	_sourceFileName
	.word	_Label_335
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_336
	.word	8
	.word	4
	.word	_Label_337
	.word	-12
	.word	4
	.word	_Label_338
	.word	-16
	.word	4
	.word	_Label_339
	.word	-20
	.word	4
	.word	_Label_340
	.word	-24
	.word	4
	.word	_Label_341
	.word	-28
	.word	4
	.word	_Label_342
	.word	-32
	.word	4
	.word	_Label_343
	.word	-36
	.word	4
	.word	_Label_344
	.word	-40
	.word	4
	.word	_Label_345
	.word	-44
	.word	4
	.word	_Label_346
	.word	-48
	.word	4
	.word	_Label_347
	.word	-52
	.word	4
	.word	_Label_348
	.word	-56
	.word	4
	.word	_Label_349
	.word	-60
	.word	4
	.word	_Label_350
	.word	-64
	.word	4
	.word	_Label_351
	.word	-68
	.word	4
	.word	_Label_352
	.word	-72
	.word	4
	.word	_Label_353
	.word	-76
	.word	4
	.word	_Label_354
	.word	-80
	.word	4
	.word	0
_Label_335:
	.ascii	"TestProcessManager\0"
	.align
_Label_336:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_351:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_352:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_353:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_354:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION RunFrameManagerTests  ===============
! 
_function_31_RunFrameManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_31_RunFrameManagerTests,r1
	push	r1
	mov	28,r1
_Label_603:
	push	r0
	sub	r1,1,r1
	bne	_Label_603
	mov	418,r13		! source line 418
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	422,r13		! source line 422
	mov	"\0\0SE",r10
!   _temp_355 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	423,r13		! source line 423
	mov	"\0\0SE",r10
!   _temp_356 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   _temp_357 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	425,r13		! source line 425
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_362 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_363 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_362  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-100]
_Label_358:
!   Perform the FOR-LOOP termination test
!   if i > _temp_363 then goto _Label_361		
	load	[r14+-100],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_361
_Label_359:
	mov	427,r13		! source line 427
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-76]
!   th = alloc (_temp_364)
	load	[r14+-76],r1
	call	_heapAlloc
	store	r1,[r14+-108]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-108],r4
	mov	1041,r3
_Label_604:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_604
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-108],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_366 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-68]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_366  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_367 = _function_30_TestFrameManager
	set	_function_30_TestFrameManager,r1
	store	r1,[r14+-64]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_367  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_360:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_358
! END FOR
_Label_361:
! FOR STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_372 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_373 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_372  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-100]
_Label_368:
!   Perform the FOR-LOOP termination test
!   if i > _temp_373 then goto _Label_371		
	load	[r14+-100],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_371
_Label_369:
	mov	435,r13		! source line 435
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   _temp_374 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-52]
!   Send message Down
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_370:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_368
! END FOR
_Label_371:
! CALL STATEMENT...
!   _temp_375 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	439,r13		! source line 439
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	440,r13		! source line 440
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_380 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_381 = 99		(4 bytes)
	mov	99,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_380  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-100]
_Label_376:
!   Perform the FOR-LOOP termination test
!   if i > _temp_381 then goto _Label_379		
	load	[r14+-100],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_379
_Label_377:
	mov	440,r13		! source line 440
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_382 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_382  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	441,r13		! source line 441
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	442,r13		! source line 442
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_383 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_383  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	443,r13		! source line 443
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	444,r13		! source line 444
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_388 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_390 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-20]
!   Move address of _temp_390 [i ] into _temp_391
!     make sure index expr is >= 0
	load	[r14+-100],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_389 = *_temp_391  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_388  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-104]
_Label_384:
!   Perform the FOR-LOOP termination test
!   if j > _temp_389 then goto _Label_387		
	load	[r14+-104],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_387
_Label_385:
	mov	444,r13		! source line 444
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=42  sizeInBytes=1
	mov	42,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	445,r13		! source line 445
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_386:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_384
! END FOR
_Label_387:
! CALL STATEMENT...
!   Call the function
	mov	447,r13		! source line 447
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_378:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_376
! END FOR
_Label_379:
! CALL STATEMENT...
!   _temp_392 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_392  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	450,r13		! source line 450
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0RE",r10
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_31_RunFrameManagerTests:
	.word	_sourceFileName
	.word	_Label_393
	.word	0		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_394
	.word	-12
	.word	4
	.word	_Label_395
	.word	-16
	.word	4
	.word	_Label_396
	.word	-20
	.word	4
	.word	_Label_397
	.word	-24
	.word	4
	.word	_Label_398
	.word	-28
	.word	4
	.word	_Label_399
	.word	-32
	.word	4
	.word	_Label_400
	.word	-36
	.word	4
	.word	_Label_401
	.word	-40
	.word	4
	.word	_Label_402
	.word	-44
	.word	4
	.word	_Label_403
	.word	-48
	.word	4
	.word	_Label_404
	.word	-52
	.word	4
	.word	_Label_405
	.word	-56
	.word	4
	.word	_Label_406
	.word	-60
	.word	4
	.word	_Label_407
	.word	-64
	.word	4
	.word	_Label_408
	.word	-68
	.word	4
	.word	_Label_409
	.word	-72
	.word	4
	.word	_Label_410
	.word	-76
	.word	4
	.word	_Label_411
	.word	-80
	.word	4
	.word	_Label_412
	.word	-84
	.word	4
	.word	_Label_413
	.word	-88
	.word	4
	.word	_Label_414
	.word	-92
	.word	4
	.word	_Label_415
	.word	-96
	.word	4
	.word	_Label_416
	.word	-100
	.word	4
	.word	_Label_417
	.word	-104
	.word	4
	.word	_Label_418
	.word	-108
	.word	4
	.word	0
_Label_393:
	.ascii	"RunFrameManagerTests\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_416:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_417:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_418:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestFrameManager  ===============
! 
_function_30_TestFrameManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_30_TestFrameManager,r1
	push	r1
	mov	30,r1
_Label_605:
	push	r0
	sub	r1,1,r1
	bne	_Label_605
	mov	474,r13		! source line 474
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
	mov	478,r13		! source line 478
	mov	"\0\0SE",r10
!   _temp_419 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   Send message GetANewProcess
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! FOR STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_424 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_425 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_424  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-100]
_Label_420:
!   Perform the FOR-LOOP termination test
!   if i > _temp_425 then goto _Label_423		
	load	[r14+-100],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_423
_Label_421:
	mov	479,r13		! source line 479
	mov	"\0\0FB",r10
! FOR STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_430 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_431 = 19		(4 bytes)
	mov	19,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: sz = _temp_430  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-112]
_Label_426:
!   Perform the FOR-LOOP termination test
!   if sz > _temp_431 then goto _Label_429		
	load	[r14+-112],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_429
_Label_427:
	mov	480,r13		! source line 480
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	481,r13		! source line 481
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	482,r13		! source line 482
	mov	"\0\0CA",r10
	call	_function_38_GetUniqueNumber
!   Retrieve Result: targetName=newData  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! SEND STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_433 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   _temp_432 = _temp_433		(4 bytes)
	load	[r14+-72],r1
	store	r1,[r14+-76]
!   _temp_434 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_432  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_436 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_435 = _temp_436		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_435  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	484,r13		! source line 484
	mov	"\0\0CA",r10
	call	_function_29_CheckAddrSpace
! FOR STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_441 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_442 = 10 + i		(int)
	mov	10,r1
	load	[r14+-100],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_441  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-104]
_Label_437:
!   Perform the FOR-LOOP termination test
!   if j > _temp_442 then goto _Label_440		
	load	[r14+-104],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_440
_Label_438:
	mov	485,r13		! source line 485
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_439:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_437
! END FOR
_Label_440:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	488,r13		! source line 488
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_444 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_443 = _temp_444		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_443  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	489,r13		! source line 489
	mov	"\0\0CA",r10
	call	_function_28_CheckAddrSpace2
! SEND STATEMENT...
	mov	490,r13		! source line 490
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_446 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_445 = _temp_446		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-40]
!   _temp_447 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_445  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_452 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_453 = 10 - i		(int)
	mov	10,r1
	load	[r14+-100],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_452  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-104]
_Label_448:
!   Perform the FOR-LOOP termination test
!   if j > _temp_453 then goto _Label_451		
	load	[r14+-104],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_451
_Label_449:
	mov	491,r13		! source line 491
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	492,r13		! source line 492
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_450:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_448
! END FOR
_Label_451:
!   Increment the FOR-LOOP index variable and jump back
_Label_428:
!   sz = sz + 1
	load	[r14+-112],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
	jmp	_Label_426
! END FOR
_Label_429:
!   Increment the FOR-LOOP index variable and jump back
_Label_422:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_420
! END FOR
_Label_423:
! SEND STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0SE",r10
!   _temp_454 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0SE",r10
!   _temp_455 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0SE",r10
!   _temp_456 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0RE",r10
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_30_TestFrameManager:
	.word	_sourceFileName
	.word	_Label_457
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_458
	.word	8
	.word	4
	.word	_Label_459
	.word	-12
	.word	4
	.word	_Label_460
	.word	-16
	.word	4
	.word	_Label_461
	.word	-20
	.word	4
	.word	_Label_462
	.word	-24
	.word	4
	.word	_Label_463
	.word	-28
	.word	4
	.word	_Label_464
	.word	-32
	.word	4
	.word	_Label_465
	.word	-36
	.word	4
	.word	_Label_466
	.word	-40
	.word	4
	.word	_Label_467
	.word	-44
	.word	4
	.word	_Label_468
	.word	-48
	.word	4
	.word	_Label_469
	.word	-52
	.word	4
	.word	_Label_470
	.word	-56
	.word	4
	.word	_Label_471
	.word	-60
	.word	4
	.word	_Label_472
	.word	-64
	.word	4
	.word	_Label_473
	.word	-68
	.word	4
	.word	_Label_474
	.word	-72
	.word	4
	.word	_Label_475
	.word	-76
	.word	4
	.word	_Label_476
	.word	-80
	.word	4
	.word	_Label_477
	.word	-84
	.word	4
	.word	_Label_478
	.word	-88
	.word	4
	.word	_Label_479
	.word	-92
	.word	4
	.word	_Label_480
	.word	-96
	.word	4
	.word	_Label_481
	.word	-100
	.word	4
	.word	_Label_482
	.word	-104
	.word	4
	.word	_Label_483
	.word	-108
	.word	4
	.word	_Label_484
	.word	-112
	.word	4
	.word	_Label_485
	.word	-116
	.word	4
	.word	0
_Label_457:
	.ascii	"TestFrameManager\0"
	.align
_Label_458:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_481:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_482:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_483:
	.byte	'I'
	.ascii	"newData\0"
	.align
_Label_484:
	.byte	'I'
	.ascii	"sz\0"
	.align
_Label_485:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace  ===============
! 
_function_29_CheckAddrSpace:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_29_CheckAddrSpace,r1
	push	r1
	mov	23,r1
_Label_606:
	push	r0
	sub	r1,1,r1
	bne	_Label_606
	mov	506,r13		! source line 506
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_489 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Data Move: _temp_488 = *_temp_489  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_488 == n then goto _Label_487		(int)
	load	[r14+-80],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_487
!	jmp	_Label_486
_Label_486:
! THEN...
	mov	509,r13		! source line 509
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_490 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_490  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	509,r13		! source line 509
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_487:
! FOR STATEMENT...
	mov	511,r13		! source line 511
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_495 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_496 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_495  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-84]
_Label_491:
!   Perform the FOR-LOOP termination test
!   if i > _temp_496 then goto _Label_494		
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_494
_Label_492:
	mov	511,r13		! source line 511
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	512,r13		! source line 512
	mov	"\0\0AS",r10
	mov	512,r13		! source line 512
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	513,r13		! source line 513
	mov	"\0\0AS",r10
!   _temp_497 = frameAddr - 1048576		(int)
	load	[r14+-88],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   frameNumber = _temp_497 div 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_501		(int)
	load	[r14+-92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_501
	jmp	_Label_498
_Label_501:
!   if frameNumber < 100 then goto _Label_500		(int)
	load	[r14+-92],r1
	mov	100,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_500
	jmp	_Label_498
_Label_500:
!   _temp_502 = frameAddr rem 8192		(int)
	load	[r14+-88],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   if intIsZero (_temp_502) then goto _Label_499
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_499
!	jmp	_Label_498
_Label_498:
! THEN...
	mov	518,r13		! source line 518
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_503 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_503  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	518,r13		! source line 518
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_499:
! ASSIGNMENT STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0AS",r10
!   _temp_504 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-48]
!   Move address of _temp_504 [frameNumber ] into _temp_505
!     make sure index expr is >= 0
	load	[r14+-92],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-48],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   _temp_508 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-32]
!   Move address of _temp_508 [frameNumber ] into _temp_509
!     make sure index expr is >= 0
	load	[r14+-92],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Data Move: _temp_507 = *_temp_509  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_506 = _temp_507 + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Data Move: *_temp_505 = _temp_506  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-44],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0IF",r10
	mov	521,r13		! source line 521
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_516  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_516) then goto _Label_515
	load	[r14+-24],r1
	cmp	r1,r0
	be	_Label_515
	jmp	_Label_510
_Label_515:
	mov	522,r13		! source line 522
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_510 else goto _Label_514
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_514
	jmp	_Label_510
_Label_514:
	mov	523,r13		! source line 523
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_510 else goto _Label_513
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_513
	jmp	_Label_510
_Label_513:
	mov	524,r13		! source line 524
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_517  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_517 then goto _Label_512 else goto _Label_510
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_510
	jmp	_Label_512
_Label_512:
	mov	525,r13		! source line 525
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_518  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_518 then goto _Label_511 else goto _Label_510
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_510
	jmp	_Label_511
_Label_510:
! THEN...
	mov	526,r13		! source line 526
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_519 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_519  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	526,r13		! source line 526
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_511:
! ASSIGNMENT STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0AS",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_520 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-84],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Data Move: *frameAddr = _temp_520  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-88],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_493:
!   i = i + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_491
! END FOR
_Label_494:
! RETURN STATEMENT...
	mov	511,r13		! source line 511
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_29_CheckAddrSpace:
	.word	_sourceFileName
	.word	_Label_521
	.word	12		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_522
	.word	8
	.word	4
	.word	_Label_523
	.word	12
	.word	4
	.word	_Label_524
	.word	16
	.word	4
	.word	_Label_525
	.word	-16
	.word	4
	.word	_Label_526
	.word	-20
	.word	4
	.word	_Label_527
	.word	-9
	.word	1
	.word	_Label_528
	.word	-10
	.word	1
	.word	_Label_529
	.word	-24
	.word	4
	.word	_Label_530
	.word	-28
	.word	4
	.word	_Label_531
	.word	-32
	.word	4
	.word	_Label_532
	.word	-36
	.word	4
	.word	_Label_533
	.word	-40
	.word	4
	.word	_Label_534
	.word	-44
	.word	4
	.word	_Label_535
	.word	-48
	.word	4
	.word	_Label_536
	.word	-52
	.word	4
	.word	_Label_537
	.word	-56
	.word	4
	.word	_Label_538
	.word	-60
	.word	4
	.word	_Label_539
	.word	-64
	.word	4
	.word	_Label_540
	.word	-68
	.word	4
	.word	_Label_541
	.word	-72
	.word	4
	.word	_Label_542
	.word	-76
	.word	4
	.word	_Label_543
	.word	-80
	.word	4
	.word	_Label_544
	.word	-84
	.word	4
	.word	_Label_545
	.word	-88
	.word	4
	.word	_Label_546
	.word	-92
	.word	4
	.word	0
_Label_521:
	.ascii	"CheckAddrSpace\0"
	.align
_Label_522:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_523:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_524:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_527:
	.byte	'C'
	.ascii	"_temp_518\0"
	.align
_Label_528:
	.byte	'C'
	.ascii	"_temp_517\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_488\0"
	.align
_Label_544:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_545:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_546:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace2  ===============
! 
_function_28_CheckAddrSpace2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_28_CheckAddrSpace2,r1
	push	r1
	mov	16,r1
_Label_607:
	push	r0
	sub	r1,1,r1
	bne	_Label_607
	mov	539,r13		! source line 539
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	541,r13		! source line 541
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_550 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Data Move: _temp_549 = *_temp_550  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if _temp_549 == n then goto _Label_548		(int)
	load	[r14+-52],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_548
!	jmp	_Label_547
_Label_547:
! THEN...
	mov	542,r13		! source line 542
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_551 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_551  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	542,r13		! source line 542
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_548:
! FOR STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_556 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_557 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_556  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-56]
_Label_552:
!   Perform the FOR-LOOP termination test
!   if i > _temp_557 then goto _Label_555		
	load	[r14+-56],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_555
_Label_553:
	mov	544,r13		! source line 544
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	545,r13		! source line 545
	mov	"\0\0AS",r10
	mov	545,r13		! source line 545
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0AS",r10
!   _temp_558 = frameAddr - 1048576		(int)
	load	[r14+-60],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   frameNumber = _temp_558 div 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! IF STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_562		(int)
	load	[r14+-64],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_562
	jmp	_Label_559
_Label_562:
!   if frameNumber < 100 then goto _Label_561		(int)
	load	[r14+-64],r1
	mov	100,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_561
	jmp	_Label_559
_Label_561:
!   _temp_563 = frameAddr rem 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_563) then goto _Label_560
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_560
!	jmp	_Label_559
_Label_559:
! THEN...
	mov	551,r13		! source line 551
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_564 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_564  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	551,r13		! source line 551
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_560:
! IF STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0IF",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_567 = *frameAddr  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_568 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if _temp_567 == _temp_568 then goto _Label_566		(int)
	load	[r14+-20],r1
	load	[r14+-16],r2
	cmp	r1,r2
	be	_Label_566
!	jmp	_Label_565
_Label_565:
! THEN...
	mov	554,r13		! source line 554
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_569 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_569  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	554,r13		! source line 554
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_566:
!   Increment the FOR-LOOP index variable and jump back
_Label_554:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_552
! END FOR
_Label_555:
! RETURN STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_28_CheckAddrSpace2:
	.word	_sourceFileName
	.word	_Label_570
	.word	12		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_571
	.word	8
	.word	4
	.word	_Label_572
	.word	12
	.word	4
	.word	_Label_573
	.word	16
	.word	4
	.word	_Label_574
	.word	-12
	.word	4
	.word	_Label_575
	.word	-16
	.word	4
	.word	_Label_576
	.word	-20
	.word	4
	.word	_Label_577
	.word	-24
	.word	4
	.word	_Label_578
	.word	-28
	.word	4
	.word	_Label_579
	.word	-32
	.word	4
	.word	_Label_580
	.word	-36
	.word	4
	.word	_Label_581
	.word	-40
	.word	4
	.word	_Label_582
	.word	-44
	.word	4
	.word	_Label_583
	.word	-48
	.word	4
	.word	_Label_584
	.word	-52
	.word	4
	.word	_Label_585
	.word	-56
	.word	4
	.word	_Label_586
	.word	-60
	.word	4
	.word	_Label_587
	.word	-64
	.word	4
	.word	0
_Label_570:
	.ascii	"CheckAddrSpace2\0"
	.align
_Label_571:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_572:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_573:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_585:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_586:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_587:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
