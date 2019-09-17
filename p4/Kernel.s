! Name of package being compiled: Kernel
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
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_MutexHoare
	.export	_Method_P_Kernel_MutexHoare_1
	.export	_Method_P_Kernel_MutexHoare_2
	.export	_Method_P_Kernel_MutexHoare_3
	.export	_Method_P_Kernel_MutexHoare_4
	.export	_Method_P_Kernel_MutexHoare_5
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_ConditionHoare
	.export	_Method_P_Kernel_ConditionHoare_1
	.export	_Method_P_Kernel_ConditionHoare_2
	.export	_Method_P_Kernel_ConditionHoare_3
	.export	_Method_P_Kernel_ConditionHoare_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManagerHoare
	.export	_Method_P_Kernel_ThreadManagerHoare_1
	.export	_Method_P_Kernel_ThreadManagerHoare_2
	.export	_Method_P_Kernel_ThreadManagerHoare_3
	.export	_Method_P_Kernel_ThreadManagerHoare_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_threadManagerHoare
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_threadManagerHoare:
	.skip	41696
_P_Kernel_frameManager:
	.skip	88
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_207:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_206:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_205:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_204:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_203:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_202:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_201:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_200:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_199:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_198:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_197:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_196:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_195:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_194:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_193:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_192:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_191:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_190:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_189:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_188:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_187:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_186:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_185:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_184:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_183:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_182:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_181:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_180:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_179:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_178:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_177:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_176:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_175:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_174:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_173:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_172:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_171:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_170:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_169:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_168:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_167:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_166:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_165:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_164:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_163:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_162:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_161:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_160:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_159:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_158:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_157:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_156:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_155:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_154:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_153:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_152:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_151:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_150:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_149:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_148:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_147:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_146:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_145:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_144:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_143:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_142:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_141:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_140:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_139:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_138:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_137:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_136:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_135:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_134:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_133:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_132:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_131:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_130:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_129:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_128:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_127:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_126:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_125:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_124:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_123:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_122:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_121:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_120:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_119:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_118:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_117:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_116:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_115:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_114:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_113:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_112:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_111:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_110:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_109:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_108:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_107:
	.word	1			! length
	.ascii	"9"
	.align
_StringConst_106:
	.word	1			! length
	.ascii	"8"
	.align
_StringConst_105:
	.word	1			! length
	.ascii	"7"
	.align
_StringConst_104:
	.word	1			! length
	.ascii	"6"
	.align
_StringConst_103:
	.word	1			! length
	.ascii	"5"
	.align
_StringConst_102:
	.word	1			! length
	.ascii	"4"
	.align
_StringConst_101:
	.word	1			! length
	.ascii	"3"
	.align
_StringConst_100:
	.word	1			! length
	.ascii	"2"
	.align
_StringConst_99:
	.word	1			! length
	.ascii	"1"
	.align
_StringConst_98:
	.word	1			! length
	.ascii	"0"
	.align
_StringConst_97:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_96:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_95:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_94:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_93:
	.word	1			! length
	.ascii	"9"
	.align
_StringConst_92:
	.word	1			! length
	.ascii	"8"
	.align
_StringConst_91:
	.word	1			! length
	.ascii	"7"
	.align
_StringConst_90:
	.word	1			! length
	.ascii	"6"
	.align
_StringConst_89:
	.word	1			! length
	.ascii	"5"
	.align
_StringConst_88:
	.word	1			! length
	.ascii	"4"
	.align
_StringConst_87:
	.word	1			! length
	.ascii	"3"
	.align
_StringConst_86:
	.word	1			! length
	.ascii	"2"
	.align
_StringConst_85:
	.word	1			! length
	.ascii	"1"
	.align
_StringConst_84:
	.word	1			! length
	.ascii	"0"
	.align
_StringConst_83:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_82:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_81:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_80:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_79:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_78:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_77:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_76:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_75:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_74:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_73:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_72:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_71:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_70:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_69:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_68:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_67:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_66:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_65:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_64:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_63:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_62:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_61:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_60:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_59:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_58:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_57:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_56:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_55:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_54:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_53:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_52:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_51:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_50:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_49:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_48:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_47:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_46:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_45:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_44:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_43:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_42:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_41:
	.word	58			! length
	.ascii	"**********\n Error in creating the executable file\n *******"
	.align
_StringConst_40:
	.word	51			! length
	.ascii	"************\n Could not open file \n****************"
	.align
_StringConst_39:
	.word	16			! length
	.ascii	"Test Program one"
	.align
_StringConst_38:
	.word	11			! length
	.ascii	"UserProgram"
	.align
_StringConst_37:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_36:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_35:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_34:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_33:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_32:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_31:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_30:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_28:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_24:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
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
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x3aba62bd,r4		! myHashVal = 985293501
	cmp	r3,r4
	be	_Label_217
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
_Label_217:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_218
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_218
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_218
_Label_218:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_3194:
	push	r0
	sub	r1,1,r1
	bne	_Label_3194
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_219 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_219  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3195:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3195
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_223 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_224 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_223  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_225 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_226 = _temp_225 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_226 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3196:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3196
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_228 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_229 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_228  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_230 = _function_216_IdleFunction
	set	_function_216_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_231 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_230  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_232
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_233
	.word	-12
	.word	4
	.word	_Label_234
	.word	-16
	.word	4
	.word	_Label_235
	.word	-20
	.word	4
	.word	_Label_236
	.word	-24
	.word	4
	.word	_Label_237
	.word	-28
	.word	4
	.word	_Label_238
	.word	-32
	.word	4
	.word	_Label_239
	.word	-36
	.word	4
	.word	_Label_240
	.word	-40
	.word	4
	.word	_Label_241
	.word	-44
	.word	4
	.word	_Label_242
	.word	-48
	.word	4
	.word	_Label_243
	.word	-52
	.word	4
	.word	_Label_244
	.word	-56
	.word	4
	.word	_Label_245
	.word	-60
	.word	4
	.word	0
_Label_232:
	.ascii	"InitializeScheduler\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_216_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_216_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3197:
	push	r0
	sub	r1,1,r1
	bne	_Label_3197
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_246:
!	jmp	_Label_247
_Label_247:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_251 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_249 else goto _Label_250
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_250
	jmp	_Label_249
_Label_249:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_252
_Label_250:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
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
! END IF...
_Label_252:
! END WHILE...
	jmp	_Label_246
_Label_248:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_216_IdleFunction:
	.word	_sourceFileName
	.word	_Label_253
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_254
	.word	8
	.word	4
	.word	_Label_255
	.word	-12
	.word	4
	.word	_Label_256
	.word	-16
	.word	4
	.word	0
_Label_253:
	.ascii	"IdleFunction\0"
	.align
_Label_254:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_256:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_3198:
	push	r0
	sub	r1,1,r1
	bne	_Label_3198
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_259 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_259 ) then goto _Label_258		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_258
!	jmp	_Label_257
_Label_257:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_261 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_261 [0 ] into _temp_262
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
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
	store	r2,[r14+-60]
!   _temp_260 = _temp_262		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_260  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_258:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_263 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_263 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_264:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_268 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_267  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_267 then goto _Label_266 else goto _Label_265
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_265
	jmp	_Label_266
_Label_265:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_269 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_270 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_264
_Label_266:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_273 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_273 ) then goto _Label_272		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_272
!	jmp	_Label_271
_Label_271:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_275 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_275 [0 ] into _temp_276
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_274 = _temp_276		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_274  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_278 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_277 = *_temp_278  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_277) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_279 = _temp_277 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_272:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_280
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_281
	.word	8
	.word	4
	.word	_Label_282
	.word	-16
	.word	4
	.word	_Label_283
	.word	-20
	.word	4
	.word	_Label_284
	.word	-24
	.word	4
	.word	_Label_285
	.word	-28
	.word	4
	.word	_Label_286
	.word	-32
	.word	4
	.word	_Label_287
	.word	-36
	.word	4
	.word	_Label_288
	.word	-40
	.word	4
	.word	_Label_289
	.word	-44
	.word	4
	.word	_Label_290
	.word	-48
	.word	4
	.word	_Label_291
	.word	-52
	.word	4
	.word	_Label_292
	.word	-9
	.word	1
	.word	_Label_293
	.word	-56
	.word	4
	.word	_Label_294
	.word	-60
	.word	4
	.word	_Label_295
	.word	-64
	.word	4
	.word	_Label_296
	.word	-68
	.word	4
	.word	_Label_297
	.word	-72
	.word	4
	.word	_Label_298
	.word	-76
	.word	4
	.word	_Label_299
	.word	-80
	.word	4
	.word	0
_Label_280:
	.ascii	"Run\0"
	.align
_Label_281:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_292:
	.byte	'C'
	.ascii	"_temp_267\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_298:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_299:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_3199:
	push	r0
	sub	r1,1,r1
	bne	_Label_3199
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_300 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_300  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_301 = _function_215_ThreadPrintShort
	set	_function_215_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_302 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_301  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_303
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_304
	.word	-12
	.word	4
	.word	_Label_305
	.word	-16
	.word	4
	.word	_Label_306
	.word	-20
	.word	4
	.word	_Label_307
	.word	-24
	.word	4
	.word	0
_Label_303:
	.ascii	"PrintReadyList\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_307:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_3200:
	push	r0
	sub	r1,1,r1
	bne	_Label_3200
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_308 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_308  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_310 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_309 = *_temp_310  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_309  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_311 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_312
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_313
	.word	-12
	.word	4
	.word	_Label_314
	.word	-16
	.word	4
	.word	_Label_315
	.word	-20
	.word	4
	.word	_Label_316
	.word	-24
	.word	4
	.word	_Label_317
	.word	-28
	.word	4
	.word	_Label_318
	.word	-32
	.word	4
	.word	0
_Label_312:
	.ascii	"ThreadStartMain\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_317:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_318:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_3201:
	push	r0
	sub	r1,1,r1
	bne	_Label_3201
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_319 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_320 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_320  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_321
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_322
	.word	-12
	.word	4
	.word	_Label_323
	.word	-16
	.word	4
	.word	_Label_324
	.word	-20
	.word	4
	.word	0
_Label_321:
	.ascii	"ThreadFinish\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_324:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_3202:
	push	r0
	sub	r1,1,r1
	bne	_Label_3202
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_325 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_327		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_327
!	jmp	_Label_326
_Label_326:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_328 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_328  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_330 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_329 = *_temp_330  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_329  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_327:
! CALL STATEMENT...
!   _temp_331 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_332 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_332  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_333 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_334
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_335
	.word	8
	.word	4
	.word	_Label_336
	.word	-12
	.word	4
	.word	_Label_337
	.word	-16
	.word	4
	.word	_Label_338
	.word	-20
	.word	4
	.word	_Label_339
	.word	-24
	.word	4
	.word	_Label_340
	.word	-28
	.word	4
	.word	_Label_341
	.word	-32
	.word	4
	.word	_Label_342
	.word	-36
	.word	4
	.word	_Label_343
	.word	-40
	.word	4
	.word	0
_Label_334:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_335:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_343:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_3203:
	push	r0
	sub	r1,1,r1
	bne	_Label_3203
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_345		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_345
!	jmp	_Label_344
_Label_344:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_346
_Label_345:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_346:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_347
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_348
	.word	8
	.word	4
	.word	_Label_349
	.word	-12
	.word	4
	.word	0
_Label_347:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_348:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_349:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_215_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_215_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3204:
	push	r0
	sub	r1,1,r1
	bne	_Label_3204
	mov	822,r13		! source line 822
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	829,r13		! source line 829
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	830,r13		! source line 830
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_353		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_353
!   _temp_352 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_354
_Label_353:
!   _temp_352 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_354:
!   if _temp_352 then goto _Label_351 else goto _Label_350
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_350
	jmp	_Label_351
_Label_350:
! THEN...
	mov	831,r13		! source line 831
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_355 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	832,r13		! source line 832
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_351:
! CALL STATEMENT...
!   _temp_356 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	834,r13		! source line 834
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_358 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_357 = *_temp_358  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	835,r13		! source line 835
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_359 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	836,r13		! source line 836
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	837,r13		! source line 837
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_368 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_367 = *_temp_368  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_362
	cmp	r1,2
	be	_Label_363
	cmp	r1,3
	be	_Label_364
	cmp	r1,4
	be	_Label_365
	cmp	r1,5
	be	_Label_366
	jmp	_Label_360
! CASE 1...
_Label_362:
! CALL STATEMENT...
!   _temp_369 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	839,r13		! source line 839
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	840,r13		! source line 840
	mov	"\0\0BR",r10
	jmp	_Label_361
! CASE 2...
_Label_363:
! CALL STATEMENT...
!   _temp_370 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_370  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	843,r13		! source line 843
	mov	"\0\0BR",r10
	jmp	_Label_361
! CASE 3...
_Label_364:
! CALL STATEMENT...
!   _temp_371 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_371  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	845,r13		! source line 845
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	846,r13		! source line 846
	mov	"\0\0BR",r10
	jmp	_Label_361
! CASE 4...
_Label_365:
! CALL STATEMENT...
!   _temp_372 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	848,r13		! source line 848
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	849,r13		! source line 849
	mov	"\0\0BR",r10
	jmp	_Label_361
! CASE 5...
_Label_366:
! CALL STATEMENT...
!   _temp_373 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0BR",r10
	jmp	_Label_361
! DEFAULT CASE...
_Label_360:
! CALL STATEMENT...
!   _temp_374 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	854,r13		! source line 854
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_361:
! CALL STATEMENT...
!   _temp_375 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_376 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_377 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_215_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_378
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_379
	.word	8
	.word	4
	.word	_Label_380
	.word	-16
	.word	4
	.word	_Label_381
	.word	-20
	.word	4
	.word	_Label_382
	.word	-24
	.word	4
	.word	_Label_383
	.word	-28
	.word	4
	.word	_Label_384
	.word	-32
	.word	4
	.word	_Label_385
	.word	-36
	.word	4
	.word	_Label_386
	.word	-40
	.word	4
	.word	_Label_387
	.word	-44
	.word	4
	.word	_Label_388
	.word	-48
	.word	4
	.word	_Label_389
	.word	-52
	.word	4
	.word	_Label_390
	.word	-56
	.word	4
	.word	_Label_391
	.word	-60
	.word	4
	.word	_Label_392
	.word	-64
	.word	4
	.word	_Label_393
	.word	-68
	.word	4
	.word	_Label_394
	.word	-72
	.word	4
	.word	_Label_395
	.word	-76
	.word	4
	.word	_Label_396
	.word	-9
	.word	1
	.word	_Label_397
	.word	-80
	.word	4
	.word	0
_Label_378:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_379:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_396:
	.byte	'C'
	.ascii	"_temp_352\0"
	.align
_Label_397:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_214_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_214_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3205:
	push	r0
	sub	r1,1,r1
	bne	_Label_3205
	mov	1382,r13		! source line 1382
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_398 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1386,r13		! source line 1386
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1387,r13		! source line 1387
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_214_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_399
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_400
	.word	8
	.word	4
	.word	_Label_401
	.word	-12
	.word	4
	.word	0
_Label_399:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_400:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_3206:
	push	r0
	sub	r1,1,r1
	bne	_Label_3206
	mov	1392,r13		! source line 1392
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_402 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_402  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1398,r13		! source line 1398
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1398,r13		! source line 1398
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_403
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_404
	.word	8
	.word	4
	.word	_Label_405
	.word	-12
	.word	4
	.word	0
_Label_403:
	.ascii	"ProcessFinish\0"
	.align
_Label_404:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_3207:
	push	r0
	sub	r1,1,r1
	bne	_Label_3207
	mov	1936,r13		! source line 1936
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1946,r13		! source line 1946
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1948,r13		! source line 1948
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
! ASSIGNMENT STATEMENT...
	mov	1949,r13		! source line 1949
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1949,r13		! source line 1949
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_406
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_406:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_3208:
	push	r0
	sub	r1,1,r1
	bne	_Label_3208
	mov	1954,r13		! source line 1954
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1963,r13		! source line 1963
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0IF",r10
!   _temp_410 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_411 = _temp_410 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_409 = *_temp_411  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_409 == 0 then goto _Label_408		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_408
!	jmp	_Label_407
_Label_407:
! THEN...
	mov	1966,r13		! source line 1966
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0SE",r10
!   _temp_413 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_414 = _temp_413 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_412 = *_temp_414  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_412) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_408:
! RETURN STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_415
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_416
	.word	-12
	.word	4
	.word	_Label_417
	.word	-16
	.word	4
	.word	_Label_418
	.word	-20
	.word	4
	.word	_Label_419
	.word	-24
	.word	4
	.word	_Label_420
	.word	-28
	.word	4
	.word	_Label_421
	.word	-32
	.word	4
	.word	0
_Label_415:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1979,r13		! source line 1979
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_422
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_422:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3209:
	push	r0
	sub	r1,1,r1
	bne	_Label_3209
	mov	1993,r13		! source line 1993
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1999,r13		! source line 1999
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_423 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_423  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2000,r13		! source line 2000
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2000,r13		! source line 2000
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_424
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_425
	.word	-12
	.word	4
	.word	0
_Label_424:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3210:
	push	r0
	sub	r1,1,r1
	bne	_Label_3210
	mov	2005,r13		! source line 2005
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2011,r13		! source line 2011
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_426 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_426  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2012,r13		! source line 2012
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_427
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_428
	.word	-12
	.word	4
	.word	0
_Label_427:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3211:
	push	r0
	sub	r1,1,r1
	bne	_Label_3211
	mov	2017,r13		! source line 2017
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_429 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_429  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2024,r13		! source line 2024
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2024,r13		! source line 2024
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_430
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_431
	.word	-12
	.word	4
	.word	0
_Label_430:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3212:
	push	r0
	sub	r1,1,r1
	bne	_Label_3212
	mov	2029,r13		! source line 2029
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2035,r13		! source line 2035
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_432 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_432  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2036,r13		! source line 2036
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_433
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_434
	.word	-12
	.word	4
	.word	0
_Label_433:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3213:
	push	r0
	sub	r1,1,r1
	bne	_Label_3213
	mov	2041,r13		! source line 2041
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_435 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_435  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2048,r13		! source line 2048
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_436
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_437
	.word	-12
	.word	4
	.word	0
_Label_436:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3214:
	push	r0
	sub	r1,1,r1
	bne	_Label_3214
	mov	2053,r13		! source line 2053
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2059,r13		! source line 2059
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_438 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_438  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2060,r13		! source line 2060
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2060,r13		! source line 2060
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_439
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_440
	.word	-12
	.word	4
	.word	0
_Label_439:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3215:
	push	r0
	sub	r1,1,r1
	bne	_Label_3215
	mov	2065,r13		! source line 2065
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_441 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_441  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2072,r13		! source line 2072
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_442
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_443
	.word	-12
	.word	4
	.word	0
_Label_442:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_213_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_213_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3216:
	push	r0
	sub	r1,1,r1
	bne	_Label_3216
	mov	2077,r13		! source line 2077
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_444 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_444  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2082,r13		! source line 2082
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2083,r13		! source line 2083
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_445 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_445  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2084,r13		! source line 2084
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_449 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_448 = *_temp_449  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_448 == 0 then goto _Label_447		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_447
!	jmp	_Label_446
_Label_446:
! THEN...
	mov	2088,r13		! source line 2088
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_451 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_450 = *_temp_451  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_450) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_452
_Label_447:
! ELSE...
	mov	2090,r13		! source line 2090
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_453 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_453  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2090,r13		! source line 2090
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_452:
! SEND STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	2098,r13		! source line 2098
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	2098,r13		! source line 2098
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_213_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_454
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_455
	.word	8
	.word	4
	.word	_Label_456
	.word	-12
	.word	4
	.word	_Label_457
	.word	-16
	.word	4
	.word	_Label_458
	.word	-20
	.word	4
	.word	_Label_459
	.word	-24
	.word	4
	.word	_Label_460
	.word	-28
	.word	4
	.word	_Label_461
	.word	-32
	.word	4
	.word	_Label_462
	.word	-36
	.word	4
	.word	0
_Label_454:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_455:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_3217:
	push	r0
	sub	r1,1,r1
	bne	_Label_3217
	mov	2103,r13		! source line 2103
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	2124,r13		! source line 2124
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3218
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_463
_Label_3218:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_463
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_463
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_477,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_477:
	jmp	_Label_469	! 1:	
	jmp	_Label_476	! 2:	
	jmp	_Label_466	! 3:	
	jmp	_Label_465	! 4:	
	jmp	_Label_468	! 5:	
	jmp	_Label_467	! 6:	
	jmp	_Label_470	! 7:	
	jmp	_Label_471	! 8:	
	jmp	_Label_472	! 9:	
	jmp	_Label_473	! 10:	
	jmp	_Label_474	! 11:	
	jmp	_Label_475	! 12:	
! CASE 4...
_Label_465:
! RETURN STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0RE",r10
!   Call the function
	mov	2126,r13		! source line 2126
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_478  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_478  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_466:
! CALL STATEMENT...
!   Call the function
	mov	2128,r13		! source line 2128
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_467:
! RETURN STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2131,r13		! source line 2131
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_479  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_479  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_468:
! RETURN STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2133,r13		! source line 2133
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_480  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_480  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_469:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2135,r13		! source line 2135
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	2136,r13		! source line 2136
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_470:
! RETURN STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2138,r13		! source line 2138
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_481  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_481  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_471:
! RETURN STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2140,r13		! source line 2140
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_482  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_482  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_472:
! RETURN STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	2142,r13		! source line 2142
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_483  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_483  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_473:
! RETURN STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	2144,r13		! source line 2144
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_484  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_484  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_474:
! RETURN STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2146,r13		! source line 2146
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_485  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_485  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_475:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2148,r13		! source line 2148
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_476:
! CALL STATEMENT...
!   Call the function
	mov	2151,r13		! source line 2151
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	2152,r13		! source line 2152
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_463:
! CALL STATEMENT...
!   _temp_486 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_486  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2154,r13		! source line 2154
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2155,r13		! source line 2155
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2156,r13		! source line 2156
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_487 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_487  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2157,r13		! source line 2157
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_464:
! RETURN STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_488
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_489
	.word	8
	.word	4
	.word	_Label_490
	.word	12
	.word	4
	.word	_Label_491
	.word	16
	.word	4
	.word	_Label_492
	.word	20
	.word	4
	.word	_Label_493
	.word	24
	.word	4
	.word	_Label_494
	.word	-12
	.word	4
	.word	_Label_495
	.word	-16
	.word	4
	.word	_Label_496
	.word	-20
	.word	4
	.word	_Label_497
	.word	-24
	.word	4
	.word	_Label_498
	.word	-28
	.word	4
	.word	_Label_499
	.word	-32
	.word	4
	.word	_Label_500
	.word	-36
	.word	4
	.word	_Label_501
	.word	-40
	.word	4
	.word	_Label_502
	.word	-44
	.word	4
	.word	_Label_503
	.word	-48
	.word	4
	.word	0
_Label_488:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_489:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_490:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_491:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_492:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_493:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_480\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_479\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	2164,r13		! source line 2164
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_504
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_505
	.word	8
	.word	4
	.word	0
_Label_504:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_505:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2170,r13		! source line 2170
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_506
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_506:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	2176,r13		! source line 2176
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2176,r13		! source line 2176
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_507
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_507:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	2182,r13		! source line 2182
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_508
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_508:
	.ascii	"Handle_Sys_Fork\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	2189,r13		! source line 2189
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_509
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_510
	.word	8
	.word	4
	.word	0
_Label_509:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_510:
	.byte	'I'
	.ascii	"processID\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	2196,r13		! source line 2196
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_511
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_512
	.word	8
	.word	4
	.word	0
_Label_511:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_512:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	2203,r13		! source line 2203
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_513
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_514
	.word	8
	.word	4
	.word	0
_Label_513:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_514:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	2210,r13		! source line 2210
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_515
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_516
	.word	8
	.word	4
	.word	0
_Label_515:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_516:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	2217,r13		! source line 2217
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2219,r13		! source line 2219
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_517
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_518
	.word	8
	.word	4
	.word	_Label_519
	.word	12
	.word	4
	.word	_Label_520
	.word	16
	.word	4
	.word	0
_Label_517:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_518:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_519:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_520:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	2224,r13		! source line 2224
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2226,r13		! source line 2226
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_521
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_522
	.word	8
	.word	4
	.word	_Label_523
	.word	12
	.word	4
	.word	_Label_524
	.word	16
	.word	4
	.word	0
_Label_521:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_522:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_523:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_524:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	2231,r13		! source line 2231
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_525
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_526
	.word	8
	.word	4
	.word	_Label_527
	.word	12
	.word	4
	.word	0
_Label_525:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_526:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_527:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	2238,r13		! source line 2238
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_528
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_529
	.word	8
	.word	4
	.word	0
_Label_528:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_529:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_212_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_212_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3219:
	push	r0
	sub	r1,1,r1
	bne	_Label_3219
	mov	2830,r13		! source line 2830
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2833,r13		! source line 2833
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2834,r13		! source line 2834
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_530 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_530  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0AS",r10
!   _temp_531 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_531) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_533 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_533) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_532 = *_temp_533  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_531 = _temp_532  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2836,r13		! source line 2836
	mov	"\0\0AS",r10
!   _temp_534 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_534) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_536 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_536) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_535 = *_temp_536  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_534 = _temp_535  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2837,r13		! source line 2837
	mov	"\0\0AS",r10
!   _temp_537 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_537) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_539 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_539) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_538 = *_temp_539  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_537 = _temp_538  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2837,r13		! source line 2837
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_212_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_540
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_541
	.word	8
	.word	4
	.word	_Label_542
	.word	12
	.word	4
	.word	_Label_543
	.word	-16
	.word	4
	.word	_Label_544
	.word	-9
	.word	1
	.word	_Label_545
	.word	-20
	.word	4
	.word	_Label_546
	.word	-24
	.word	4
	.word	_Label_547
	.word	-10
	.word	1
	.word	_Label_548
	.word	-28
	.word	4
	.word	_Label_549
	.word	-32
	.word	4
	.word	_Label_550
	.word	-11
	.word	1
	.word	_Label_551
	.word	-36
	.word	4
	.word	_Label_552
	.word	-12
	.word	1
	.word	_Label_553
	.word	-40
	.word	4
	.word	_Label_554
	.word	-44
	.word	4
	.word	0
_Label_540:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_541:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_542:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_544:
	.byte	'C'
	.ascii	"_temp_538\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_547:
	.byte	'C'
	.ascii	"_temp_535\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_550:
	.byte	'C'
	.ascii	"_temp_532\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_552:
	.byte	'C'
	.ascii	"_temp_530\0"
	.align
_Label_553:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_554:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_211_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_211_printFCB,r1
	push	r1
	mov	3,r1
_Label_3220:
	push	r0
	sub	r1,1,r1
	bne	_Label_3220
	mov	2840,r13		! source line 2840
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_556 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_555 = *_temp_556  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_555  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2841,r13		! source line 2841
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2842,r13		! source line 2842
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2842,r13		! source line 2842
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_211_printFCB:
	.word	_sourceFileName
	.word	_Label_557
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_558
	.word	8
	.word	4
	.word	_Label_559
	.word	-12
	.word	4
	.word	_Label_560
	.word	-16
	.word	4
	.word	0
_Label_557:
	.ascii	"printFCB\0"
	.align
_Label_558:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_210_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_210_printOpen,r1
	push	r1
	mov	4,r1
_Label_3221:
	push	r0
	sub	r1,1,r1
	bne	_Label_3221
	mov	2845,r13		! source line 2845
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_561 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_561  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2846,r13		! source line 2846
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_562 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_562  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2847,r13		! source line 2847
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_563 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_563  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2848,r13		! source line 2848
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2849,r13		! source line 2849
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2849,r13		! source line 2849
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_210_printOpen:
	.word	_sourceFileName
	.word	_Label_564
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_565
	.word	8
	.word	4
	.word	_Label_566
	.word	-12
	.word	4
	.word	_Label_567
	.word	-16
	.word	4
	.word	_Label_568
	.word	-20
	.word	4
	.word	0
_Label_564:
	.ascii	"printOpen\0"
	.align
_Label_565:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_function_209_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_209_InitFirstProcess,r1
	push	r1
	mov	8,r1
_Label_3222:
	push	r0
	sub	r1,1,r1
	bne	_Label_3222
	mov	3123,r13		! source line 3123
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3128,r13		! source line 3128
	mov	"\0\0AS",r10
	mov	3128,r13		! source line 3128
	mov	"\0\0SE",r10
!   _temp_569 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-24]
!   Send message GetANewThread
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=threadpt  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	3129,r13		! source line 3129
	mov	"\0\0AS",r10
!   if intIsZero (threadpt) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_570 = threadpt + 72
	load	[r14+-28],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   _temp_571 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_570 = _temp_571  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3131,r13		! source line 3131
	mov	"\0\0SE",r10
!   _temp_572 = _function_208_StartUserProcess
	set	_function_208_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (threadpt) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_572  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	3131,r13		! source line 3131
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_209_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_573
	.word	0		! total size of parameters
	.word	32		! frame size = 32
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
	.word	0
_Label_573:
	.ascii	"InitFirstProcess\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_578:
	.byte	'P'
	.ascii	"threadpt\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_208_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_208_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_3223:
	push	r0
	sub	r1,1,r1
	bne	_Label_3223
	mov	3136,r13		! source line 3136
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3153,r13		! source line 3153
	mov	"\0\0AS",r10
	mov	3153,r13		! source line 3153
	mov	"\0\0SE",r10
!   _temp_579 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   Send message GetANewProcess
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	3154,r13		! source line 3154
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_580 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_580 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3155,r13		! source line 3155
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_581 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_581 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3156,r13		! source line 3156
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_582 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   addrSpace = _temp_582		(4 bytes)
	load	[r14+-56],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	3158,r13		! source line 3158
	mov	"\0\0AS",r10
	mov	3158,r13		! source line 3158
	mov	"\0\0SE",r10
!   _temp_583 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-52]
!   _temp_584 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_583  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=fileName  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! IF STATEMENT...
	mov	3159,r13		! source line 3159
	mov	"\0\0IF",r10
!   if intIsZero (fileName) then goto _Label_585
	load	[r14+-72],r1
	cmp	r1,r0
	be	_Label_585
	jmp	_Label_586
_Label_585:
! THEN...
	mov	3160,r13		! source line 3160
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_587 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_587  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	3160,r13		! source line 3160
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_586:
! ASSIGNMENT STATEMENT...
	mov	3165,r13		! source line 3165
	mov	"\0\0AS",r10
	mov	3165,r13		! source line 3165
	mov	"\0\0SE",r10
!   if intIsZero (fileName) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	3167,r13		! source line 3167
	mov	"\0\0IF",r10
!   if initPC != -1 then goto _Label_589		(int)
	load	[r14+-80],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_589
!	jmp	_Label_588
_Label_588:
! THEN...
	mov	3168,r13		! source line 3168
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_590 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_590  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	3168,r13		! source line 3168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_589:
! SEND STATEMENT...
	mov	3171,r13		! source line 3171
	mov	"\0\0SE",r10
!   _temp_591 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=fileName  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3174,r13		! source line 3174
	mov	"\0\0AS",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_593 = addrSpace + 4
	load	[r14+-84],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_592 = *_temp_593  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   InitUserStackTop = _temp_592 * 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	3176,r13		! source line 3176
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_594 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_594 [999 ] into _temp_595
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
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
	store	r2,[r14+-20]
!   initSystemStackTop = _temp_595		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	3180,r13		! source line 3180
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	3180,r13		! source line 3180
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! SEND STATEMENT...
	mov	3182,r13		! source line 3182
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message SetToThisPageTable
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3185,r13		! source line 3185
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_596 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_596 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_597 = initSystemStackTop		(4 bytes)
	load	[r14+-92],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=InitUserStackTop  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_597  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	3187,r13		! source line 3187
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	3187,r13		! source line 3187
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_208_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_598
	.word	0		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_599
	.word	-12
	.word	4
	.word	_Label_600
	.word	-16
	.word	4
	.word	_Label_601
	.word	-20
	.word	4
	.word	_Label_602
	.word	-24
	.word	4
	.word	_Label_603
	.word	-28
	.word	4
	.word	_Label_604
	.word	-32
	.word	4
	.word	_Label_605
	.word	-36
	.word	4
	.word	_Label_606
	.word	-40
	.word	4
	.word	_Label_607
	.word	-44
	.word	4
	.word	_Label_608
	.word	-48
	.word	4
	.word	_Label_609
	.word	-52
	.word	4
	.word	_Label_610
	.word	-56
	.word	4
	.word	_Label_611
	.word	-60
	.word	4
	.word	_Label_612
	.word	-64
	.word	4
	.word	_Label_613
	.word	-68
	.word	4
	.word	_Label_614
	.word	-72
	.word	4
	.word	_Label_615
	.word	-76
	.word	4
	.word	_Label_616
	.word	-80
	.word	4
	.word	_Label_617
	.word	-84
	.word	4
	.word	_Label_618
	.word	-88
	.word	4
	.word	_Label_619
	.word	-92
	.word	4
	.word	_Label_620
	.word	-96
	.word	4
	.word	0
_Label_598:
	.ascii	"StartUserProcess\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_614:
	.byte	'P'
	.ascii	"fileName\0"
	.align
_Label_615:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_616:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_617:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_618:
	.byte	'I'
	.ascii	"InitUserStackTop\0"
	.align
_Label_619:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_620:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_621
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_621:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_622
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_622:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_3224:
	push	r0
	sub	r1,1,r1
	bne	_Label_3224
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_624		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_624
!	jmp	_Label_623
_Label_623:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_625 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_625  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_624:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
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
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_627
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_628
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_629
	.word	12
	.word	4
	.word	_Label_630
	.word	-12
	.word	4
	.word	_Label_631
	.word	-16
	.word	4
	.word	0
_Label_627:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_628:
	.ascii	"Pself\0"
	.align
_Label_629:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_3225:
	push	r0
	sub	r1,1,r1
	bne	_Label_3225
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_633		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_633
!	jmp	_Label_632
_Label_632:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_634 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_634  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_633:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
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
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_636		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_636
!	jmp	_Label_635
_Label_635:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_637 = &waitingThreads
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
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_638 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_638 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_639 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
_Label_636:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_640
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_641
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_642
	.word	-12
	.word	4
	.word	_Label_643
	.word	-16
	.word	4
	.word	_Label_644
	.word	-20
	.word	4
	.word	_Label_645
	.word	-24
	.word	4
	.word	_Label_646
	.word	-28
	.word	4
	.word	_Label_647
	.word	-32
	.word	4
	.word	0
_Label_640:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_641:
	.ascii	"Pself\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_646:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_647:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_3226:
	push	r0
	sub	r1,1,r1
	bne	_Label_3226
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_649		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_649
!	jmp	_Label_648
_Label_648:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_650 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_650  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_649:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
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
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_652		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_652
!	jmp	_Label_651
_Label_651:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_653 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_652:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_654
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_655
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_656
	.word	-12
	.word	4
	.word	_Label_657
	.word	-16
	.word	4
	.word	_Label_658
	.word	-20
	.word	4
	.word	0
_Label_654:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_655:
	.ascii	"Pself\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_658:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_659
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_659:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_660
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_660:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_3227:
	push	r0
	sub	r1,1,r1
	bne	_Label_3227
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
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
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_662
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_663
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_664
	.word	-12
	.word	4
	.word	0
_Label_662:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_663:
	.ascii	"Pself\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_3228:
	push	r0
	sub	r1,1,r1
	bne	_Label_3228
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_666		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_666
!	jmp	_Label_665
_Label_665:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_667 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_667  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	304,r13		! source line 304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_666:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_671		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_671
!   _temp_670 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_672
_Label_671:
!   _temp_670 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_672:
!   if _temp_670 then goto _Label_669 else goto _Label_668
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_668
	jmp	_Label_669
_Label_668:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_673
_Label_669:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_674 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_673:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_675
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_676
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_677
	.word	-16
	.word	4
	.word	_Label_678
	.word	-9
	.word	1
	.word	_Label_679
	.word	-20
	.word	4
	.word	_Label_680
	.word	-24
	.word	4
	.word	0
_Label_675:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_676:
	.ascii	"Pself\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_678:
	.byte	'C'
	.ascii	"_temp_670\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_680:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_3229:
	push	r0
	sub	r1,1,r1
	bne	_Label_3229
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_682		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_682
!	jmp	_Label_681
_Label_681:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_683 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_683  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	323,r13		! source line 323
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_682:
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	325,r13		! source line 325
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
	mov	326,r13		! source line 326
	mov	"\0\0SE",r10
!   _temp_684 = &waitingThreads
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
! IF STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_686		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_686
!	jmp	_Label_685
_Label_685:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_687 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_687 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_688 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_689
_Label_686:
! ELSE...
	mov	332,r13		! source line 332
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_689:
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_690
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_691
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_692
	.word	-12
	.word	4
	.word	_Label_693
	.word	-16
	.word	4
	.word	_Label_694
	.word	-20
	.word	4
	.word	_Label_695
	.word	-24
	.word	4
	.word	_Label_696
	.word	-28
	.word	4
	.word	_Label_697
	.word	-32
	.word	4
	.word	0
_Label_690:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_691:
	.ascii	"Pself\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_696:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_697:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_3230:
	push	r0
	sub	r1,1,r1
	bne	_Label_3230
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_700		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_700
!	jmp	_Label_699
_Label_699:
!   _temp_698 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_701
_Label_700:
!   _temp_698 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_701:
!   ReturnResult: _temp_698  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_702
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_703
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_704
	.word	-9
	.word	1
	.word	0
_Label_702:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_703:
	.ascii	"Pself\0"
	.align
_Label_704:
	.byte	'C'
	.ascii	"_temp_698\0"
	.align
! 
! ===============  CLASS MutexHoare  ===============
! 
! Dispatch Table:
! 
_P_Kernel_MutexHoare:
	.word	_Label_705
	jmp	_Method_P_Kernel_MutexHoare_1	! 4:	Init
	jmp	_Method_P_Kernel_MutexHoare_2	! 8:	Lock
	jmp	_Method_P_Kernel_MutexHoare_3	! 12:	Unlock
	jmp	_Method_P_Kernel_MutexHoare_4	! 16:	GiveUpLock
	jmp	_Method_P_Kernel_MutexHoare_5	! 20:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_705:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_706
	.word	_sourceFileName
	.word	152		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_MutexHoare
	.word	_P_System_Object
	.word	0
_Label_706:
	.ascii	"MutexHoare\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_MutexHoare_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_MutexHoare_1,r1
	push	r1
	mov	1,r1
_Label_3231:
	push	r0
	sub	r1,1,r1
	bne	_Label_3231
	mov	365,r13		! source line 365
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	366,r13		! source line 366
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
	mov	366,r13		! source line 366
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_MutexHoare_1:
	.word	_sourceFileName
	.word	_Label_708
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_709
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_710
	.word	-12
	.word	4
	.word	0
_Label_708:
	.ascii	"MutexHoare"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_709:
	.ascii	"Pself\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_MutexHoare_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_MutexHoare_2,r1
	push	r1
	mov	6,r1
_Label_3232:
	push	r0
	sub	r1,1,r1
	bne	_Label_3232
	mov	371,r13		! source line 371
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	374,r13		! source line 374
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_712		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_712
!	jmp	_Label_711
_Label_711:
! THEN...
	mov	375,r13		! source line 375
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_713 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	375,r13		! source line 375
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_712:
! ASSIGNMENT STATEMENT...
	mov	377,r13		! source line 377
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	377,r13		! source line 377
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	378,r13		! source line 378
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_717		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_717
!   _temp_716 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_718
_Label_717:
!   _temp_716 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_718:
!   if _temp_716 then goto _Label_715 else goto _Label_714
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_714
	jmp	_Label_715
_Label_714:
! THEN...
	mov	379,r13		! source line 379
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	379,r13		! source line 379
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_719
_Label_715:
! ELSE...
	mov	381,r13		! source line 381
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0SE",r10
!   _temp_720 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	382,r13		! source line 382
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_719:
! ASSIGNMENT STATEMENT...
	mov	384,r13		! source line 384
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	384,r13		! source line 384
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	384,r13		! source line 384
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_MutexHoare_2:
	.word	_sourceFileName
	.word	_Label_721
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_722
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_723
	.word	-16
	.word	4
	.word	_Label_724
	.word	-9
	.word	1
	.word	_Label_725
	.word	-20
	.word	4
	.word	_Label_726
	.word	-24
	.word	4
	.word	0
_Label_721:
	.ascii	"MutexHoare"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_722:
	.ascii	"Pself\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_724:
	.byte	'C'
	.ascii	"_temp_716\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_726:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_MutexHoare_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_MutexHoare_3,r1
	push	r1
	mov	8,r1
_Label_3233:
	push	r0
	sub	r1,1,r1
	bne	_Label_3233
	mov	389,r13		! source line 389
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_728		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_728
!	jmp	_Label_727
_Label_727:
! THEN...
	mov	394,r13		! source line 394
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_729 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_729  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	394,r13		! source line 394
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_728:
! ASSIGNMENT STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	396,r13		! source line 396
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0AS",r10
	mov	397,r13		! source line 397
	mov	"\0\0SE",r10
!   _temp_730 = &waitingThreads
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
! IF STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_732		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_732
!	jmp	_Label_731
_Label_731:
! THEN...
	mov	399,r13		! source line 399
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_733 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_733 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0SE",r10
!   _temp_734 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
	mov	401,r13		! source line 401
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_735
_Label_732:
! ELSE...
	mov	403,r13		! source line 403
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	403,r13		! source line 403
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_735:
! ASSIGNMENT STATEMENT...
	mov	405,r13		! source line 405
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	405,r13		! source line 405
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	405,r13		! source line 405
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_MutexHoare_3:
	.word	_sourceFileName
	.word	_Label_736
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_737
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_738
	.word	-12
	.word	4
	.word	_Label_739
	.word	-16
	.word	4
	.word	_Label_740
	.word	-20
	.word	4
	.word	_Label_741
	.word	-24
	.word	4
	.word	_Label_742
	.word	-28
	.word	4
	.word	_Label_743
	.word	-32
	.word	4
	.word	0
_Label_736:
	.ascii	"MutexHoare"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_737:
	.ascii	"Pself\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_742:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_743:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD GiveUpLock  ===============
! 
_Method_P_Kernel_MutexHoare_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_MutexHoare_4,r1
	push	r1
	mov	410,r13		! source line 410
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0AS",r10
!   heldBy = th		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_MutexHoare_4:
	.word	_sourceFileName
	.word	_Label_744
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_745
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_746
	.word	12
	.word	4
	.word	0
_Label_744:
	.ascii	"MutexHoare"
	.ascii	"::"
	.ascii	"GiveUpLock\0"
	.align
_Label_745:
	.ascii	"Pself\0"
	.align
_Label_746:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_MutexHoare_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_MutexHoare_5,r1
	push	r1
	mov	1,r1
_Label_3234:
	push	r0
	sub	r1,1,r1
	bne	_Label_3234
	mov	418,r13		! source line 418
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	419,r13		! source line 419
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_749		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_749
!	jmp	_Label_748
_Label_748:
!   _temp_747 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_750
_Label_749:
!   _temp_747 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_750:
!   ReturnResult: _temp_747  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_MutexHoare_5:
	.word	_sourceFileName
	.word	_Label_751
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_752
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_753
	.word	-9
	.word	1
	.word	0
_Label_751:
	.ascii	"MutexHoare"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_752:
	.ascii	"Pself\0"
	.align
_Label_753:
	.byte	'C'
	.ascii	"_temp_747\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_754
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_754:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_755
	.word	_sourceFileName
	.word	167		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_755:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_3235:
	push	r0
	sub	r1,1,r1
	bne	_Label_3235
	mov	459,r13		! source line 459
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
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
	mov	460,r13		! source line 460
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_757
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_758
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_759
	.word	-12
	.word	4
	.word	0
_Label_757:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_758:
	.ascii	"Pself\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_3236:
	push	r0
	sub	r1,1,r1
	bne	_Label_3236
	mov	465,r13		! source line 465
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0IF",r10
	mov	468,r13		! source line 468
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
!   Retrieve Result: targetName=_temp_762  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_762 then goto _Label_761 else goto _Label_760
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_760
	jmp	_Label_761
_Label_760:
! THEN...
	mov	469,r13		! source line 469
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_763 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_763  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	469,r13		! source line 469
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_761:
! ASSIGNMENT STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	471,r13		! source line 471
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	472,r13		! source line 472
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
	mov	473,r13		! source line 473
	mov	"\0\0SE",r10
!   _temp_764 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	474,r13		! source line 474
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	475,r13		! source line 475
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
	mov	476,r13		! source line 476
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	476,r13		! source line 476
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_765
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_766
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_767
	.word	12
	.word	4
	.word	_Label_768
	.word	-16
	.word	4
	.word	_Label_769
	.word	-20
	.word	4
	.word	_Label_770
	.word	-9
	.word	1
	.word	_Label_771
	.word	-24
	.word	4
	.word	0
_Label_765:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_766:
	.ascii	"Pself\0"
	.align
_Label_767:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_770:
	.byte	'C'
	.ascii	"_temp_762\0"
	.align
_Label_771:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_3237:
	push	r0
	sub	r1,1,r1
	bne	_Label_3237
	mov	481,r13		! source line 481
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0IF",r10
	mov	485,r13		! source line 485
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
!   Retrieve Result: targetName=_temp_774  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_774 then goto _Label_773 else goto _Label_772
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_772
	jmp	_Label_773
_Label_772:
! THEN...
	mov	486,r13		! source line 486
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_775 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_775  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	486,r13		! source line 486
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_773:
! ASSIGNMENT STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	488,r13		! source line 488
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0AS",r10
	mov	489,r13		! source line 489
	mov	"\0\0SE",r10
!   _temp_776 = &waitingThreads
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
	mov	490,r13		! source line 490
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_778		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_778
!	jmp	_Label_777
_Label_777:
! THEN...
	mov	491,r13		! source line 491
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_779 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_779 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	492,r13		! source line 492
	mov	"\0\0SE",r10
!   _temp_780 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
_Label_778:
! ASSIGNMENT STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	494,r13		! source line 494
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_781
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_782
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_783
	.word	12
	.word	4
	.word	_Label_784
	.word	-16
	.word	4
	.word	_Label_785
	.word	-20
	.word	4
	.word	_Label_786
	.word	-24
	.word	4
	.word	_Label_787
	.word	-28
	.word	4
	.word	_Label_788
	.word	-9
	.word	1
	.word	_Label_789
	.word	-32
	.word	4
	.word	_Label_790
	.word	-36
	.word	4
	.word	0
_Label_781:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_782:
	.ascii	"Pself\0"
	.align
_Label_783:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_788:
	.byte	'C'
	.ascii	"_temp_774\0"
	.align
_Label_789:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_790:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_3238:
	push	r0
	sub	r1,1,r1
	bne	_Label_3238
	mov	499,r13		! source line 499
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	503,r13		! source line 503
	mov	"\0\0IF",r10
	mov	503,r13		! source line 503
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
!   Retrieve Result: targetName=_temp_793  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_793 then goto _Label_792 else goto _Label_791
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_791
	jmp	_Label_792
_Label_791:
! THEN...
	mov	504,r13		! source line 504
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_794 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_794  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	504,r13		! source line 504
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_792:
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	506,r13		! source line 506
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0WH",r10
_Label_795:
!	jmp	_Label_796
_Label_796:
	mov	507,r13		! source line 507
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0AS",r10
	mov	508,r13		! source line 508
	mov	"\0\0SE",r10
!   _temp_798 = &waitingThreads
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
	mov	509,r13		! source line 509
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_799
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_799
	jmp	_Label_800
_Label_799:
! THEN...
	mov	510,r13		! source line 510
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0BR",r10
	jmp	_Label_797
! END IF...
_Label_800:
! ASSIGNMENT STATEMENT...
	mov	512,r13		! source line 512
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_801 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_801 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	513,r13		! source line 513
	mov	"\0\0SE",r10
!   _temp_802 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
	jmp	_Label_795
_Label_797:
! ASSIGNMENT STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	515,r13		! source line 515
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_803
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_804
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_805
	.word	12
	.word	4
	.word	_Label_806
	.word	-16
	.word	4
	.word	_Label_807
	.word	-20
	.word	4
	.word	_Label_808
	.word	-24
	.word	4
	.word	_Label_809
	.word	-28
	.word	4
	.word	_Label_810
	.word	-9
	.word	1
	.word	_Label_811
	.word	-32
	.word	4
	.word	_Label_812
	.word	-36
	.word	4
	.word	0
_Label_803:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_804:
	.ascii	"Pself\0"
	.align
_Label_805:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_810:
	.byte	'C'
	.ascii	"_temp_793\0"
	.align
_Label_811:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_812:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS ConditionHoare  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ConditionHoare:
	.word	_Label_813
	jmp	_Method_P_Kernel_ConditionHoare_1	! 4:	Init
	jmp	_Method_P_Kernel_ConditionHoare_2	! 8:	Wait
	jmp	_Method_P_Kernel_ConditionHoare_3	! 12:	Signal
	jmp	_Method_P_Kernel_ConditionHoare_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_813:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_814
	.word	_sourceFileName
	.word	180		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_ConditionHoare
	.word	_P_System_Object
	.word	0
_Label_814:
	.ascii	"ConditionHoare\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ConditionHoare_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ConditionHoare_1,r1
	push	r1
	mov	1,r1
_Label_3239:
	push	r0
	sub	r1,1,r1
	bne	_Label_3239
	mov	555,r13		! source line 555
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	556,r13		! source line 556
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
	mov	556,r13		! source line 556
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ConditionHoare_1:
	.word	_sourceFileName
	.word	_Label_816
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_817
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_818
	.word	-12
	.word	4
	.word	0
_Label_816:
	.ascii	"ConditionHoare"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_817:
	.ascii	"Pself\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_ConditionHoare_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ConditionHoare_2,r1
	push	r1
	mov	6,r1
_Label_3240:
	push	r0
	sub	r1,1,r1
	bne	_Label_3240
	mov	561,r13		! source line 561
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	564,r13		! source line 564
	mov	"\0\0IF",r10
	mov	564,r13		! source line 564
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
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=_temp_821  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_821 then goto _Label_820 else goto _Label_819
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_819
	jmp	_Label_820
_Label_819:
! THEN...
	mov	565,r13		! source line 565
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_822 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_822  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	565,r13		! source line 565
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_820:
! ASSIGNMENT STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	567,r13		! source line 567
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	568,r13		! source line 568
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
	mov	569,r13		! source line 569
	mov	"\0\0SE",r10
!   _temp_823 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	570,r13		! source line 570
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	571,r13		! source line 571
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
	mov	572,r13		! source line 572
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	572,r13		! source line 572
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ConditionHoare_2:
	.word	_sourceFileName
	.word	_Label_824
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_825
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_826
	.word	12
	.word	4
	.word	_Label_827
	.word	-16
	.word	4
	.word	_Label_828
	.word	-20
	.word	4
	.word	_Label_829
	.word	-9
	.word	1
	.word	_Label_830
	.word	-24
	.word	4
	.word	0
_Label_824:
	.ascii	"ConditionHoare"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_825:
	.ascii	"Pself\0"
	.align
_Label_826:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_829:
	.byte	'C'
	.ascii	"_temp_821\0"
	.align
_Label_830:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_ConditionHoare_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ConditionHoare_3,r1
	push	r1
	mov	9,r1
_Label_3241:
	push	r0
	sub	r1,1,r1
	bne	_Label_3241
	mov	577,r13		! source line 577
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	581,r13		! source line 581
	mov	"\0\0IF",r10
	mov	581,r13		! source line 581
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
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=_temp_833  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_833 then goto _Label_832 else goto _Label_831
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_831
	jmp	_Label_832
_Label_831:
! THEN...
	mov	582,r13		! source line 582
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_834 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_834  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	582,r13		! source line 582
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_832:
! ASSIGNMENT STATEMENT...
	mov	584,r13		! source line 584
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	584,r13		! source line 584
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	585,r13		! source line 585
	mov	"\0\0AS",r10
	mov	585,r13		! source line 585
	mov	"\0\0SE",r10
!   _temp_835 = &waitingThreads
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
	mov	586,r13		! source line 586
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_837		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_837
!	jmp	_Label_836
_Label_836:
! THEN...
	mov	587,r13		! source line 587
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	587,r13		! source line 587
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_838 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_838 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	588,r13		! source line 588
	mov	"\0\0SE",r10
!   _temp_839 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
! SEND STATEMENT...
	mov	592,r13		! source line 592
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message GiveUpLock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_837:
! ASSIGNMENT STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ConditionHoare_3:
	.word	_sourceFileName
	.word	_Label_840
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_841
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_842
	.word	12
	.word	4
	.word	_Label_843
	.word	-16
	.word	4
	.word	_Label_844
	.word	-20
	.word	4
	.word	_Label_845
	.word	-24
	.word	4
	.word	_Label_846
	.word	-28
	.word	4
	.word	_Label_847
	.word	-9
	.word	1
	.word	_Label_848
	.word	-32
	.word	4
	.word	_Label_849
	.word	-36
	.word	4
	.word	0
_Label_840:
	.ascii	"ConditionHoare"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_841:
	.ascii	"Pself\0"
	.align
_Label_842:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_847:
	.byte	'C'
	.ascii	"_temp_833\0"
	.align
_Label_848:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_849:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_ConditionHoare_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ConditionHoare_4,r1
	push	r1
	mov	9,r1
_Label_3242:
	push	r0
	sub	r1,1,r1
	bne	_Label_3242
	mov	599,r13		! source line 599
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	603,r13		! source line 603
	mov	"\0\0IF",r10
	mov	603,r13		! source line 603
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
!   Retrieve Result: targetName=_temp_852  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_852 then goto _Label_851 else goto _Label_850
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_850
	jmp	_Label_851
_Label_850:
! THEN...
	mov	604,r13		! source line 604
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_853 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_853  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	604,r13		! source line 604
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_851:
! ASSIGNMENT STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	606,r13		! source line 606
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0WH",r10
_Label_854:
!	jmp	_Label_855
_Label_855:
	mov	607,r13		! source line 607
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0AS",r10
	mov	608,r13		! source line 608
	mov	"\0\0SE",r10
!   _temp_857 = &waitingThreads
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
	mov	609,r13		! source line 609
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_858
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_858
	jmp	_Label_859
_Label_858:
! THEN...
	mov	610,r13		! source line 610
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0BR",r10
	jmp	_Label_856
! END IF...
_Label_859:
! ASSIGNMENT STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_860 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_860 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0SE",r10
!   _temp_861 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
	jmp	_Label_854
_Label_856:
! ASSIGNMENT STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ConditionHoare_4:
	.word	_sourceFileName
	.word	_Label_862
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_863
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_864
	.word	12
	.word	4
	.word	_Label_865
	.word	-16
	.word	4
	.word	_Label_866
	.word	-20
	.word	4
	.word	_Label_867
	.word	-24
	.word	4
	.word	_Label_868
	.word	-28
	.word	4
	.word	_Label_869
	.word	-9
	.word	1
	.word	_Label_870
	.word	-32
	.word	4
	.word	_Label_871
	.word	-36
	.word	4
	.word	0
_Label_862:
	.ascii	"ConditionHoare"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_863:
	.ascii	"Pself\0"
	.align
_Label_864:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_869:
	.byte	'C'
	.ascii	"_temp_852\0"
	.align
_Label_870:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_871:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_872
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_872:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_873
	.word	_sourceFileName
	.word	193		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_873:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_3243:
	push	r0
	sub	r1,1,r1
	bne	_Label_3243
	mov	629,r13		! source line 629
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	635,r13		! source line 635
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	637,r13		! source line 637
	mov	"\0\0AS",r10
!   _temp_874 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_874) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_874 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	638,r13		! source line 638
	mov	"\0\0AS",r10
!   _temp_875 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_875 [0 ] into _temp_876
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
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
	store	r2,[r14+-180]
!   Data Move: *_temp_876 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0AS",r10
!   _temp_877 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_877 [999 ] into _temp_878
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
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
	store	r2,[r14+-172]
!   Data Move: *_temp_878 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	640,r13		! source line 640
	mov	"\0\0AS",r10
!   _temp_879 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_879 [999 ] into _temp_880
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
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
	store	r2,[r14+-164]
!   stackTop = _temp_880		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	641,r13		! source line 641
	mov	"\0\0AS",r10
!   _temp_881 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_883 = &_temp_882
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_883 = _temp_883 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_885:
!   Data Move: *_temp_883 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_883 = _temp_883 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_884 = _temp_884 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_884) then goto _Label_885
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_885
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_886 = &_temp_882
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3244
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3244:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_881 = *_temp_886  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3245:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3245
! ASSIGNMENT STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	643,r13		! source line 643
	mov	"\0\0AS",r10
!   _temp_887 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_889 = &_temp_888
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_889 = _temp_889 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_891:
!   Data Move: *_temp_889 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_889 = _temp_889 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_890 = _temp_890 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_890) then goto _Label_891
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_891
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_892 = &_temp_888
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3246
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3246:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_887 = *_temp_892  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3247:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3247
! RETURN STATEMENT...
	mov	643,r13		! source line 643
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_893
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_894
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_895
	.word	12
	.word	4
	.word	_Label_896
	.word	-12
	.word	4
	.word	_Label_897
	.word	-16
	.word	4
	.word	_Label_898
	.word	-20
	.word	4
	.word	_Label_899
	.word	-84
	.word	64
	.word	_Label_900
	.word	-88
	.word	4
	.word	_Label_901
	.word	-92
	.word	4
	.word	_Label_902
	.word	-96
	.word	4
	.word	_Label_903
	.word	-100
	.word	4
	.word	_Label_904
	.word	-156
	.word	56
	.word	_Label_905
	.word	-160
	.word	4
	.word	_Label_906
	.word	-164
	.word	4
	.word	_Label_907
	.word	-168
	.word	4
	.word	_Label_908
	.word	-172
	.word	4
	.word	_Label_909
	.word	-176
	.word	4
	.word	_Label_910
	.word	-180
	.word	4
	.word	_Label_911
	.word	-184
	.word	4
	.word	_Label_912
	.word	-188
	.word	4
	.word	0
_Label_893:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_894:
	.ascii	"Pself\0"
	.align
_Label_895:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_3248:
	push	r0
	sub	r1,1,r1
	bne	_Label_3248
	mov	648,r13		! source line 648
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	661,r13		! source line 661
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	663,r13		! source line 663
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	664,r13		! source line 664
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_913 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_913  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	666,r13		! source line 666
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_915 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_914  sizeInBytes=4
	load	[r14+-16],r1
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
	mov	667,r13		! source line 667
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	667,r13		! source line 667
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_916
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_917
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_918
	.word	12
	.word	4
	.word	_Label_919
	.word	16
	.word	4
	.word	_Label_920
	.word	-12
	.word	4
	.word	_Label_921
	.word	-16
	.word	4
	.word	_Label_922
	.word	-20
	.word	4
	.word	_Label_923
	.word	-24
	.word	4
	.word	_Label_924
	.word	-28
	.word	4
	.word	0
_Label_916:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_917:
	.ascii	"Pself\0"
	.align
_Label_918:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_919:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_923:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_924:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_3249:
	push	r0
	sub	r1,1,r1
	bne	_Label_3249
	mov	672,r13		! source line 672
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	688,r13		! source line 688
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_927 == _P_Kernel_currentThread then goto _Label_926		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_926
!	jmp	_Label_925
_Label_925:
! THEN...
	mov	689,r13		! source line 689
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_928 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_928  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	689,r13		! source line 689
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_926:
! ASSIGNMENT STATEMENT...
	mov	691,r13		! source line 691
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	691,r13		! source line 691
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	695,r13		! source line 695
	mov	"\0\0AS",r10
	mov	695,r13		! source line 695
	mov	"\0\0SE",r10
!   _temp_929 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	696,r13		! source line 696
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_931		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_931
!	jmp	_Label_930
_Label_930:
! THEN...
	mov	700,r13		! source line 700
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_933		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_933
!	jmp	_Label_932
_Label_932:
! THEN...
	mov	701,r13		! source line 701
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_934 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_934  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	701,r13		! source line 701
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_933:
! ASSIGNMENT STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_936 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_935  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	705,r13		! source line 705
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_931:
! ASSIGNMENT STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	707,r13		! source line 707
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_937
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_938
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_939
	.word	-12
	.word	4
	.word	_Label_940
	.word	-16
	.word	4
	.word	_Label_941
	.word	-20
	.word	4
	.word	_Label_942
	.word	-24
	.word	4
	.word	_Label_943
	.word	-28
	.word	4
	.word	_Label_944
	.word	-32
	.word	4
	.word	_Label_945
	.word	-36
	.word	4
	.word	_Label_946
	.word	-40
	.word	4
	.word	_Label_947
	.word	-44
	.word	4
	.word	0
_Label_937:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_938:
	.ascii	"Pself\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_945:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_946:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_947:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_3250:
	push	r0
	sub	r1,1,r1
	bne	_Label_3250
	mov	712,r13		! source line 712
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	724,r13		! source line 724
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_949		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_949
!	jmp	_Label_948
_Label_948:
! THEN...
	mov	725,r13		! source line 725
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_950 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_950  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	725,r13		! source line 725
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_949:
! IF STATEMENT...
	mov	728,r13		! source line 728
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_953 == _P_Kernel_currentThread then goto _Label_952		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_952
!	jmp	_Label_951
_Label_951:
! THEN...
	mov	729,r13		! source line 729
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_954 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_954  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	729,r13		! source line 729
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_952:
! ASSIGNMENT STATEMENT...
	mov	734,r13		! source line 734
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	735,r13		! source line 735
	mov	"\0\0AS",r10
	mov	735,r13		! source line 735
	mov	"\0\0SE",r10
!   _temp_955 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	736,r13		! source line 736
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_956
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_956
	jmp	_Label_957
_Label_956:
! THEN...
	mov	737,r13		! source line 737
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_958 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_958  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	737,r13		! source line 737
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_957:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	739,r13		! source line 739
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	739,r13		! source line 739
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_959
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_960
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_961
	.word	-12
	.word	4
	.word	_Label_962
	.word	-16
	.word	4
	.word	_Label_963
	.word	-20
	.word	4
	.word	_Label_964
	.word	-24
	.word	4
	.word	_Label_965
	.word	-28
	.word	4
	.word	_Label_966
	.word	-32
	.word	4
	.word	0
_Label_959:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_960:
	.ascii	"Pself\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_966:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_3251:
	push	r0
	sub	r1,1,r1
	bne	_Label_3251
	mov	744,r13		! source line 744
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0IF",r10
!   _temp_970 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_970 [0 ] into _temp_971
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
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
	store	r2,[r14+-32]
!   Data Move: _temp_969 = *_temp_971  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_969 == 606348324 then goto _Label_968		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_968
!	jmp	_Label_967
_Label_967:
! THEN...
	mov	751,r13		! source line 751
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_972 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_972  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	751,r13		! source line 751
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_973
_Label_968:
! ELSE...
	mov	752,r13		! source line 752
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0IF",r10
!   _temp_977 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_977 [999 ] into _temp_978
!     make sure index expr is >= 0
	mov	999,r2
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
!   Data Move: _temp_976 = *_temp_978  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_976 == 606348324 then goto _Label_975		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_975
!	jmp	_Label_974
_Label_974:
! THEN...
	mov	753,r13		! source line 753
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_979 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_979  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	753,r13		! source line 753
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_975:
! END IF...
_Label_973:
! RETURN STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_980
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_981
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_982
	.word	-12
	.word	4
	.word	_Label_983
	.word	-16
	.word	4
	.word	_Label_984
	.word	-20
	.word	4
	.word	_Label_985
	.word	-24
	.word	4
	.word	_Label_986
	.word	-28
	.word	4
	.word	_Label_987
	.word	-32
	.word	4
	.word	_Label_988
	.word	-36
	.word	4
	.word	_Label_989
	.word	-40
	.word	4
	.word	0
_Label_980:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_981:
	.ascii	"Pself\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_3252:
	push	r0
	sub	r1,1,r1
	bne	_Label_3252
	mov	759,r13		! source line 759
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	765,r13		! source line 765
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	765,r13		! source line 765
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_990 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_990  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	766,r13		! source line 766
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	767,r13		! source line 767
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_991 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_991  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	768,r13		! source line 768
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_992  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	769,r13		! source line 769
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_993 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_993  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_994 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_994  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	772,r13		! source line 772
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_999 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1000 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_999  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_995:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1000 then goto _Label_998		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_998
_Label_996:
	mov	772,r13		! source line 772
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1001 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1001  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1002 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1002  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	774,r13		! source line 774
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1003 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1003  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	775,r13		! source line 775
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1005 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1005 [i ] into _temp_1006
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
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
	store	r2,[r14+-140]
!   Data Move: _temp_1004 = *_temp_1006  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1004  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1007 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1007  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	777,r13		! source line 777
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1009 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1009 [i ] into _temp_1010
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
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
	store	r2,[r14+-124]
!   Data Move: _temp_1008 = *_temp_1010  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1008  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	778,r13		! source line 778
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1011 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1011  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_997:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_995
! END FOR
_Label_998:
! CALL STATEMENT...
!   _temp_1012 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-116]
!   _temp_1013 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1012  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1013  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	781,r13		! source line 781
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1014 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-108]
!   _temp_1016 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1016 [0 ] into _temp_1017
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
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
	store	r2,[r14+-96]
!   _temp_1015 = _temp_1017		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1014  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1015  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	783,r13		! source line 783
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1020
	cmp	r1,2
	be	_Label_1021
	cmp	r1,3
	be	_Label_1022
	cmp	r1,4
	be	_Label_1023
	cmp	r1,5
	be	_Label_1024
	jmp	_Label_1018
! CASE 1...
_Label_1020:
! CALL STATEMENT...
!   _temp_1025 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1025  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	785,r13		! source line 785
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	786,r13		! source line 786
	mov	"\0\0BR",r10
	jmp	_Label_1019
! CASE 2...
_Label_1021:
! CALL STATEMENT...
!   _temp_1026 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1026  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	788,r13		! source line 788
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0BR",r10
	jmp	_Label_1019
! CASE 3...
_Label_1022:
! CALL STATEMENT...
!   _temp_1027 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1027  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	791,r13		! source line 791
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	792,r13		! source line 792
	mov	"\0\0BR",r10
	jmp	_Label_1019
! CASE 4...
_Label_1023:
! CALL STATEMENT...
!   _temp_1028 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1028  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	794,r13		! source line 794
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0BR",r10
	jmp	_Label_1019
! CASE 5...
_Label_1024:
! CALL STATEMENT...
!   _temp_1029 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1029  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	797,r13		! source line 797
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	798,r13		! source line 798
	mov	"\0\0BR",r10
	jmp	_Label_1019
! DEFAULT CASE...
_Label_1018:
! CALL STATEMENT...
!   _temp_1030 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1030  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	800,r13		! source line 800
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1019:
! CALL STATEMENT...
!   _temp_1031 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1031  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	802,r13		! source line 802
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	803,r13		! source line 803
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	804,r13		! source line 804
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1032 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1032  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	805,r13		! source line 805
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	806,r13		! source line 806
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1037 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1038 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1037  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1033:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1038 then goto _Label_1036		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1036
_Label_1034:
	mov	806,r13		! source line 806
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1039 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1039  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	807,r13		! source line 807
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1040 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1040  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	808,r13		! source line 808
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1041 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1041  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	809,r13		! source line 809
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1043 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1043 [i ] into _temp_1044
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
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
	store	r2,[r14+-32]
!   Data Move: _temp_1042 = *_temp_1044  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1042  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	810,r13		! source line 810
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1045 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1045  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	811,r13		! source line 811
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1047 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1047 [i ] into _temp_1048
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
!   Data Move: _temp_1046 = *_temp_1048  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1046  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	812,r13		! source line 812
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1049 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1049  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	813,r13		! source line 813
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1035:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1033
! END FOR
_Label_1036:
! ASSIGNMENT STATEMENT...
	mov	815,r13		! source line 815
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	815,r13		! source line 815
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	815,r13		! source line 815
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_1050
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1051
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1052
	.word	-12
	.word	4
	.word	_Label_1053
	.word	-16
	.word	4
	.word	_Label_1054
	.word	-20
	.word	4
	.word	_Label_1055
	.word	-24
	.word	4
	.word	_Label_1056
	.word	-28
	.word	4
	.word	_Label_1057
	.word	-32
	.word	4
	.word	_Label_1058
	.word	-36
	.word	4
	.word	_Label_1059
	.word	-40
	.word	4
	.word	_Label_1060
	.word	-44
	.word	4
	.word	_Label_1061
	.word	-48
	.word	4
	.word	_Label_1062
	.word	-52
	.word	4
	.word	_Label_1063
	.word	-56
	.word	4
	.word	_Label_1064
	.word	-60
	.word	4
	.word	_Label_1065
	.word	-64
	.word	4
	.word	_Label_1066
	.word	-68
	.word	4
	.word	_Label_1067
	.word	-72
	.word	4
	.word	_Label_1068
	.word	-76
	.word	4
	.word	_Label_1069
	.word	-80
	.word	4
	.word	_Label_1070
	.word	-84
	.word	4
	.word	_Label_1071
	.word	-88
	.word	4
	.word	_Label_1072
	.word	-92
	.word	4
	.word	_Label_1073
	.word	-96
	.word	4
	.word	_Label_1074
	.word	-100
	.word	4
	.word	_Label_1075
	.word	-104
	.word	4
	.word	_Label_1076
	.word	-108
	.word	4
	.word	_Label_1077
	.word	-112
	.word	4
	.word	_Label_1078
	.word	-116
	.word	4
	.word	_Label_1079
	.word	-120
	.word	4
	.word	_Label_1080
	.word	-124
	.word	4
	.word	_Label_1081
	.word	-128
	.word	4
	.word	_Label_1082
	.word	-132
	.word	4
	.word	_Label_1083
	.word	-136
	.word	4
	.word	_Label_1084
	.word	-140
	.word	4
	.word	_Label_1085
	.word	-144
	.word	4
	.word	_Label_1086
	.word	-148
	.word	4
	.word	_Label_1087
	.word	-152
	.word	4
	.word	_Label_1088
	.word	-156
	.word	4
	.word	_Label_1089
	.word	-160
	.word	4
	.word	_Label_1090
	.word	-164
	.word	4
	.word	_Label_1091
	.word	-168
	.word	4
	.word	_Label_1092
	.word	-172
	.word	4
	.word	_Label_1093
	.word	-176
	.word	4
	.word	_Label_1094
	.word	-180
	.word	4
	.word	_Label_1095
	.word	-184
	.word	4
	.word	_Label_1096
	.word	-188
	.word	4
	.word	_Label_1097
	.word	-192
	.word	4
	.word	_Label_1098
	.word	-196
	.word	4
	.word	0
_Label_1050:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1051:
	.ascii	"Pself\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1097:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1098:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1099
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1099:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1100
	.word	_sourceFileName
	.word	220		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1100:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11504,r1
_Label_3253:
	push	r0
	sub	r1,1,r1
	bne	_Label_3253
	mov	876,r13		! source line 876
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	885,r13		! source line 885
	mov	"\0\0AS",r10
!   _temp_1101 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1103 = &_temp_1102
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-4364]
!   _temp_1103 = _temp_1103 + 4
	load	[r14+-4364],r1
	add	r1,4,r1
	store	r1,[r14+-4364]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1105 = zeros  (sizeInBytes=4164)
	add	r14,-4356,r4
	mov	1041,r3
_Label_3254:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3254
!   _temp_1105 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4356]
	mov	10,r1
	store	r1,[r14+-4360]
_Label_1107:
!   Data Move: *_temp_1103 = _temp_1105  (sizeInBytes=4164)
	add	r14,-4356,r5
	load	[r14+-4364],r4
	mov	1041,r3
_Label_3255:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3255
!   _temp_1103 = _temp_1103 + 4164
	load	[r14+-4364],r1
	add	r1,4164,r1
	store	r1,[r14+-4364]
!   _temp_1104 = _temp_1104 + -1
	load	[r14+-4360],r1
	add	r1,-1,r1
	store	r1,[r14+-4360]
!   if intNotZero (_temp_1104) then goto _Label_1107
	load	[r14+-4360],r1
	cmp	r1,r0
	bne	_Label_1107
!   Initialize the array size...
	mov	10,r1
	set	-46008,r2
	store	r1,[r14+r2]
!   _temp_1108 = &_temp_1102
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-188]
!   make sure array has size 10
	set	-46012,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3256
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3256:
!   make sure array has size 10
	load	[r14+-188],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1101 = *_temp_1108  (sizeInBytes=41644)
	load	[r14+-188],r5
	set	-46012,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3257:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3257
! ASSIGNMENT STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	892,r13		! source line 892
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41676,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41676,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	894,r13		! source line 894
	mov	"\0\0SE",r10
!   _temp_1112 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-172]
!   Send message Init
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0SE",r10
!   _temp_1113 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-168]
!   Send message Init
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0SE",r10
!   _temp_1114 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-164]
!   _temp_1115 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_1115 [0 ] into _temp_1116
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_1114  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0SE",r10
!   _temp_1117 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-152]
!   _temp_1118 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Move address of _temp_1118 [1 ] into _temp_1119
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_1117  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0SE",r10
!   _temp_1120 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-140]
!   _temp_1121 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_1121 [2 ] into _temp_1122
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_1120  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_1123 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-128]
!   _temp_1124 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-124]
!   Move address of _temp_1124 [3 ] into _temp_1125
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_1123  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0SE",r10
!   _temp_1126 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-116]
!   _temp_1127 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_1127 [4 ] into _temp_1128
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_1126  sizeInBytes=4
	load	[r14+-116],r1
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
	mov	902,r13		! source line 902
	mov	"\0\0SE",r10
!   _temp_1129 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-104]
!   _temp_1130 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Move address of _temp_1130 [5 ] into _temp_1131
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_1129  sizeInBytes=4
	load	[r14+-104],r1
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
	mov	903,r13		! source line 903
	mov	"\0\0SE",r10
!   _temp_1132 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-92]
!   _temp_1133 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Move address of _temp_1133 [6 ] into _temp_1134
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_1132  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0SE",r10
!   _temp_1135 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-80]
!   _temp_1136 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1136 [7 ] into _temp_1137
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_1135  sizeInBytes=4
	load	[r14+-80],r1
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
	mov	905,r13		! source line 905
	mov	"\0\0SE",r10
!   _temp_1138 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-68]
!   _temp_1139 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Move address of _temp_1139 [8 ] into _temp_1140
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_1138  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_1141 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-56]
!   _temp_1142 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1142 [9 ] into _temp_1143
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1141  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1148 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1149 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1148  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46016,r2
	store	r1,[r14+r2]
_Label_1144:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1149 then goto _Label_1147		
	set	-46016,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1147
_Label_1145:
	mov	909,r13		! source line 909
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	911,r13		! source line 911
	mov	"\0\0AS",r10
!   _temp_1150 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1150 [i ] into _temp_1151
!     make sure index expr is >= 0
	set	-46016,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1152 = _temp_1151 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1152 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0SE",r10
!   _temp_1154 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1154 [i ] into _temp_1155
!     make sure index expr is >= 0
	set	-46016,r2
	load	[r14+r2],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1153 = _temp_1155		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1156 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1153  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1146:
!   i = i + 1
	set	-46016,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46016,r2
	store	r1,[r14+r2]
	jmp	_Label_1144
! END FOR
_Label_1147:
! RETURN STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0RE",r10
	set	46020,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1157
	.word	4		! total size of parameters
	.word	46016		! frame size = 46016
	.word	_Label_1158
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1159
	.word	-12
	.word	4
	.word	_Label_1160
	.word	-16
	.word	4
	.word	_Label_1161
	.word	-20
	.word	4
	.word	_Label_1162
	.word	-24
	.word	4
	.word	_Label_1163
	.word	-28
	.word	4
	.word	_Label_1164
	.word	-32
	.word	4
	.word	_Label_1165
	.word	-36
	.word	4
	.word	_Label_1166
	.word	-40
	.word	4
	.word	_Label_1167
	.word	-44
	.word	4
	.word	_Label_1168
	.word	-48
	.word	4
	.word	_Label_1169
	.word	-52
	.word	4
	.word	_Label_1170
	.word	-56
	.word	4
	.word	_Label_1171
	.word	-60
	.word	4
	.word	_Label_1172
	.word	-64
	.word	4
	.word	_Label_1173
	.word	-68
	.word	4
	.word	_Label_1174
	.word	-72
	.word	4
	.word	_Label_1175
	.word	-76
	.word	4
	.word	_Label_1176
	.word	-80
	.word	4
	.word	_Label_1177
	.word	-84
	.word	4
	.word	_Label_1178
	.word	-88
	.word	4
	.word	_Label_1179
	.word	-92
	.word	4
	.word	_Label_1180
	.word	-96
	.word	4
	.word	_Label_1181
	.word	-100
	.word	4
	.word	_Label_1182
	.word	-104
	.word	4
	.word	_Label_1183
	.word	-108
	.word	4
	.word	_Label_1184
	.word	-112
	.word	4
	.word	_Label_1185
	.word	-116
	.word	4
	.word	_Label_1186
	.word	-120
	.word	4
	.word	_Label_1187
	.word	-124
	.word	4
	.word	_Label_1188
	.word	-128
	.word	4
	.word	_Label_1189
	.word	-132
	.word	4
	.word	_Label_1190
	.word	-136
	.word	4
	.word	_Label_1191
	.word	-140
	.word	4
	.word	_Label_1192
	.word	-144
	.word	4
	.word	_Label_1193
	.word	-148
	.word	4
	.word	_Label_1194
	.word	-152
	.word	4
	.word	_Label_1195
	.word	-156
	.word	4
	.word	_Label_1196
	.word	-160
	.word	4
	.word	_Label_1197
	.word	-164
	.word	4
	.word	_Label_1198
	.word	-168
	.word	4
	.word	_Label_1199
	.word	-172
	.word	4
	.word	_Label_1200
	.word	-176
	.word	4
	.word	_Label_1201
	.word	-180
	.word	4
	.word	_Label_1202
	.word	-184
	.word	4
	.word	_Label_1203
	.word	-188
	.word	4
	.word	_Label_1204
	.word	-192
	.word	4
	.word	_Label_1205
	.word	-4356
	.word	4164
	.word	_Label_1206
	.word	-4360
	.word	4
	.word	_Label_1207
	.word	-4364
	.word	4
	.word	_Label_1208
	.word	-46008
	.word	41644
	.word	_Label_1209
	.word	-46012
	.word	4
	.word	_Label_1210
	.word	-46016
	.word	4
	.word	0
_Label_1157:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1158:
	.ascii	"Pself\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1210:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_3258:
	push	r0
	sub	r1,1,r1
	bne	_Label_3258
	mov	920,r13		! source line 920
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1211 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1211  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1216 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1217 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1216  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1212:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1217 then goto _Label_1215		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1215
_Label_1213:
	mov	929,r13		! source line 929
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1218 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1218  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1219 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1219  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	932,r13		! source line 932
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1221 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1221 [i ] into _temp_1222
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1220 = _temp_1222		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1220  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	933,r13		! source line 933
	mov	"\0\0CA",r10
	call	_function_215_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1214:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1212
! END FOR
_Label_1215:
! CALL STATEMENT...
!   _temp_1223 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1223  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	935,r13		! source line 935
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0SE",r10
!   _temp_1224 = _function_214_PrintObjectAddr
	set	_function_214_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1225 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1224  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	937,r13		! source line 937
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	938,r13		! source line 938
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1226
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1227
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1228
	.word	-12
	.word	4
	.word	_Label_1229
	.word	-16
	.word	4
	.word	_Label_1230
	.word	-20
	.word	4
	.word	_Label_1231
	.word	-24
	.word	4
	.word	_Label_1232
	.word	-28
	.word	4
	.word	_Label_1233
	.word	-32
	.word	4
	.word	_Label_1234
	.word	-36
	.word	4
	.word	_Label_1235
	.word	-40
	.word	4
	.word	_Label_1236
	.word	-44
	.word	4
	.word	_Label_1237
	.word	-48
	.word	4
	.word	_Label_1238
	.word	-52
	.word	4
	.word	_Label_1239
	.word	-56
	.word	4
	.word	_Label_1240
	.word	-60
	.word	4
	.word	0
_Label_1226:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1227:
	.ascii	"Pself\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1239:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1240:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_3259:
	push	r0
	sub	r1,1,r1
	bne	_Label_3259
	mov	943,r13		! source line 943
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0SE",r10
!   _temp_1241 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0WH",r10
_Label_1242:
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_1245 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1243 else goto _Label_1244
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1244
	jmp	_Label_1243
_Label_1243:
	mov	958,r13		! source line 958
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0SE",r10
!   _temp_1246 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1247 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1246  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1242
_Label_1244:
! ASSIGNMENT STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0AS",r10
	mov	965,r13		! source line 965
	mov	"\0\0SE",r10
!   _temp_1248 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=threadpt  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	966,r13		! source line 966
	mov	"\0\0AS",r10
!   if intIsZero (threadpt) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1249 = threadpt + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1249 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	969,r13		! source line 969
	mov	"\0\0SE",r10
!   _temp_1250 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	970,r13		! source line 970
	mov	"\0\0RE",r10
!   ReturnResult: threadpt  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1251
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1252
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1253
	.word	-12
	.word	4
	.word	_Label_1254
	.word	-16
	.word	4
	.word	_Label_1255
	.word	-20
	.word	4
	.word	_Label_1256
	.word	-24
	.word	4
	.word	_Label_1257
	.word	-28
	.word	4
	.word	_Label_1258
	.word	-32
	.word	4
	.word	_Label_1259
	.word	-36
	.word	4
	.word	_Label_1260
	.word	-40
	.word	4
	.word	0
_Label_1251:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1252:
	.ascii	"Pself\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1260:
	.byte	'P'
	.ascii	"threadpt\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_3260:
	push	r0
	sub	r1,1,r1
	bne	_Label_3260
	mov	976,r13		! source line 976
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0SE",r10
!   _temp_1261 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1262 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1262 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0SE",r10
!   _temp_1263 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0SE",r10
!   _temp_1264 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1265 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1264  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	994,r13		! source line 994
	mov	"\0\0SE",r10
!   _temp_1266 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	994,r13		! source line 994
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1267
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1268
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1269
	.word	12
	.word	4
	.word	_Label_1270
	.word	-12
	.word	4
	.word	_Label_1271
	.word	-16
	.word	4
	.word	_Label_1272
	.word	-20
	.word	4
	.word	_Label_1273
	.word	-24
	.word	4
	.word	_Label_1274
	.word	-28
	.word	4
	.word	_Label_1275
	.word	-32
	.word	4
	.word	0
_Label_1267:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1268:
	.ascii	"Pself\0"
	.align
_Label_1269:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
! 
! ===============  CLASS ThreadManagerHoare  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManagerHoare:
	.word	_Label_1276
	jmp	_Method_P_Kernel_ThreadManagerHoare_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManagerHoare_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManagerHoare_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManagerHoare_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1276:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1277
	.word	_sourceFileName
	.word	239		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManagerHoare
	.word	_P_System_Object
	.word	0
_Label_1277:
	.ascii	"ThreadManagerHoare\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManagerHoare_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManagerHoare_1,r1
	push	r1
	mov	11504,r1
_Label_3261:
	push	r0
	sub	r1,1,r1
	bne	_Label_3261
	mov	1010,r13		! source line 1010
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1020,r13		! source line 1020
	mov	"\0\0AS",r10
!   _temp_1278 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1280 = &_temp_1279
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-4364]
!   _temp_1280 = _temp_1280 + 4
	load	[r14+-4364],r1
	add	r1,4,r1
	store	r1,[r14+-4364]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1282 = zeros  (sizeInBytes=4164)
	add	r14,-4356,r4
	mov	1041,r3
_Label_3262:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3262
!   _temp_1282 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4356]
	mov	10,r1
	store	r1,[r14+-4360]
_Label_1284:
!   Data Move: *_temp_1280 = _temp_1282  (sizeInBytes=4164)
	add	r14,-4356,r5
	load	[r14+-4364],r4
	mov	1041,r3
_Label_3263:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3263
!   _temp_1280 = _temp_1280 + 4164
	load	[r14+-4364],r1
	add	r1,4164,r1
	store	r1,[r14+-4364]
!   _temp_1281 = _temp_1281 + -1
	load	[r14+-4360],r1
	add	r1,-1,r1
	store	r1,[r14+-4360]
!   if intNotZero (_temp_1281) then goto _Label_1284
	load	[r14+-4360],r1
	cmp	r1,r0
	bne	_Label_1284
!   Initialize the array size...
	mov	10,r1
	set	-46008,r2
	store	r1,[r14+r2]
!   _temp_1285 = &_temp_1279
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-188]
!   make sure array has size 10
	set	-46012,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3264
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3264:
!   make sure array has size 10
	load	[r14+-188],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1278 = *_temp_1285  (sizeInBytes=41644)
	load	[r14+-188],r5
	set	-46012,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3265:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3265
! ASSIGNMENT STATEMENT...
	mov	1021,r13		! source line 1021
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_ConditionHoare
	set	_P_Kernel_ConditionHoare,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	1025,r13		! source line 1025
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41676,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_MutexHoare
	set	_P_Kernel_MutexHoare,r1
	load	[r14+8],r11
	set	41676,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	1027,r13		! source line 1027
	mov	"\0\0SE",r10
!   _temp_1289 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-172]
!   Send message Init
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1028,r13		! source line 1028
	mov	"\0\0SE",r10
!   _temp_1290 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-168]
!   Send message Init
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0SE",r10
!   _temp_1291 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-164]
!   _temp_1292 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_1292 [0 ] into _temp_1293
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_1291  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1031,r13		! source line 1031
	mov	"\0\0SE",r10
!   _temp_1294 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-152]
!   _temp_1295 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Move address of _temp_1295 [1 ] into _temp_1296
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_1294  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0SE",r10
!   _temp_1297 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-140]
!   _temp_1298 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_1298 [2 ] into _temp_1299
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_1297  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0SE",r10
!   _temp_1300 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-128]
!   _temp_1301 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-124]
!   Move address of _temp_1301 [3 ] into _temp_1302
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_1300  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1034,r13		! source line 1034
	mov	"\0\0SE",r10
!   _temp_1303 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-116]
!   _temp_1304 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_1304 [4 ] into _temp_1305
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_1303  sizeInBytes=4
	load	[r14+-116],r1
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
	mov	1035,r13		! source line 1035
	mov	"\0\0SE",r10
!   _temp_1306 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-104]
!   _temp_1307 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Move address of _temp_1307 [5 ] into _temp_1308
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_1306  sizeInBytes=4
	load	[r14+-104],r1
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
	mov	1036,r13		! source line 1036
	mov	"\0\0SE",r10
!   _temp_1309 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-92]
!   _temp_1310 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Move address of _temp_1310 [6 ] into _temp_1311
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_1309  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0SE",r10
!   _temp_1312 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-80]
!   _temp_1313 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1313 [7 ] into _temp_1314
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_1312  sizeInBytes=4
	load	[r14+-80],r1
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
	mov	1038,r13		! source line 1038
	mov	"\0\0SE",r10
!   _temp_1315 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-68]
!   _temp_1316 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Move address of _temp_1316 [8 ] into _temp_1317
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_1315  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_1318 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-56]
!   _temp_1319 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1319 [9 ] into _temp_1320
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1318  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1041,r13		! source line 1041
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1325 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1326 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1325  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46016,r2
	store	r1,[r14+r2]
_Label_1321:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1326 then goto _Label_1324		
	set	-46016,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1324
_Label_1322:
	mov	1041,r13		! source line 1041
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1044,r13		! source line 1044
	mov	"\0\0AS",r10
!   _temp_1327 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1327 [i ] into _temp_1328
!     make sure index expr is >= 0
	set	-46016,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1329 = _temp_1328 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1329 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0SE",r10
!   _temp_1331 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1331 [i ] into _temp_1332
!     make sure index expr is >= 0
	set	-46016,r2
	load	[r14+r2],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1330 = _temp_1332		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1333 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1330  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1323:
!   i = i + 1
	set	-46016,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46016,r2
	store	r1,[r14+r2]
	jmp	_Label_1321
! END FOR
_Label_1324:
! RETURN STATEMENT...
	mov	1041,r13		! source line 1041
	mov	"\0\0RE",r10
	set	46020,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManagerHoare_1:
	.word	_sourceFileName
	.word	_Label_1334
	.word	4		! total size of parameters
	.word	46016		! frame size = 46016
	.word	_Label_1335
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1336
	.word	-12
	.word	4
	.word	_Label_1337
	.word	-16
	.word	4
	.word	_Label_1338
	.word	-20
	.word	4
	.word	_Label_1339
	.word	-24
	.word	4
	.word	_Label_1340
	.word	-28
	.word	4
	.word	_Label_1341
	.word	-32
	.word	4
	.word	_Label_1342
	.word	-36
	.word	4
	.word	_Label_1343
	.word	-40
	.word	4
	.word	_Label_1344
	.word	-44
	.word	4
	.word	_Label_1345
	.word	-48
	.word	4
	.word	_Label_1346
	.word	-52
	.word	4
	.word	_Label_1347
	.word	-56
	.word	4
	.word	_Label_1348
	.word	-60
	.word	4
	.word	_Label_1349
	.word	-64
	.word	4
	.word	_Label_1350
	.word	-68
	.word	4
	.word	_Label_1351
	.word	-72
	.word	4
	.word	_Label_1352
	.word	-76
	.word	4
	.word	_Label_1353
	.word	-80
	.word	4
	.word	_Label_1354
	.word	-84
	.word	4
	.word	_Label_1355
	.word	-88
	.word	4
	.word	_Label_1356
	.word	-92
	.word	4
	.word	_Label_1357
	.word	-96
	.word	4
	.word	_Label_1358
	.word	-100
	.word	4
	.word	_Label_1359
	.word	-104
	.word	4
	.word	_Label_1360
	.word	-108
	.word	4
	.word	_Label_1361
	.word	-112
	.word	4
	.word	_Label_1362
	.word	-116
	.word	4
	.word	_Label_1363
	.word	-120
	.word	4
	.word	_Label_1364
	.word	-124
	.word	4
	.word	_Label_1365
	.word	-128
	.word	4
	.word	_Label_1366
	.word	-132
	.word	4
	.word	_Label_1367
	.word	-136
	.word	4
	.word	_Label_1368
	.word	-140
	.word	4
	.word	_Label_1369
	.word	-144
	.word	4
	.word	_Label_1370
	.word	-148
	.word	4
	.word	_Label_1371
	.word	-152
	.word	4
	.word	_Label_1372
	.word	-156
	.word	4
	.word	_Label_1373
	.word	-160
	.word	4
	.word	_Label_1374
	.word	-164
	.word	4
	.word	_Label_1375
	.word	-168
	.word	4
	.word	_Label_1376
	.word	-172
	.word	4
	.word	_Label_1377
	.word	-176
	.word	4
	.word	_Label_1378
	.word	-180
	.word	4
	.word	_Label_1379
	.word	-184
	.word	4
	.word	_Label_1380
	.word	-188
	.word	4
	.word	_Label_1381
	.word	-192
	.word	4
	.word	_Label_1382
	.word	-4356
	.word	4164
	.word	_Label_1383
	.word	-4360
	.word	4
	.word	_Label_1384
	.word	-4364
	.word	4
	.word	_Label_1385
	.word	-46008
	.word	41644
	.word	_Label_1386
	.word	-46012
	.word	4
	.word	_Label_1387
	.word	-46016
	.word	4
	.word	0
_Label_1334:
	.ascii	"ThreadManagerHoare"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1335:
	.ascii	"Pself\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1387:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManagerHoare_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManagerHoare_2,r1
	push	r1
	mov	15,r1
_Label_3266:
	push	r0
	sub	r1,1,r1
	bne	_Label_3266
	mov	1053,r13		! source line 1053
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1060,r13		! source line 1060
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1388 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1388  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1061,r13		! source line 1061
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1062,r13		! source line 1062
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1393 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1394 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1393  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1389:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1394 then goto _Label_1392		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1392
_Label_1390:
	mov	1062,r13		! source line 1062
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1395 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1395  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1063,r13		! source line 1063
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1064,r13		! source line 1064
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1396 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1396  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1065,r13		! source line 1065
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1398 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1398 [i ] into _temp_1399
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1397 = _temp_1399		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1397  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1066,r13		! source line 1066
	mov	"\0\0CA",r10
	call	_function_215_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1391:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1389
! END FOR
_Label_1392:
! CALL STATEMENT...
!   _temp_1400 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1400  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1068,r13		! source line 1068
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1069,r13		! source line 1069
	mov	"\0\0SE",r10
!   _temp_1401 = _function_214_PrintObjectAddr
	set	_function_214_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1402 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1401  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1070,r13		! source line 1070
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1071,r13		! source line 1071
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1071,r13		! source line 1071
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	1071,r13		! source line 1071
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManagerHoare_2:
	.word	_sourceFileName
	.word	_Label_1403
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1404
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1405
	.word	-12
	.word	4
	.word	_Label_1406
	.word	-16
	.word	4
	.word	_Label_1407
	.word	-20
	.word	4
	.word	_Label_1408
	.word	-24
	.word	4
	.word	_Label_1409
	.word	-28
	.word	4
	.word	_Label_1410
	.word	-32
	.word	4
	.word	_Label_1411
	.word	-36
	.word	4
	.word	_Label_1412
	.word	-40
	.word	4
	.word	_Label_1413
	.word	-44
	.word	4
	.word	_Label_1414
	.word	-48
	.word	4
	.word	_Label_1415
	.word	-52
	.word	4
	.word	_Label_1416
	.word	-56
	.word	4
	.word	_Label_1417
	.word	-60
	.word	4
	.word	0
_Label_1403:
	.ascii	"ThreadManagerHoare"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1404:
	.ascii	"Pself\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1416:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1417:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManagerHoare_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManagerHoare_3,r1
	push	r1
	mov	10,r1
_Label_3267:
	push	r0
	sub	r1,1,r1
	bne	_Label_3267
	mov	1076,r13		! source line 1076
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1087,r13		! source line 1087
	mov	"\0\0SE",r10
!   _temp_1418 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0WH",r10
_Label_1419:
	mov	1093,r13		! source line 1093
	mov	"\0\0SE",r10
!   _temp_1422 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1420 else goto _Label_1421
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1421
	jmp	_Label_1420
_Label_1420:
	mov	1092,r13		! source line 1092
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1094,r13		! source line 1094
	mov	"\0\0SE",r10
!   _temp_1423 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1424 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1423  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1419
_Label_1421:
! ASSIGNMENT STATEMENT...
	mov	1099,r13		! source line 1099
	mov	"\0\0AS",r10
	mov	1099,r13		! source line 1099
	mov	"\0\0SE",r10
!   _temp_1425 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=threadpt  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1100,r13		! source line 1100
	mov	"\0\0AS",r10
!   if intIsZero (threadpt) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1426 = threadpt + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1426 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0SE",r10
!   _temp_1427 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	1104,r13		! source line 1104
	mov	"\0\0RE",r10
!   ReturnResult: threadpt  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManagerHoare_3:
	.word	_sourceFileName
	.word	_Label_1428
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1429
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1430
	.word	-12
	.word	4
	.word	_Label_1431
	.word	-16
	.word	4
	.word	_Label_1432
	.word	-20
	.word	4
	.word	_Label_1433
	.word	-24
	.word	4
	.word	_Label_1434
	.word	-28
	.word	4
	.word	_Label_1435
	.word	-32
	.word	4
	.word	_Label_1436
	.word	-36
	.word	4
	.word	_Label_1437
	.word	-40
	.word	4
	.word	0
_Label_1428:
	.ascii	"ThreadManagerHoare"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1429:
	.ascii	"Pself\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1437:
	.byte	'P'
	.ascii	"threadpt\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManagerHoare_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManagerHoare_4,r1
	push	r1
	mov	8,r1
_Label_3268:
	push	r0
	sub	r1,1,r1
	bne	_Label_3268
	mov	1110,r13		! source line 1110
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0SE",r10
!   _temp_1438 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1120,r13		! source line 1120
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1439 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1439 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1123,r13		! source line 1123
	mov	"\0\0SE",r10
!   _temp_1440 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1125,r13		! source line 1125
	mov	"\0\0SE",r10
!   _temp_1441 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1442 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1441  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0SE",r10
!   _temp_1443 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	1128,r13		! source line 1128
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManagerHoare_4:
	.word	_sourceFileName
	.word	_Label_1444
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1445
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1446
	.word	12
	.word	4
	.word	_Label_1447
	.word	-12
	.word	4
	.word	_Label_1448
	.word	-16
	.word	4
	.word	_Label_1449
	.word	-20
	.word	4
	.word	_Label_1450
	.word	-24
	.word	4
	.word	_Label_1451
	.word	-28
	.word	4
	.word	_Label_1452
	.word	-32
	.word	4
	.word	0
_Label_1444:
	.ascii	"ThreadManagerHoare"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1445:
	.ascii	"Pself\0"
	.align
_Label_1446:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1453
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1453:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1454
	.word	_sourceFileName
	.word	261		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1454:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_3269:
	push	r0
	sub	r1,1,r1
	bne	_Label_3269
	mov	1142,r13		! source line 1142
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1143,r13		! source line 1143
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3270:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3270
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	1146,r13		! source line 1146
	mov	"\0\0SE",r10
!   _temp_1456 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	1146,r13		! source line 1146
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1457
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1458
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1459
	.word	-12
	.word	4
	.word	_Label_1460
	.word	-16
	.word	4
	.word	0
_Label_1457:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1458:
	.ascii	"Pself\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_3271:
	push	r0
	sub	r1,1,r1
	bne	_Label_3271
	mov	1156,r13		! source line 1156
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1461) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1162,r13		! source line 1162
	mov	"\0\0SE",r10
!   _temp_1462 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1463 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1463  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1163,r13		! source line 1163
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1164,r13		! source line 1164
	mov	"\0\0CA",r10
	call	_function_215_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	1174,r13		! source line 1174
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1174,r13		! source line 1174
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1464
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1465
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1466
	.word	-12
	.word	4
	.word	_Label_1467
	.word	-16
	.word	4
	.word	_Label_1468
	.word	-20
	.word	4
	.word	0
_Label_1464:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1465:
	.ascii	"Pself\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_3272:
	push	r0
	sub	r1,1,r1
	bne	_Label_3272
	mov	1179,r13		! source line 1179
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1469 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1469  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1183,r13		! source line 1183
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1470  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1184,r13		! source line 1184
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1471 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1471  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1185,r13		! source line 1185
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1186,r13		! source line 1186
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1472 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1472  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1187,r13		! source line 1187
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1474		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1474
!	jmp	_Label_1473
_Label_1473:
! THEN...
	mov	1189,r13		! source line 1189
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1475 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1475  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1189,r13		! source line 1189
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1476
_Label_1474:
! ELSE...
	mov	1190,r13		! source line 1190
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1190,r13		! source line 1190
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1478		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1478
!	jmp	_Label_1477
_Label_1477:
! THEN...
	mov	1191,r13		! source line 1191
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1479 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1479  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1191,r13		! source line 1191
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1480
_Label_1478:
! ELSE...
	mov	1192,r13		! source line 1192
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1192,r13		! source line 1192
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1482		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1482
!	jmp	_Label_1481
_Label_1481:
! THEN...
	mov	1193,r13		! source line 1193
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1483 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1483  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1193,r13		! source line 1193
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1484
_Label_1482:
! ELSE...
	mov	1195,r13		! source line 1195
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1485 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1485  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1195,r13		! source line 1195
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1484:
! END IF...
_Label_1480:
! END IF...
_Label_1476:
! CALL STATEMENT...
!   _temp_1486 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1486  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1197,r13		! source line 1197
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1198,r13		! source line 1198
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1487 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1487  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1199,r13		! source line 1199
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1200,r13		! source line 1200
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1201,r13		! source line 1201
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1201,r13		! source line 1201
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1488
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1489
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1490
	.word	-12
	.word	4
	.word	_Label_1491
	.word	-16
	.word	4
	.word	_Label_1492
	.word	-20
	.word	4
	.word	_Label_1493
	.word	-24
	.word	4
	.word	_Label_1494
	.word	-28
	.word	4
	.word	_Label_1495
	.word	-32
	.word	4
	.word	_Label_1496
	.word	-36
	.word	4
	.word	_Label_1497
	.word	-40
	.word	4
	.word	_Label_1498
	.word	-44
	.word	4
	.word	_Label_1499
	.word	-48
	.word	4
	.word	0
_Label_1488:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1489:
	.ascii	"Pself\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1500
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1500:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1501
	.word	_sourceFileName
	.word	281		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1501:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	386,r1
_Label_3273:
	push	r0
	sub	r1,1,r1
	bne	_Label_3273
	mov	1219,r13		! source line 1219
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1229,r13		! source line 1229
	mov	"\0\0AS",r10
!   _temp_1502 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1540]
!   NEW ARRAY Constructor...
!   _temp_1504 = &_temp_1503
	add	r14,-1536,r1
	store	r1,[r14+-292]
!   _temp_1504 = _temp_1504 + 4
	load	[r14+-292],r1
	add	r1,4,r1
	store	r1,[r14+-292]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1506 = zeros  (sizeInBytes=124)
	add	r14,-284,r4
	mov	31,r3
_Label_3274:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3274
!   _temp_1506 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-284]
	mov	10,r1
	store	r1,[r14+-288]
_Label_1508:
!   Data Move: *_temp_1504 = _temp_1506  (sizeInBytes=124)
	add	r14,-284,r5
	load	[r14+-292],r4
	mov	31,r3
_Label_3275:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3275
!   _temp_1504 = _temp_1504 + 124
	load	[r14+-292],r1
	add	r1,124,r1
	store	r1,[r14+-292]
!   _temp_1505 = _temp_1505 + -1
	load	[r14+-288],r1
	add	r1,-1,r1
	store	r1,[r14+-288]
!   if intNotZero (_temp_1505) then goto _Label_1508
	load	[r14+-288],r1
	cmp	r1,r0
	bne	_Label_1508
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1536]
!   _temp_1509 = &_temp_1503
	add	r14,-1536,r1
	store	r1,[r14+-156]
!   make sure array has size 10
	load	[r14+-1540],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3276
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3276:
!   make sure array has size 10
	load	[r14+-156],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1502 = *_temp_1509  (sizeInBytes=1244)
	load	[r14+-156],r5
	load	[r14+-1540],r4
	mov	311,r3
_Label_3277:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3277
! ASSIGNMENT STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	1235,r13		! source line 1235
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	1236,r13		! source line 1236
	mov	"\0\0SE",r10
!   _temp_1512 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-144]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1238,r13		! source line 1238
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	1239,r13		! source line 1239
	mov	"\0\0SE",r10
!   _temp_1514 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-136]
!   Send message Init
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1241,r13		! source line 1241
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	1242,r13		! source line 1242
	mov	"\0\0SE",r10
!   _temp_1516 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-128]
!   Send message Init
	load	[r14+-128],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0SE",r10
!   _temp_1517 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-124]
!   Move address of _temp_1517 [0 ] into _temp_1518
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1245,r13		! source line 1245
	mov	"\0\0SE",r10
!   _temp_1519 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_1519 [1 ] into _temp_1520
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-116],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-112]
!   Send message Init
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0SE",r10
!   _temp_1521 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Move address of _temp_1521 [2 ] into _temp_1522
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-108],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-104]
!   Send message Init
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1247,r13		! source line 1247
	mov	"\0\0SE",r10
!   _temp_1523 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Move address of _temp_1523 [3 ] into _temp_1524
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1248,r13		! source line 1248
	mov	"\0\0SE",r10
!   _temp_1525 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Move address of _temp_1525 [4 ] into _temp_1526
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   Send message Init
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0SE",r10
!   _temp_1527 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-84]
!   Move address of _temp_1527 [5 ] into _temp_1528
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-84],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-80]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0SE",r10
!   _temp_1529 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1529 [6 ] into _temp_1530
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1251,r13		! source line 1251
	mov	"\0\0SE",r10
!   _temp_1531 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Move address of _temp_1531 [7 ] into _temp_1532
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1252,r13		! source line 1252
	mov	"\0\0SE",r10
!   _temp_1533 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_1533 [8 ] into _temp_1534
!     make sure index expr is >= 0
	mov	8,r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1253,r13		! source line 1253
	mov	"\0\0SE",r10
!   _temp_1535 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1535 [9 ] into _temp_1536
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1255,r13		! source line 1255
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1541 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1542 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1541  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-1544]
_Label_1537:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1542 then goto _Label_1540		
	load	[r14+-1544],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1540
_Label_1538:
	mov	1255,r13		! source line 1255
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1259,r13		! source line 1259
	mov	"\0\0AS",r10
!   _temp_1543 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1543 [i ] into _temp_1544
!     make sure index expr is >= 0
	load	[r14+-1544],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1545 = _temp_1544 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1545 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1262,r13		! source line 1262
	mov	"\0\0SE",r10
!   _temp_1547 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1547 [i ] into _temp_1548
!     make sure index expr is >= 0
	load	[r14+-1544],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1546 = _temp_1548		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1549 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1546  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1539:
!   i = i + 1
	load	[r14+-1544],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1544]
	jmp	_Label_1537
! END FOR
_Label_1540:
! RETURN STATEMENT...
	mov	1255,r13		! source line 1255
	mov	"\0\0RE",r10
	add	r15,1548,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1550
	.word	4		! total size of parameters
	.word	1544		! frame size = 1544
	.word	_Label_1551
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1552
	.word	-12
	.word	4
	.word	_Label_1553
	.word	-16
	.word	4
	.word	_Label_1554
	.word	-20
	.word	4
	.word	_Label_1555
	.word	-24
	.word	4
	.word	_Label_1556
	.word	-28
	.word	4
	.word	_Label_1557
	.word	-32
	.word	4
	.word	_Label_1558
	.word	-36
	.word	4
	.word	_Label_1559
	.word	-40
	.word	4
	.word	_Label_1560
	.word	-44
	.word	4
	.word	_Label_1561
	.word	-48
	.word	4
	.word	_Label_1562
	.word	-52
	.word	4
	.word	_Label_1563
	.word	-56
	.word	4
	.word	_Label_1564
	.word	-60
	.word	4
	.word	_Label_1565
	.word	-64
	.word	4
	.word	_Label_1566
	.word	-68
	.word	4
	.word	_Label_1567
	.word	-72
	.word	4
	.word	_Label_1568
	.word	-76
	.word	4
	.word	_Label_1569
	.word	-80
	.word	4
	.word	_Label_1570
	.word	-84
	.word	4
	.word	_Label_1571
	.word	-88
	.word	4
	.word	_Label_1572
	.word	-92
	.word	4
	.word	_Label_1573
	.word	-96
	.word	4
	.word	_Label_1574
	.word	-100
	.word	4
	.word	_Label_1575
	.word	-104
	.word	4
	.word	_Label_1576
	.word	-108
	.word	4
	.word	_Label_1577
	.word	-112
	.word	4
	.word	_Label_1578
	.word	-116
	.word	4
	.word	_Label_1579
	.word	-120
	.word	4
	.word	_Label_1580
	.word	-124
	.word	4
	.word	_Label_1581
	.word	-128
	.word	4
	.word	_Label_1582
	.word	-132
	.word	4
	.word	_Label_1583
	.word	-136
	.word	4
	.word	_Label_1584
	.word	-140
	.word	4
	.word	_Label_1585
	.word	-144
	.word	4
	.word	_Label_1586
	.word	-148
	.word	4
	.word	_Label_1587
	.word	-152
	.word	4
	.word	_Label_1588
	.word	-156
	.word	4
	.word	_Label_1589
	.word	-160
	.word	4
	.word	_Label_1590
	.word	-284
	.word	124
	.word	_Label_1591
	.word	-288
	.word	4
	.word	_Label_1592
	.word	-292
	.word	4
	.word	_Label_1593
	.word	-1536
	.word	1244
	.word	_Label_1594
	.word	-1540
	.word	4
	.word	_Label_1595
	.word	-1544
	.word	4
	.word	0
_Label_1550:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1551:
	.ascii	"Pself\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1595:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_3278:
	push	r0
	sub	r1,1,r1
	bne	_Label_3278
	mov	1269,r13		! source line 1269
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1276,r13		! source line 1276
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1596 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1596  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1277,r13		! source line 1277
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1278,r13		! source line 1278
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1601 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1602 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1601  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1597:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1602 then goto _Label_1600		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1600
_Label_1598:
	mov	1278,r13		! source line 1278
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1603 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1603  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1279,r13		! source line 1279
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1280,r13		! source line 1280
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1604 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1604  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1281,r13		! source line 1281
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1282,r13		! source line 1282
	mov	"\0\0SE",r10
!   _temp_1605 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1605 [i ] into _temp_1606
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1599:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1597
! END FOR
_Label_1600:
! CALL STATEMENT...
!   _temp_1607 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1607  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1284,r13		! source line 1284
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1285,r13		! source line 1285
	mov	"\0\0SE",r10
!   _temp_1608 = _function_214_PrintObjectAddr
	set	_function_214_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1609 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1608  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1286,r13		! source line 1286
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1287,r13		! source line 1287
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1287,r13		! source line 1287
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1287,r13		! source line 1287
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1610
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1611
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1612
	.word	-12
	.word	4
	.word	_Label_1613
	.word	-16
	.word	4
	.word	_Label_1614
	.word	-20
	.word	4
	.word	_Label_1615
	.word	-24
	.word	4
	.word	_Label_1616
	.word	-28
	.word	4
	.word	_Label_1617
	.word	-32
	.word	4
	.word	_Label_1618
	.word	-36
	.word	4
	.word	_Label_1619
	.word	-40
	.word	4
	.word	_Label_1620
	.word	-44
	.word	4
	.word	_Label_1621
	.word	-48
	.word	4
	.word	_Label_1622
	.word	-52
	.word	4
	.word	_Label_1623
	.word	-56
	.word	4
	.word	0
_Label_1610:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1611:
	.ascii	"Pself\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1622:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1623:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_3279:
	push	r0
	sub	r1,1,r1
	bne	_Label_3279
	mov	1292,r13		! source line 1292
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1299,r13		! source line 1299
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1299,r13		! source line 1299
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1624 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1624  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1300,r13		! source line 1300
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1301,r13		! source line 1301
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1629 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1630 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1629  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1625:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1630 then goto _Label_1628		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1628
_Label_1626:
	mov	1301,r13		! source line 1301
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1631 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1631  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1302,r13		! source line 1302
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1303,r13		! source line 1303
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1304,r13		! source line 1304
	mov	"\0\0SE",r10
!   _temp_1632 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1632 [i ] into _temp_1633
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1627:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1625
! END FOR
_Label_1628:
! CALL STATEMENT...
!   _temp_1634 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1634  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1306,r13		! source line 1306
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0SE",r10
!   _temp_1635 = _function_214_PrintObjectAddr
	set	_function_214_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1636 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1635  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1308,r13		! source line 1308
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1309,r13		! source line 1309
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1309,r13		! source line 1309
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1309,r13		! source line 1309
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1637
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1638
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1639
	.word	-12
	.word	4
	.word	_Label_1640
	.word	-16
	.word	4
	.word	_Label_1641
	.word	-20
	.word	4
	.word	_Label_1642
	.word	-24
	.word	4
	.word	_Label_1643
	.word	-28
	.word	4
	.word	_Label_1644
	.word	-32
	.word	4
	.word	_Label_1645
	.word	-36
	.word	4
	.word	_Label_1646
	.word	-40
	.word	4
	.word	_Label_1647
	.word	-44
	.word	4
	.word	_Label_1648
	.word	-48
	.word	4
	.word	_Label_1649
	.word	-52
	.word	4
	.word	0
_Label_1637:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1638:
	.ascii	"Pself\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1648:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1649:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	14,r1
_Label_3280:
	push	r0
	sub	r1,1,r1
	bne	_Label_3280
	mov	1315,r13		! source line 1315
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1325,r13		! source line 1325
	mov	"\0\0SE",r10
!   _temp_1650 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1328,r13		! source line 1328
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! WHILE STATEMENT...
	mov	1332,r13		! source line 1332
	mov	"\0\0WH",r10
_Label_1651:
	mov	1332,r13		! source line 1332
	mov	"\0\0SE",r10
!   _temp_1654 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-48]
!   Send message IsEmpty
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1652 else goto _Label_1653
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1653
	jmp	_Label_1652
_Label_1652:
	mov	1332,r13		! source line 1332
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1333,r13		! source line 1333
	mov	"\0\0SE",r10
!   _temp_1655 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-44]
!   _temp_1656 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1655  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1651
_Label_1653:
! ASSIGNMENT STATEMENT...
	mov	1338,r13		! source line 1338
	mov	"\0\0AS",r10
	mov	1338,r13		! source line 1338
	mov	"\0\0SE",r10
!   _temp_1657 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message Remove
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=processpt  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1339,r13		! source line 1339
	mov	"\0\0AS",r10
!   if intIsZero (processpt) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1658 = processpt + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1658 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-32],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0IF",r10
!   if intIsZero (processpt) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1662 = processpt + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1661 = *_temp_1662  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_1661 != 2 then goto _Label_1660		(int)
	load	[r14+-28],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1660
!	jmp	_Label_1659
_Label_1659:
! THEN...
	mov	1344,r13		! source line 1344
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1344,r13		! source line 1344
	mov	"\0\0SE",r10
!   _temp_1663 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1664 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1663  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_1660:
! SEND STATEMENT...
	mov	1348,r13		! source line 1348
	mov	"\0\0SE",r10
!   _temp_1665 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	1349,r13		! source line 1349
	mov	"\0\0RE",r10
!   ReturnResult: processpt  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1666
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1667
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1668
	.word	-12
	.word	4
	.word	_Label_1669
	.word	-16
	.word	4
	.word	_Label_1670
	.word	-20
	.word	4
	.word	_Label_1671
	.word	-24
	.word	4
	.word	_Label_1672
	.word	-28
	.word	4
	.word	_Label_1673
	.word	-32
	.word	4
	.word	_Label_1674
	.word	-36
	.word	4
	.word	_Label_1675
	.word	-40
	.word	4
	.word	_Label_1676
	.word	-44
	.word	4
	.word	_Label_1677
	.word	-48
	.word	4
	.word	_Label_1678
	.word	-52
	.word	4
	.word	_Label_1679
	.word	-56
	.word	4
	.word	0
_Label_1666:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1667:
	.ascii	"Pself\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1679:
	.byte	'P'
	.ascii	"processpt\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_3281:
	push	r0
	sub	r1,1,r1
	bne	_Label_3281
	mov	1355,r13		! source line 1355
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1362,r13		! source line 1362
	mov	"\0\0SE",r10
!   _temp_1680 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1681 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1681 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0SE",r10
!   _temp_1682 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1371,r13		! source line 1371
	mov	"\0\0SE",r10
!   _temp_1683 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1684 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1683  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1374,r13		! source line 1374
	mov	"\0\0SE",r10
!   _temp_1685 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	1374,r13		! source line 1374
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1686
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1687
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1688
	.word	12
	.word	4
	.word	_Label_1689
	.word	-12
	.word	4
	.word	_Label_1690
	.word	-16
	.word	4
	.word	_Label_1691
	.word	-20
	.word	4
	.word	_Label_1692
	.word	-24
	.word	4
	.word	_Label_1693
	.word	-28
	.word	4
	.word	_Label_1694
	.word	-32
	.word	4
	.word	0
_Label_1686:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1687:
	.ascii	"Pself\0"
	.align
_Label_1688:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1692:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1695
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1695:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1696
	.word	_sourceFileName
	.word	304		! line number
	.word	88		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1696:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	18,r1
_Label_3282:
	push	r0
	sub	r1,1,r1
	bne	_Label_3282
	mov	1409,r13		! source line 1409
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1697 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1697  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	1416,r13		! source line 1416
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1418,r13		! source line 1418
	mov	"\0\0SE",r10
!   _temp_1699 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1419,r13		! source line 1419
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1420,r13		! source line 1420
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1421,r13		! source line 1421
	mov	"\0\0SE",r10
!   _temp_1701 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1423,r13		! source line 1423
	mov	"\0\0SE",r10
!   _temp_1703 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-44]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: otherThreads = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,56,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   otherThreads = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+56]
! SEND STATEMENT...
	mov	1425,r13		! source line 1425
	mov	"\0\0SE",r10
!   _temp_1705 = &otherThreads
	load	[r14+8],r1
	add	r1,56,r1
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
	mov	1426,r13		! source line 1426
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: leaderThread = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,72,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   leaderThread = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+72]
! SEND STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0SE",r10
!   _temp_1707 = &leaderThread
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1712 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1713 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1712  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-72]
_Label_1708:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1713 then goto _Label_1711		
	load	[r14+-72],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1711
_Label_1709:
	mov	1433,r13		! source line 1433
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1716 = *i  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1716) then goto _Label_1715
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1715
!	jmp	_Label_1714
_Label_1714:
! THEN...
	mov	1437,r13		! source line 1437
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1717 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1717  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1437,r13		! source line 1437
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1715:
!   Increment the FOR-LOOP index variable and jump back
_Label_1710:
!   i = i + 4
	load	[r14+-72],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_1708
! END FOR
_Label_1711:
! RETURN STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1718
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1719
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1720
	.word	-12
	.word	4
	.word	_Label_1721
	.word	-16
	.word	4
	.word	_Label_1722
	.word	-20
	.word	4
	.word	_Label_1723
	.word	-24
	.word	4
	.word	_Label_1724
	.word	-28
	.word	4
	.word	_Label_1725
	.word	-32
	.word	4
	.word	_Label_1726
	.word	-36
	.word	4
	.word	_Label_1727
	.word	-40
	.word	4
	.word	_Label_1728
	.word	-44
	.word	4
	.word	_Label_1729
	.word	-48
	.word	4
	.word	_Label_1730
	.word	-52
	.word	4
	.word	_Label_1731
	.word	-56
	.word	4
	.word	_Label_1732
	.word	-60
	.word	4
	.word	_Label_1733
	.word	-64
	.word	4
	.word	_Label_1734
	.word	-68
	.word	4
	.word	_Label_1735
	.word	-72
	.word	4
	.word	0
_Label_1718:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1719:
	.ascii	"Pself\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1735:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_3283:
	push	r0
	sub	r1,1,r1
	bne	_Label_3283
	mov	1444,r13		! source line 1444
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0SE",r10
!   _temp_1736 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1737 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1737  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1449,r13		! source line 1449
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1738 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1738  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1450,r13		! source line 1450
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1739 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1739  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1451,r13		! source line 1451
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0SE",r10
!   _temp_1740 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0SE",r10
!   _temp_1741 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1453,r13		! source line 1453
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1742
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1743
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1744
	.word	-12
	.word	4
	.word	_Label_1745
	.word	-16
	.word	4
	.word	_Label_1746
	.word	-20
	.word	4
	.word	_Label_1747
	.word	-24
	.word	4
	.word	_Label_1748
	.word	-28
	.word	4
	.word	_Label_1749
	.word	-32
	.word	4
	.word	0
_Label_1742:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1743:
	.ascii	"Pself\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_3284:
	push	r0
	sub	r1,1,r1
	bne	_Label_3284
	mov	1458,r13		! source line 1458
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0SE",r10
!   _temp_1750 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0WH",r10
_Label_1751:
!   if numberFreeFrames >= 1 then goto _Label_1753		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1753
!	jmp	_Label_1752
_Label_1752:
	mov	1469,r13		! source line 1469
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1470,r13		! source line 1470
	mov	"\0\0SE",r10
!   _temp_1754 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1755 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1754  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1751
_Label_1753:
! ASSIGNMENT STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0AS",r10
	mov	1474,r13		! source line 1474
	mov	"\0\0SE",r10
!   _temp_1756 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0SE",r10
!   _temp_1757 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0AS",r10
!   _temp_1758 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1758		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1759
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1760
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1761
	.word	-12
	.word	4
	.word	_Label_1762
	.word	-16
	.word	4
	.word	_Label_1763
	.word	-20
	.word	4
	.word	_Label_1764
	.word	-24
	.word	4
	.word	_Label_1765
	.word	-28
	.word	4
	.word	_Label_1766
	.word	-32
	.word	4
	.word	_Label_1767
	.word	-36
	.word	4
	.word	_Label_1768
	.word	-40
	.word	4
	.word	0
_Label_1759:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1760:
	.ascii	"Pself\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1767:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1768:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	20,r1
_Label_3285:
	push	r0
	sub	r1,1,r1
	bne	_Label_3285
	mov	1491,r13		! source line 1491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0SE",r10
!   _temp_1769 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0WH",r10
_Label_1770:
!   if numOfWaitingThreads <= 1 then goto _Label_1772		(int)
	load	[r14+-76],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1772
!	jmp	_Label_1771
_Label_1771:
	mov	1501,r13		! source line 1501
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0AS",r10
!   numOfWaitingThreads = numOfWaitingThreads + 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1503,r13		! source line 1503
	mov	"\0\0SE",r10
!   _temp_1773 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   _temp_1774 = &otherThreads
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1773  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1770
_Label_1772:
! WHILE STATEMENT...
	mov	1508,r13		! source line 1508
	mov	"\0\0WH",r10
_Label_1775:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1777		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1777
!	jmp	_Label_1776
_Label_1776:
	mov	1508,r13		! source line 1508
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0SE",r10
!   _temp_1778 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   _temp_1779 = &leaderThread
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1778  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1775
_Label_1777:
! FOR STATEMENT...
	mov	1517,r13		! source line 1517
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1784 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1785 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1784  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-68]
_Label_1780:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1785 then goto _Label_1783		
	load	[r14+-68],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1783
_Label_1781:
	mov	1517,r13		! source line 1517
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1519,r13		! source line 1519
	mov	"\0\0AS",r10
	mov	1519,r13		! source line 1519
	mov	"\0\0SE",r10
!   _temp_1786 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message FindZeroAndSet
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=Frames  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	1520,r13		! source line 1520
	mov	"\0\0AS",r10
!   _temp_1787 = Frames * 8192		(int)
	load	[r14+-64],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   frameAddr = 1048576 + _temp_1787		(int)
	set	1048576,r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! SEND STATEMENT...
	mov	1521,r13		! source line 1521
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1782:
!   i = i + 1
	load	[r14+-68],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
	jmp	_Label_1780
! END FOR
_Label_1783:
! ASSIGNMENT STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0AS",r10
!   numOfWaitingThreads = numOfWaitingThreads - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0SE",r10
!   _temp_1788 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   _temp_1789 = &otherThreads
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1788  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1532,r13		! source line 1532
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1533,r13		! source line 1533
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1790 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1790 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0SE",r10
!   _temp_1791 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1536,r13		! source line 1536
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1792
	.word	12		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_1793
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1794
	.word	12
	.word	4
	.word	_Label_1795
	.word	16
	.word	4
	.word	_Label_1796
	.word	-12
	.word	4
	.word	_Label_1797
	.word	-16
	.word	4
	.word	_Label_1798
	.word	-20
	.word	4
	.word	_Label_1799
	.word	-24
	.word	4
	.word	_Label_1800
	.word	-28
	.word	4
	.word	_Label_1801
	.word	-32
	.word	4
	.word	_Label_1802
	.word	-36
	.word	4
	.word	_Label_1803
	.word	-40
	.word	4
	.word	_Label_1804
	.word	-44
	.word	4
	.word	_Label_1805
	.word	-48
	.word	4
	.word	_Label_1806
	.word	-52
	.word	4
	.word	_Label_1807
	.word	-56
	.word	4
	.word	_Label_1808
	.word	-60
	.word	4
	.word	_Label_1809
	.word	-64
	.word	4
	.word	_Label_1810
	.word	-68
	.word	4
	.word	_Label_1811
	.word	-72
	.word	4
	.word	_Label_1812
	.word	-76
	.word	4
	.word	0
_Label_1792:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1793:
	.ascii	"Pself\0"
	.align
_Label_1794:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1795:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1809:
	.byte	'I'
	.ascii	"Frames\0"
	.align
_Label_1810:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1811:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1812:
	.byte	'I'
	.ascii	"numOfWaitingThreads\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	16,r1
_Label_3286:
	push	r0
	sub	r1,1,r1
	bne	_Label_3286
	mov	1548,r13		! source line 1548
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1554,r13		! source line 1554
	mov	"\0\0SE",r10
!   _temp_1813 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1556,r13		! source line 1556
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1814 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: numFramesReturned = *_temp_1814  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-48]
! FOR STATEMENT...
	mov	1559,r13		! source line 1559
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1819 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1820 = numFramesReturned - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1819  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-56]
_Label_1815:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1820 then goto _Label_1818		
	load	[r14+-56],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1818
_Label_1816:
	mov	1559,r13		! source line 1559
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1560,r13		! source line 1560
	mov	"\0\0AS",r10
	mov	1560,r13		! source line 1560
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
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
	mov	1561,r13		! source line 1561
	mov	"\0\0AS",r10
!   _temp_1821 = frameAddr - 1048576		(int)
	load	[r14+-60],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bitNumber = _temp_1821 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
! SEND STATEMENT...
	mov	1562,r13		! source line 1562
	mov	"\0\0SE",r10
!   _temp_1822 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1817:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1815
! END FOR
_Label_1818:
! ASSIGNMENT STATEMENT...
	mov	1567,r13		! source line 1567
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + numFramesReturned		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-48],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1568,r13		! source line 1568
	mov	"\0\0AS",r10
!   numOfWaitingThreads = numOfWaitingThreads - 1		(int)
	load	[r14+-64],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1569,r13		! source line 1569
	mov	"\0\0SE",r10
!   _temp_1823 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1824 = &leaderThread
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1823  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1572,r13		! source line 1572
	mov	"\0\0SE",r10
!   _temp_1825 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1572,r13		! source line 1572
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1826
	.word	8		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1827
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1828
	.word	12
	.word	4
	.word	_Label_1829
	.word	-12
	.word	4
	.word	_Label_1830
	.word	-16
	.word	4
	.word	_Label_1831
	.word	-20
	.word	4
	.word	_Label_1832
	.word	-24
	.word	4
	.word	_Label_1833
	.word	-28
	.word	4
	.word	_Label_1834
	.word	-32
	.word	4
	.word	_Label_1835
	.word	-36
	.word	4
	.word	_Label_1836
	.word	-40
	.word	4
	.word	_Label_1837
	.word	-44
	.word	4
	.word	_Label_1838
	.word	-48
	.word	4
	.word	_Label_1839
	.word	-52
	.word	4
	.word	_Label_1840
	.word	-56
	.word	4
	.word	_Label_1841
	.word	-60
	.word	4
	.word	_Label_1842
	.word	-64
	.word	4
	.word	0
_Label_1826:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1827:
	.ascii	"Pself\0"
	.align
_Label_1828:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1838:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
_Label_1839:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
_Label_1840:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1841:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1842:
	.byte	'I'
	.ascii	"numOfWaitingThreads\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1843
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1843:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1844
	.word	_sourceFileName
	.word	327		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1844:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_3287:
	push	r0
	sub	r1,1,r1
	bne	_Label_3287
	mov	1584,r13		! source line 1584
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1588,r13		! source line 1588
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1589,r13		! source line 1589
	mov	"\0\0AS",r10
!   _temp_1845 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1847 = &_temp_1846
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1847 = _temp_1847 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1849:
!   Data Move: *_temp_1847 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1847 = _temp_1847 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1848 = _temp_1848 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1848) then goto _Label_1849
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1849
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1850 = &_temp_1846
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3288
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3288:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1845 = *_temp_1850  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3289:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3289
! RETURN STATEMENT...
	mov	1589,r13		! source line 1589
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1851
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1852
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1853
	.word	-12
	.word	4
	.word	_Label_1854
	.word	-16
	.word	4
	.word	_Label_1855
	.word	-20
	.word	4
	.word	_Label_1856
	.word	-104
	.word	84
	.word	_Label_1857
	.word	-108
	.word	4
	.word	0
_Label_1851:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1852:
	.ascii	"Pself\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_3290:
	push	r0
	sub	r1,1,r1
	bne	_Label_3290
	mov	1594,r13		! source line 1594
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1858 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1858  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1599,r13		! source line 1599
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1859 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1859  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1600,r13		! source line 1600
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1601,r13		! source line 1601
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1864 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1865 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1864  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1860:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1865 then goto _Label_1863		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1863
_Label_1861:
	mov	1601,r13		! source line 1601
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1866 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1866  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1602,r13		! source line 1602
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1868 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1868 [i ] into _temp_1869
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
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
	store	r2,[r14+-136]
!   _temp_1867 = _temp_1869		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1867  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1603,r13		! source line 1603
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1870 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1870  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1604,r13		! source line 1604
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1872 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1872 [i ] into _temp_1873
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
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
	store	r2,[r14+-120]
!   Data Move: _temp_1871 = *_temp_1873  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1871  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1605,r13		! source line 1605
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1874 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1874  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1606,r13		! source line 1606
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1875 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1875  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1607,r13		! source line 1607
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1876 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1876  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1608,r13		! source line 1608
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1878) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1877  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1877  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1609,r13		! source line 1609
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1879 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1879  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1610,r13		! source line 1610
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0IF",r10
	mov	1611,r13		! source line 1611
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1883) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1882  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1882) then goto _Label_1881
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1881
!	jmp	_Label_1880
_Label_1880:
! THEN...
	mov	1612,r13		! source line 1612
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1612,r13		! source line 1612
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1885) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1884  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1884  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1612,r13		! source line 1612
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1886
_Label_1881:
! ELSE...
	mov	1614,r13		! source line 1614
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1887 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1887  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1614,r13		! source line 1614
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1886:
! CALL STATEMENT...
!   _temp_1888 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1888  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1616,r13		! source line 1616
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0IF",r10
	mov	1617,r13		! source line 1617
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1891) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1889 else goto _Label_1890
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1890
	jmp	_Label_1889
_Label_1889:
! THEN...
	mov	1618,r13		! source line 1618
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1892 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1892  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1618,r13		! source line 1618
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1893
_Label_1890:
! ELSE...
	mov	1620,r13		! source line 1620
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1894 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1894  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1620,r13		! source line 1620
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1893:
! CALL STATEMENT...
!   _temp_1895 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1895  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1622,r13		! source line 1622
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1623,r13		! source line 1623
	mov	"\0\0IF",r10
	mov	1623,r13		! source line 1623
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1898) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1896 else goto _Label_1897
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1897
	jmp	_Label_1896
_Label_1896:
! THEN...
	mov	1624,r13		! source line 1624
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1899 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1899  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1624,r13		! source line 1624
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1900
_Label_1897:
! ELSE...
	mov	1626,r13		! source line 1626
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1901 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1901  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1626,r13		! source line 1626
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1900:
! CALL STATEMENT...
!   _temp_1902 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1902  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1628,r13		! source line 1628
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1629,r13		! source line 1629
	mov	"\0\0IF",r10
	mov	1629,r13		! source line 1629
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1905) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1903 else goto _Label_1904
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1904
	jmp	_Label_1903
_Label_1903:
! THEN...
	mov	1630,r13		! source line 1630
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1906 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1906  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1630,r13		! source line 1630
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1907
_Label_1904:
! ELSE...
	mov	1632,r13		! source line 1632
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1908 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1908  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1632,r13		! source line 1632
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1907:
! CALL STATEMENT...
!   _temp_1909 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1909  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1634,r13		! source line 1634
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1635,r13		! source line 1635
	mov	"\0\0IF",r10
	mov	1635,r13		! source line 1635
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1912) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1910 else goto _Label_1911
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1911
	jmp	_Label_1910
_Label_1910:
! THEN...
	mov	1636,r13		! source line 1636
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1913 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1913  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1636,r13		! source line 1636
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1914
_Label_1911:
! ELSE...
	mov	1638,r13		! source line 1638
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1915 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1915  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1638,r13		! source line 1638
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1914:
! CALL STATEMENT...
!   Call the function
	mov	1640,r13		! source line 1640
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1862:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1860
! END FOR
_Label_1863:
! RETURN STATEMENT...
	mov	1601,r13		! source line 1601
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1916
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1917
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1918
	.word	-12
	.word	4
	.word	_Label_1919
	.word	-16
	.word	4
	.word	_Label_1920
	.word	-20
	.word	4
	.word	_Label_1921
	.word	-24
	.word	4
	.word	_Label_1922
	.word	-28
	.word	4
	.word	_Label_1923
	.word	-32
	.word	4
	.word	_Label_1924
	.word	-36
	.word	4
	.word	_Label_1925
	.word	-40
	.word	4
	.word	_Label_1926
	.word	-44
	.word	4
	.word	_Label_1927
	.word	-48
	.word	4
	.word	_Label_1928
	.word	-52
	.word	4
	.word	_Label_1929
	.word	-56
	.word	4
	.word	_Label_1930
	.word	-60
	.word	4
	.word	_Label_1931
	.word	-64
	.word	4
	.word	_Label_1932
	.word	-68
	.word	4
	.word	_Label_1933
	.word	-72
	.word	4
	.word	_Label_1934
	.word	-76
	.word	4
	.word	_Label_1935
	.word	-80
	.word	4
	.word	_Label_1936
	.word	-84
	.word	4
	.word	_Label_1937
	.word	-88
	.word	4
	.word	_Label_1938
	.word	-92
	.word	4
	.word	_Label_1939
	.word	-96
	.word	4
	.word	_Label_1940
	.word	-100
	.word	4
	.word	_Label_1941
	.word	-104
	.word	4
	.word	_Label_1942
	.word	-108
	.word	4
	.word	_Label_1943
	.word	-112
	.word	4
	.word	_Label_1944
	.word	-116
	.word	4
	.word	_Label_1945
	.word	-120
	.word	4
	.word	_Label_1946
	.word	-124
	.word	4
	.word	_Label_1947
	.word	-128
	.word	4
	.word	_Label_1948
	.word	-132
	.word	4
	.word	_Label_1949
	.word	-136
	.word	4
	.word	_Label_1950
	.word	-140
	.word	4
	.word	_Label_1951
	.word	-144
	.word	4
	.word	_Label_1952
	.word	-148
	.word	4
	.word	_Label_1953
	.word	-152
	.word	4
	.word	_Label_1954
	.word	-156
	.word	4
	.word	_Label_1955
	.word	-160
	.word	4
	.word	_Label_1956
	.word	-164
	.word	4
	.word	_Label_1957
	.word	-168
	.word	4
	.word	0
_Label_1916:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1917:
	.ascii	"Pself\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1957:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_3291:
	push	r0
	sub	r1,1,r1
	bne	_Label_3291
	mov	1646,r13		! source line 1646
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1651,r13		! source line 1651
	mov	"\0\0RE",r10
!   _temp_1960 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1960 [entry ] into _temp_1961
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1959 = *_temp_1961  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1958 = _temp_1959 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1958  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1962
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1963
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1964
	.word	12
	.word	4
	.word	_Label_1965
	.word	-12
	.word	4
	.word	_Label_1966
	.word	-16
	.word	4
	.word	_Label_1967
	.word	-20
	.word	4
	.word	_Label_1968
	.word	-24
	.word	4
	.word	0
_Label_1962:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1963:
	.ascii	"Pself\0"
	.align
_Label_1964:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_3292:
	push	r0
	sub	r1,1,r1
	bne	_Label_3292
	mov	1656,r13		! source line 1656
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1660,r13		! source line 1660
	mov	"\0\0RE",r10
!   _temp_1971 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1971 [entry ] into _temp_1972
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1970 = *_temp_1972  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1969 = _temp_1970 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1969  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1973
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1974
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1975
	.word	12
	.word	4
	.word	_Label_1976
	.word	-12
	.word	4
	.word	_Label_1977
	.word	-16
	.word	4
	.word	_Label_1978
	.word	-20
	.word	4
	.word	_Label_1979
	.word	-24
	.word	4
	.word	0
_Label_1973:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1974:
	.ascii	"Pself\0"
	.align
_Label_1975:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_3293:
	push	r0
	sub	r1,1,r1
	bne	_Label_3293
	mov	1665,r13		! source line 1665
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1670,r13		! source line 1670
	mov	"\0\0AS",r10
!   _temp_1980 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1980 [entry ] into _temp_1981
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
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
	store	r2,[r14+-32]
!   _temp_1985 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1985 [entry ] into _temp_1986
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1984 = *_temp_1986  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1983 = _temp_1984 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1982 = _temp_1983 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1981 = _temp_1982  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1670,r13		! source line 1670
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1987
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1988
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1989
	.word	12
	.word	4
	.word	_Label_1990
	.word	16
	.word	4
	.word	_Label_1991
	.word	-12
	.word	4
	.word	_Label_1992
	.word	-16
	.word	4
	.word	_Label_1993
	.word	-20
	.word	4
	.word	_Label_1994
	.word	-24
	.word	4
	.word	_Label_1995
	.word	-28
	.word	4
	.word	_Label_1996
	.word	-32
	.word	4
	.word	_Label_1997
	.word	-36
	.word	4
	.word	0
_Label_1987:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1988:
	.ascii	"Pself\0"
	.align
_Label_1989:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1990:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_3294:
	push	r0
	sub	r1,1,r1
	bne	_Label_3294
	mov	1675,r13		! source line 1675
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1679,r13		! source line 1679
	mov	"\0\0RE",r10
!   _temp_2001 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2001 [entry ] into _temp_2002
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_2000 = *_temp_2002  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1999 = _temp_2000 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1999) then goto _Label_2003
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2003
!   _temp_1998 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2004
_Label_2003:
!   _temp_1998 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2004:
!   ReturnResult: _temp_1998  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_2005
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2006
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2007
	.word	12
	.word	4
	.word	_Label_2008
	.word	-16
	.word	4
	.word	_Label_2009
	.word	-20
	.word	4
	.word	_Label_2010
	.word	-24
	.word	4
	.word	_Label_2011
	.word	-28
	.word	4
	.word	_Label_2012
	.word	-9
	.word	1
	.word	0
_Label_2005:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2006:
	.ascii	"Pself\0"
	.align
_Label_2007:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2012:
	.byte	'C'
	.ascii	"_temp_1998\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_3295:
	push	r0
	sub	r1,1,r1
	bne	_Label_3295
	mov	1684,r13		! source line 1684
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1688,r13		! source line 1688
	mov	"\0\0RE",r10
!   _temp_2016 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2016 [entry ] into _temp_2017
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_2015 = *_temp_2017  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2014 = _temp_2015 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2014) then goto _Label_2018
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2018
!   _temp_2013 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2019
_Label_2018:
!   _temp_2013 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2019:
!   ReturnResult: _temp_2013  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_2020
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2021
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2022
	.word	12
	.word	4
	.word	_Label_2023
	.word	-16
	.word	4
	.word	_Label_2024
	.word	-20
	.word	4
	.word	_Label_2025
	.word	-24
	.word	4
	.word	_Label_2026
	.word	-28
	.word	4
	.word	_Label_2027
	.word	-9
	.word	1
	.word	0
_Label_2020:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2021:
	.ascii	"Pself\0"
	.align
_Label_2022:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2027:
	.byte	'C'
	.ascii	"_temp_2013\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_3296:
	push	r0
	sub	r1,1,r1
	bne	_Label_3296
	mov	1693,r13		! source line 1693
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1697,r13		! source line 1697
	mov	"\0\0RE",r10
!   _temp_2031 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2031 [entry ] into _temp_2032
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_2030 = *_temp_2032  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2029 = _temp_2030 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2029) then goto _Label_2033
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2033
!   _temp_2028 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2034
_Label_2033:
!   _temp_2028 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2034:
!   ReturnResult: _temp_2028  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_2035
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2036
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2037
	.word	12
	.word	4
	.word	_Label_2038
	.word	-16
	.word	4
	.word	_Label_2039
	.word	-20
	.word	4
	.word	_Label_2040
	.word	-24
	.word	4
	.word	_Label_2041
	.word	-28
	.word	4
	.word	_Label_2042
	.word	-9
	.word	1
	.word	0
_Label_2035:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2036:
	.ascii	"Pself\0"
	.align
_Label_2037:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2042:
	.byte	'C'
	.ascii	"_temp_2028\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_3297:
	push	r0
	sub	r1,1,r1
	bne	_Label_3297
	mov	1702,r13		! source line 1702
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1706,r13		! source line 1706
	mov	"\0\0RE",r10
!   _temp_2046 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2046 [entry ] into _temp_2047
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_2045 = *_temp_2047  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2044 = _temp_2045 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2044) then goto _Label_2048
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2048
!   _temp_2043 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2049
_Label_2048:
!   _temp_2043 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2049:
!   ReturnResult: _temp_2043  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_2050
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2051
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2052
	.word	12
	.word	4
	.word	_Label_2053
	.word	-16
	.word	4
	.word	_Label_2054
	.word	-20
	.word	4
	.word	_Label_2055
	.word	-24
	.word	4
	.word	_Label_2056
	.word	-28
	.word	4
	.word	_Label_2057
	.word	-9
	.word	1
	.word	0
_Label_2050:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2051:
	.ascii	"Pself\0"
	.align
_Label_2052:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2057:
	.byte	'C'
	.ascii	"_temp_2043\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_3298:
	push	r0
	sub	r1,1,r1
	bne	_Label_3298
	mov	1711,r13		! source line 1711
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1715,r13		! source line 1715
	mov	"\0\0AS",r10
!   _temp_2058 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2058 [entry ] into _temp_2059
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_2062 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2062 [entry ] into _temp_2063
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_2061 = *_temp_2063  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2060 = _temp_2061 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2059 = _temp_2060  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1715,r13		! source line 1715
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_2064
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2065
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2066
	.word	12
	.word	4
	.word	_Label_2067
	.word	-12
	.word	4
	.word	_Label_2068
	.word	-16
	.word	4
	.word	_Label_2069
	.word	-20
	.word	4
	.word	_Label_2070
	.word	-24
	.word	4
	.word	_Label_2071
	.word	-28
	.word	4
	.word	_Label_2072
	.word	-32
	.word	4
	.word	0
_Label_2064:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2065:
	.ascii	"Pself\0"
	.align
_Label_2066:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_3299:
	push	r0
	sub	r1,1,r1
	bne	_Label_3299
	mov	1720,r13		! source line 1720
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1724,r13		! source line 1724
	mov	"\0\0AS",r10
!   _temp_2073 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2073 [entry ] into _temp_2074
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_2077 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2077 [entry ] into _temp_2078
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_2076 = *_temp_2078  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2075 = _temp_2076 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2074 = _temp_2075  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1724,r13		! source line 1724
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_2079
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2080
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2081
	.word	12
	.word	4
	.word	_Label_2082
	.word	-12
	.word	4
	.word	_Label_2083
	.word	-16
	.word	4
	.word	_Label_2084
	.word	-20
	.word	4
	.word	_Label_2085
	.word	-24
	.word	4
	.word	_Label_2086
	.word	-28
	.word	4
	.word	_Label_2087
	.word	-32
	.word	4
	.word	0
_Label_2079:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2080:
	.ascii	"Pself\0"
	.align
_Label_2081:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_3300:
	push	r0
	sub	r1,1,r1
	bne	_Label_3300
	mov	1729,r13		! source line 1729
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1733,r13		! source line 1733
	mov	"\0\0AS",r10
!   _temp_2088 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2088 [entry ] into _temp_2089
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_2092 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2092 [entry ] into _temp_2093
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_2091 = *_temp_2093  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2090 = _temp_2091 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2089 = _temp_2090  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1733,r13		! source line 1733
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_2094
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2095
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2096
	.word	12
	.word	4
	.word	_Label_2097
	.word	-12
	.word	4
	.word	_Label_2098
	.word	-16
	.word	4
	.word	_Label_2099
	.word	-20
	.word	4
	.word	_Label_2100
	.word	-24
	.word	4
	.word	_Label_2101
	.word	-28
	.word	4
	.word	_Label_2102
	.word	-32
	.word	4
	.word	0
_Label_2094:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2095:
	.ascii	"Pself\0"
	.align
_Label_2096:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_3301:
	push	r0
	sub	r1,1,r1
	bne	_Label_3301
	mov	1738,r13		! source line 1738
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0AS",r10
!   _temp_2103 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2103 [entry ] into _temp_2104
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_2107 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2107 [entry ] into _temp_2108
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_2106 = *_temp_2108  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2105 = _temp_2106 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2104 = _temp_2105  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_2109
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2110
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2111
	.word	12
	.word	4
	.word	_Label_2112
	.word	-12
	.word	4
	.word	_Label_2113
	.word	-16
	.word	4
	.word	_Label_2114
	.word	-20
	.word	4
	.word	_Label_2115
	.word	-24
	.word	4
	.word	_Label_2116
	.word	-28
	.word	4
	.word	_Label_2117
	.word	-32
	.word	4
	.word	0
_Label_2109:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2110:
	.ascii	"Pself\0"
	.align
_Label_2111:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_3302:
	push	r0
	sub	r1,1,r1
	bne	_Label_3302
	mov	1747,r13		! source line 1747
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0AS",r10
!   _temp_2118 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2118 [entry ] into _temp_2119
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_2122 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2122 [entry ] into _temp_2123
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_2121 = *_temp_2123  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2120 = _temp_2121 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2119 = _temp_2120  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_2124
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2125
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2126
	.word	12
	.word	4
	.word	_Label_2127
	.word	-12
	.word	4
	.word	_Label_2128
	.word	-16
	.word	4
	.word	_Label_2129
	.word	-20
	.word	4
	.word	_Label_2130
	.word	-24
	.word	4
	.word	_Label_2131
	.word	-28
	.word	4
	.word	_Label_2132
	.word	-32
	.word	4
	.word	0
_Label_2124:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2125:
	.ascii	"Pself\0"
	.align
_Label_2126:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_3303:
	push	r0
	sub	r1,1,r1
	bne	_Label_3303
	mov	1756,r13		! source line 1756
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0AS",r10
!   _temp_2133 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2133 [entry ] into _temp_2134
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_2137 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2137 [entry ] into _temp_2138
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_2136 = *_temp_2138  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2135 = _temp_2136 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2134 = _temp_2135  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_2139
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2140
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2141
	.word	12
	.word	4
	.word	_Label_2142
	.word	-12
	.word	4
	.word	_Label_2143
	.word	-16
	.word	4
	.word	_Label_2144
	.word	-20
	.word	4
	.word	_Label_2145
	.word	-24
	.word	4
	.word	_Label_2146
	.word	-28
	.word	4
	.word	_Label_2147
	.word	-32
	.word	4
	.word	0
_Label_2139:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2140:
	.ascii	"Pself\0"
	.align
_Label_2141:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_3304:
	push	r0
	sub	r1,1,r1
	bne	_Label_3304
	mov	1765,r13		! source line 1765
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1769,r13		! source line 1769
	mov	"\0\0AS",r10
!   _temp_2148 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2148 [entry ] into _temp_2149
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_2152 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2152 [entry ] into _temp_2153
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_2151 = *_temp_2153  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2150 = _temp_2151 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2149 = _temp_2150  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1769,r13		! source line 1769
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_2154
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2155
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2156
	.word	12
	.word	4
	.word	_Label_2157
	.word	-12
	.word	4
	.word	_Label_2158
	.word	-16
	.word	4
	.word	_Label_2159
	.word	-20
	.word	4
	.word	_Label_2160
	.word	-24
	.word	4
	.word	_Label_2161
	.word	-28
	.word	4
	.word	_Label_2162
	.word	-32
	.word	4
	.word	0
_Label_2154:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2155:
	.ascii	"Pself\0"
	.align
_Label_2156:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_3305:
	push	r0
	sub	r1,1,r1
	bne	_Label_3305
	mov	1774,r13		! source line 1774
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1778,r13		! source line 1778
	mov	"\0\0AS",r10
!   _temp_2163 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2163 [entry ] into _temp_2164
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_2167 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2167 [entry ] into _temp_2168
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_2166 = *_temp_2168  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2165 = _temp_2166 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2164 = _temp_2165  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1778,r13		! source line 1778
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_2169
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2170
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2171
	.word	12
	.word	4
	.word	_Label_2172
	.word	-12
	.word	4
	.word	_Label_2173
	.word	-16
	.word	4
	.word	_Label_2174
	.word	-20
	.word	4
	.word	_Label_2175
	.word	-24
	.word	4
	.word	_Label_2176
	.word	-28
	.word	4
	.word	_Label_2177
	.word	-32
	.word	4
	.word	0
_Label_2169:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2170:
	.ascii	"Pself\0"
	.align
_Label_2171:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_3306:
	push	r0
	sub	r1,1,r1
	bne	_Label_3306
	mov	1783,r13		! source line 1783
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2179 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2179 [0 ] into _temp_2180
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_2178 = _temp_2180		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2181 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2178  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2181  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1789,r13		! source line 1789
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1789,r13		! source line 1789
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_2182
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2183
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2184
	.word	-12
	.word	4
	.word	_Label_2185
	.word	-16
	.word	4
	.word	_Label_2186
	.word	-20
	.word	4
	.word	_Label_2187
	.word	-24
	.word	4
	.word	0
_Label_2182:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2183:
	.ascii	"Pself\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_3307:
	push	r0
	sub	r1,1,r1
	bne	_Label_3307
	mov	1794,r13		! source line 1794
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2188
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2188
	jmp	_Label_2189
_Label_2188:
! THEN...
	mov	1810,r13		! source line 1810
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2190
_Label_2189:
! ELSE...
	mov	1811,r13		! source line 1811
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2192		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2192
!	jmp	_Label_2191
_Label_2191:
! THEN...
	mov	1812,r13		! source line 1812
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1812,r13		! source line 1812
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2192:
! END IF...
_Label_2190:
! ASSIGNMENT STATEMENT...
	mov	1814,r13		! source line 1814
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0WH",r10
_Label_2193:
!	jmp	_Label_2194
_Label_2194:
	mov	1818,r13		! source line 1818
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1819,r13		! source line 1819
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2197		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2197
!	jmp	_Label_2196
_Label_2196:
! THEN...
	mov	1820,r13		! source line 1820
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2198 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2198  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1820,r13		! source line 1820
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2197:
! IF STATEMENT...
	mov	1823,r13		! source line 1823
	mov	"\0\0IF",r10
	mov	1823,r13		! source line 1823
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2202) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2201  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2201 then goto _Label_2200 else goto _Label_2199
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2199
	jmp	_Label_2200
_Label_2199:
! THEN...
	mov	1824,r13		! source line 1824
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2203 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2203  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1824,r13		! source line 1824
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2200:
! ASSIGNMENT STATEMENT...
	mov	1827,r13		! source line 1827
	mov	"\0\0AS",r10
	mov	1827,r13		! source line 1827
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2205) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2204  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2204 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0WH",r10
_Label_2206:
!   if offset >= 8192 then goto _Label_2208		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2208
!	jmp	_Label_2207
_Label_2207:
	mov	1829,r13		! source line 1829
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2209 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2209  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1833,r13		! source line 1833
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1834,r13		! source line 1834
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1835,r13		! source line 1835
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1836,r13		! source line 1836
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1837,r13		! source line 1837
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2211		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2211
!	jmp	_Label_2210
_Label_2210:
! THEN...
	mov	1838,r13		! source line 1838
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1838,r13		! source line 1838
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2211:
! END WHILE...
	jmp	_Label_2206
_Label_2208:
! ASSIGNMENT STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1842,r13		! source line 1842
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2193
_Label_2195:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2212
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2213
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2214
	.word	12
	.word	4
	.word	_Label_2215
	.word	16
	.word	4
	.word	_Label_2216
	.word	20
	.word	4
	.word	_Label_2217
	.word	-9
	.word	1
	.word	_Label_2218
	.word	-16
	.word	4
	.word	_Label_2219
	.word	-20
	.word	4
	.word	_Label_2220
	.word	-24
	.word	4
	.word	_Label_2221
	.word	-28
	.word	4
	.word	_Label_2222
	.word	-10
	.word	1
	.word	_Label_2223
	.word	-32
	.word	4
	.word	_Label_2224
	.word	-36
	.word	4
	.word	_Label_2225
	.word	-40
	.word	4
	.word	_Label_2226
	.word	-44
	.word	4
	.word	_Label_2227
	.word	-48
	.word	4
	.word	0
_Label_2212:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2213:
	.ascii	"Pself\0"
	.align
_Label_2214:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2215:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2216:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2217:
	.byte	'C'
	.ascii	"_temp_2209\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2220:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2222:
	.byte	'C'
	.ascii	"_temp_2201\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2224:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2225:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2226:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2227:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_3308:
	push	r0
	sub	r1,1,r1
	bne	_Label_3308
	mov	1848,r13		! source line 1848
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1859,r13		! source line 1859
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2228
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2228
	jmp	_Label_2229
_Label_2228:
! THEN...
	mov	1860,r13		! source line 1860
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2230
_Label_2229:
! ELSE...
	mov	1861,r13		! source line 1861
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1861,r13		! source line 1861
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2232		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2232
!	jmp	_Label_2231
_Label_2231:
! THEN...
	mov	1862,r13		! source line 1862
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2232:
! END IF...
_Label_2230:
! ASSIGNMENT STATEMENT...
	mov	1864,r13		! source line 1864
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1865,r13		! source line 1865
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1866,r13		! source line 1866
	mov	"\0\0WH",r10
_Label_2233:
!	jmp	_Label_2234
_Label_2234:
	mov	1866,r13		! source line 1866
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1867,r13		! source line 1867
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2239		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2239
	jmp	_Label_2236
_Label_2239:
	mov	1868,r13		! source line 1868
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2241) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2240  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2240 then goto _Label_2238 else goto _Label_2236
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2236
	jmp	_Label_2238
_Label_2238:
	mov	1869,r13		! source line 1869
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2243) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_2242  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2242 then goto _Label_2237 else goto _Label_2236
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2236
	jmp	_Label_2237
_Label_2236:
! THEN...
	mov	1870,r13		! source line 1870
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1870,r13		! source line 1870
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2237:
! ASSIGNMENT STATEMENT...
	mov	1872,r13		! source line 1872
	mov	"\0\0AS",r10
	mov	1872,r13		! source line 1872
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2245) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2244  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2244 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1873,r13		! source line 1873
	mov	"\0\0WH",r10
_Label_2246:
!   if offset >= 8192 then goto _Label_2248		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2248
!	jmp	_Label_2247
_Label_2247:
	mov	1873,r13		! source line 1873
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1874,r13		! source line 1874
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2249 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2249  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1875,r13		! source line 1875
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1876,r13		! source line 1876
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1879,r13		! source line 1879
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2251		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2251
!	jmp	_Label_2250
_Label_2250:
! THEN...
	mov	1880,r13		! source line 1880
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1880,r13		! source line 1880
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2251:
! END WHILE...
	jmp	_Label_2246
_Label_2248:
! ASSIGNMENT STATEMENT...
	mov	1883,r13		! source line 1883
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1884,r13		! source line 1884
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2233
_Label_2235:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2252
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2253
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2254
	.word	12
	.word	4
	.word	_Label_2255
	.word	16
	.word	4
	.word	_Label_2256
	.word	20
	.word	4
	.word	_Label_2257
	.word	-9
	.word	1
	.word	_Label_2258
	.word	-16
	.word	4
	.word	_Label_2259
	.word	-20
	.word	4
	.word	_Label_2260
	.word	-24
	.word	4
	.word	_Label_2261
	.word	-10
	.word	1
	.word	_Label_2262
	.word	-28
	.word	4
	.word	_Label_2263
	.word	-11
	.word	1
	.word	_Label_2264
	.word	-32
	.word	4
	.word	_Label_2265
	.word	-36
	.word	4
	.word	_Label_2266
	.word	-40
	.word	4
	.word	_Label_2267
	.word	-44
	.word	4
	.word	0
_Label_2252:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2253:
	.ascii	"Pself\0"
	.align
_Label_2254:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2255:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2256:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2257:
	.byte	'C'
	.ascii	"_temp_2249\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2261:
	.byte	'C'
	.ascii	"_temp_2242\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2263:
	.byte	'C'
	.ascii	"_temp_2240\0"
	.align
_Label_2264:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2265:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2266:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2267:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_3309:
	push	r0
	sub	r1,1,r1
	bne	_Label_3309
	mov	1890,r13		! source line 1890
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1914,r13		! source line 1914
	mov	"\0\0IF",r10
	mov	1914,r13		! source line 1914
	mov	"\0\0SE",r10
!   _temp_2271 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2272) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2271  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2270  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2270 >= 4 then goto _Label_2269		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2269
!	jmp	_Label_2268
_Label_2268:
! THEN...
	mov	1917,r13		! source line 1917
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2269:
! IF STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2274		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2274
!	jmp	_Label_2273
_Label_2273:
! THEN...
	mov	1922,r13		! source line 1922
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1922,r13		! source line 1922
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2274:
! ASSIGNMENT STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1927,r13		! source line 1927
	mov	"\0\0RE",r10
	mov	1927,r13		! source line 1927
	mov	"\0\0SE",r10
!   _temp_2277 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2276 = _temp_2277 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2278 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2279) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2276  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2278  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2275  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2275  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_2280
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2281
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2282
	.word	12
	.word	4
	.word	_Label_2283
	.word	16
	.word	4
	.word	_Label_2284
	.word	20
	.word	4
	.word	_Label_2285
	.word	-12
	.word	4
	.word	_Label_2286
	.word	-16
	.word	4
	.word	_Label_2287
	.word	-20
	.word	4
	.word	_Label_2288
	.word	-24
	.word	4
	.word	_Label_2289
	.word	-28
	.word	4
	.word	_Label_2290
	.word	-32
	.word	4
	.word	_Label_2291
	.word	-36
	.word	4
	.word	_Label_2292
	.word	-40
	.word	4
	.word	_Label_2293
	.word	-44
	.word	4
	.word	0
_Label_2280:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2281:
	.ascii	"Pself\0"
	.align
_Label_2282:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2283:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2284:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2293:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2294
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2294:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2295
	.word	_sourceFileName
	.word	360		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2295:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3310:
	push	r0
	sub	r1,1,r1
	bne	_Label_3310
	mov	2266,r13		! source line 2266
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2296 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2296  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2267,r13		! source line 2267
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2271,r13		! source line 2271
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2273,r13		! source line 2273
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2274,r13		! source line 2274
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2275,r13		! source line 2275
	mov	"\0\0SE",r10
!   _temp_2298 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0SE",r10
!   _temp_2300 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2301
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2302
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2303
	.word	-12
	.word	4
	.word	_Label_2304
	.word	-16
	.word	4
	.word	_Label_2305
	.word	-20
	.word	4
	.word	_Label_2306
	.word	-24
	.word	4
	.word	_Label_2307
	.word	-28
	.word	4
	.word	0
_Label_2301:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2302:
	.ascii	"Pself\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3311:
	push	r0
	sub	r1,1,r1
	bne	_Label_3311
	mov	2282,r13		! source line 2282
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0SE",r10
!   _temp_2308 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2296,r13		! source line 2296
	mov	"\0\0WH",r10
_Label_2309:
!	jmp	_Label_2310
_Label_2310:
	mov	2296,r13		! source line 2296
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0SE",r10
!   _temp_2312 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2313) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2312  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0SE",r10
!   _temp_2314 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2303,r13		! source line 2303
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2323 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2317
	cmp	r1,2
	be	_Label_2318
	cmp	r1,3
	be	_Label_2319
	cmp	r1,4
	be	_Label_2320
	cmp	r1,5
	be	_Label_2321
	cmp	r1,6
	be	_Label_2322
	jmp	_Label_2315
! CASE 1...
_Label_2317:
! SEND STATEMENT...
	mov	2305,r13		! source line 2305
	mov	"\0\0SE",r10
!   _temp_2324 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2306,r13		! source line 2306
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2318:
! CALL STATEMENT...
!   _temp_2325 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2325  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2308,r13		! source line 2308
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2319:
! CALL STATEMENT...
!   _temp_2326 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2326  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2310,r13		! source line 2310
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2320:
! CALL STATEMENT...
!   _temp_2327 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2327  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2312,r13		! source line 2312
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2321:
! BREAK STATEMENT...
	mov	2316,r13		! source line 2316
	mov	"\0\0BR",r10
	jmp	_Label_2316
! CASE 6...
_Label_2322:
! CALL STATEMENT...
!   _temp_2328 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2328  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2318,r13		! source line 2318
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2315:
! CALL STATEMENT...
!   _temp_2329 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2329  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2320,r13		! source line 2320
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2316:
! END WHILE...
	jmp	_Label_2309
_Label_2311:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2330
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2331
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2332
	.word	12
	.word	4
	.word	_Label_2333
	.word	16
	.word	4
	.word	_Label_2334
	.word	20
	.word	4
	.word	_Label_2335
	.word	-12
	.word	4
	.word	_Label_2336
	.word	-16
	.word	4
	.word	_Label_2337
	.word	-20
	.word	4
	.word	_Label_2338
	.word	-24
	.word	4
	.word	_Label_2339
	.word	-28
	.word	4
	.word	_Label_2340
	.word	-32
	.word	4
	.word	_Label_2341
	.word	-36
	.word	4
	.word	_Label_2342
	.word	-40
	.word	4
	.word	_Label_2343
	.word	-44
	.word	4
	.word	_Label_2344
	.word	-48
	.word	4
	.word	_Label_2345
	.word	-52
	.word	4
	.word	0
_Label_2330:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2331:
	.ascii	"Pself\0"
	.align
_Label_2332:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2333:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2334:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2329,r13		! source line 2329
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2344,r13		! source line 2344
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2347,r13		! source line 2347
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2348,r13		! source line 2348
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2349,r13		! source line 2349
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2350,r13		! source line 2350
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2350,r13		! source line 2350
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2346
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2347
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2348
	.word	12
	.word	4
	.word	_Label_2349
	.word	16
	.word	4
	.word	_Label_2350
	.word	20
	.word	4
	.word	_Label_2351
	.word	24
	.word	4
	.word	0
_Label_2346:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2347:
	.ascii	"Pself\0"
	.align
_Label_2348:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2349:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2350:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2351:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3312:
	push	r0
	sub	r1,1,r1
	bne	_Label_3312
	mov	2355,r13		! source line 2355
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2367,r13		! source line 2367
	mov	"\0\0SE",r10
!   _temp_2352 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0WH",r10
_Label_2353:
!	jmp	_Label_2354
_Label_2354:
	mov	2368,r13		! source line 2368
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0SE",r10
!   _temp_2356 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2357) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2356  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0SE",r10
!   _temp_2358 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2374,r13		! source line 2374
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2367 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2361
	cmp	r1,2
	be	_Label_2362
	cmp	r1,3
	be	_Label_2363
	cmp	r1,4
	be	_Label_2364
	cmp	r1,5
	be	_Label_2365
	cmp	r1,6
	be	_Label_2366
	jmp	_Label_2359
! CASE 1...
_Label_2361:
! SEND STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0SE",r10
!   _temp_2368 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2377,r13		! source line 2377
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2362:
! CALL STATEMENT...
!   _temp_2369 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2369  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2379,r13		! source line 2379
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2363:
! CALL STATEMENT...
!   _temp_2370 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2370  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2381,r13		! source line 2381
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2364:
! CALL STATEMENT...
!   _temp_2371 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2371  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2383,r13		! source line 2383
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2365:
! BREAK STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0BR",r10
	jmp	_Label_2360
! CASE 6...
_Label_2366:
! CALL STATEMENT...
!   _temp_2372 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2372  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2389,r13		! source line 2389
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2359:
! CALL STATEMENT...
!   _temp_2373 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2373  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2391,r13		! source line 2391
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2360:
! END WHILE...
	jmp	_Label_2353
_Label_2355:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2374
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2375
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2376
	.word	12
	.word	4
	.word	_Label_2377
	.word	16
	.word	4
	.word	_Label_2378
	.word	20
	.word	4
	.word	_Label_2379
	.word	-12
	.word	4
	.word	_Label_2380
	.word	-16
	.word	4
	.word	_Label_2381
	.word	-20
	.word	4
	.word	_Label_2382
	.word	-24
	.word	4
	.word	_Label_2383
	.word	-28
	.word	4
	.word	_Label_2384
	.word	-32
	.word	4
	.word	_Label_2385
	.word	-36
	.word	4
	.word	_Label_2386
	.word	-40
	.word	4
	.word	_Label_2387
	.word	-44
	.word	4
	.word	_Label_2388
	.word	-48
	.word	4
	.word	_Label_2389
	.word	-52
	.word	4
	.word	0
_Label_2374:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2375:
	.ascii	"Pself\0"
	.align
_Label_2376:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2377:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2378:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2400,r13		! source line 2400
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2418,r13		! source line 2418
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2419,r13		! source line 2419
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2420,r13		! source line 2420
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2420,r13		! source line 2420
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2390
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2391
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2392
	.word	12
	.word	4
	.word	_Label_2393
	.word	16
	.word	4
	.word	_Label_2394
	.word	20
	.word	4
	.word	_Label_2395
	.word	24
	.word	4
	.word	0
_Label_2390:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2391:
	.ascii	"Pself\0"
	.align
_Label_2392:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2393:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2394:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2395:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2396
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2396:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2397
	.word	_sourceFileName
	.word	383		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2397:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3313:
	push	r0
	sub	r1,1,r1
	bne	_Label_3313
	mov	2431,r13		! source line 2431
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2398 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2398  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2438,r13		! source line 2438
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2439,r13		! source line 2439
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0SE",r10
!   _temp_2400 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2445,r13		! source line 2445
	mov	"\0\0SE",r10
!   _temp_2403 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2446,r13		! source line 2446
	mov	"\0\0AS",r10
!   _temp_2404 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2406 = &_temp_2405
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2406 = _temp_2406 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2408 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3314:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3314
!   _temp_2408 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2410:
!   Data Move: *_temp_2406 = _temp_2408  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3315:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3315
!   _temp_2406 = _temp_2406 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2407 = _temp_2407 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2407) then goto _Label_2410
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2410
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2411 = &_temp_2405
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3316
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3316:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2404 = *_temp_2411  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3317:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3317
! FOR STATEMENT...
	mov	2448,r13		! source line 2448
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2416 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2417 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2416  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2412:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2417 then goto _Label_2415		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2415
_Label_2413:
	mov	2448,r13		! source line 2448
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0AS",r10
!   _temp_2418 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2418 [i ] into _temp_2419
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2420 = _temp_2419 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2420 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2450,r13		! source line 2450
	mov	"\0\0SE",r10
!   _temp_2421 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2421 [i ] into _temp_2422
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0SE",r10
!   _temp_2424 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2424 [i ] into _temp_2425
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2423 = _temp_2425		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2426 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2423  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2414:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2412
! END FOR
_Label_2415:
! ASSIGNMENT STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0SE",r10
!   _temp_2429 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2458,r13		! source line 2458
	mov	"\0\0AS",r10
!   _temp_2430 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2432 = &_temp_2431
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2432 = _temp_2432 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2434 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3318:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3318
!   _temp_2434 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2436:
!   Data Move: *_temp_2432 = _temp_2434  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3319:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3319
!   _temp_2432 = _temp_2432 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2433 = _temp_2433 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2433) then goto _Label_2436
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2436
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2437 = &_temp_2431
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3320
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3320:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2430 = *_temp_2437  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3321:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3321
! FOR STATEMENT...
	mov	2460,r13		! source line 2460
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2442 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2443 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2442  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2438:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2443 then goto _Label_2441		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2441
_Label_2439:
	mov	2460,r13		! source line 2460
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2461,r13		! source line 2461
	mov	"\0\0AS",r10
!   _temp_2444 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2444 [i ] into _temp_2445
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2446 = _temp_2445 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2446 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2462,r13		! source line 2462
	mov	"\0\0SE",r10
!   _temp_2448 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2448 [i ] into _temp_2449
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2447 = _temp_2449		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2450 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2447  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2440:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2438
! END FOR
_Label_2441:
! ASSIGNMENT STATEMENT...
	mov	2466,r13		! source line 2466
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3322:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3322
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2467,r13		! source line 2467
	mov	"\0\0AS",r10
!   _temp_2452 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2453 = _temp_2452 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2453 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2472,r13		! source line 2472
	mov	"\0\0AS",r10
	mov	2472,r13		! source line 2472
	mov	"\0\0SE",r10
!   _temp_2454 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2473,r13		! source line 2473
	mov	"\0\0SE",r10
!   _temp_2455 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2473,r13		! source line 2473
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2456
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2457
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2458
	.word	-12
	.word	4
	.word	_Label_2459
	.word	-16
	.word	4
	.word	_Label_2460
	.word	-20
	.word	4
	.word	_Label_2461
	.word	-24
	.word	4
	.word	_Label_2462
	.word	-28
	.word	4
	.word	_Label_2463
	.word	-32
	.word	4
	.word	_Label_2464
	.word	-36
	.word	4
	.word	_Label_2465
	.word	-40
	.word	4
	.word	_Label_2466
	.word	-44
	.word	4
	.word	_Label_2467
	.word	-48
	.word	4
	.word	_Label_2468
	.word	-52
	.word	4
	.word	_Label_2469
	.word	-56
	.word	4
	.word	_Label_2470
	.word	-60
	.word	4
	.word	_Label_2471
	.word	-64
	.word	4
	.word	_Label_2472
	.word	-68
	.word	4
	.word	_Label_2473
	.word	-72
	.word	4
	.word	_Label_2474
	.word	-100
	.word	28
	.word	_Label_2475
	.word	-104
	.word	4
	.word	_Label_2476
	.word	-108
	.word	4
	.word	_Label_2477
	.word	-392
	.word	284
	.word	_Label_2478
	.word	-396
	.word	4
	.word	_Label_2479
	.word	-400
	.word	4
	.word	_Label_2480
	.word	-404
	.word	4
	.word	_Label_2481
	.word	-408
	.word	4
	.word	_Label_2482
	.word	-412
	.word	4
	.word	_Label_2483
	.word	-416
	.word	4
	.word	_Label_2484
	.word	-420
	.word	4
	.word	_Label_2485
	.word	-424
	.word	4
	.word	_Label_2486
	.word	-428
	.word	4
	.word	_Label_2487
	.word	-432
	.word	4
	.word	_Label_2488
	.word	-436
	.word	4
	.word	_Label_2489
	.word	-440
	.word	4
	.word	_Label_2490
	.word	-444
	.word	4
	.word	_Label_2491
	.word	-448
	.word	4
	.word	_Label_2492
	.word	-452
	.word	4
	.word	_Label_2493
	.word	-456
	.word	4
	.word	_Label_2494
	.word	-460
	.word	4
	.word	_Label_2495
	.word	-500
	.word	40
	.word	_Label_2496
	.word	-504
	.word	4
	.word	_Label_2497
	.word	-508
	.word	4
	.word	_Label_2498
	.word	-912
	.word	404
	.word	_Label_2499
	.word	-916
	.word	4
	.word	_Label_2500
	.word	-920
	.word	4
	.word	_Label_2501
	.word	-924
	.word	4
	.word	_Label_2502
	.word	-928
	.word	4
	.word	_Label_2503
	.word	-932
	.word	4
	.word	_Label_2504
	.word	-936
	.word	4
	.word	_Label_2505
	.word	-940
	.word	4
	.word	_Label_2506
	.word	-944
	.word	4
	.word	0
_Label_2456:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2457:
	.ascii	"Pself\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2411\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2506:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3323:
	push	r0
	sub	r1,1,r1
	bne	_Label_3323
	mov	2480,r13		! source line 2480
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2482,r13		! source line 2482
	mov	"\0\0SE",r10
!   _temp_2507 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2508 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2508  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2483,r13		! source line 2483
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2513 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2514 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2513  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2509:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2514 then goto _Label_2512		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2512
_Label_2510:
	mov	2484,r13		! source line 2484
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2515 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2515  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2485,r13		! source line 2485
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2486,r13		! source line 2486
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2516 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2516  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2487,r13		! source line 2487
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0SE",r10
!   _temp_2517 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2517 [i ] into _temp_2518
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2511:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2509
! END FOR
_Label_2512:
! CALL STATEMENT...
!   _temp_2519 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2519  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2490,r13		! source line 2490
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2491,r13		! source line 2491
	mov	"\0\0SE",r10
!   _temp_2520 = _function_211_printFCB
	set	_function_211_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2521 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2520  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2492,r13		! source line 2492
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2522 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2522  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2493,r13		! source line 2493
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2527 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2528 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2527  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2523:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2528 then goto _Label_2526		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2526
_Label_2524:
	mov	2494,r13		! source line 2494
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2529 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2529  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2495,r13		! source line 2495
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2496,r13		! source line 2496
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2530 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2530  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2497,r13		! source line 2497
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2532 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2532 [i ] into _temp_2533
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2531 = _temp_2533		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2531  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2498,r13		! source line 2498
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2534 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2534  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2499,r13		! source line 2499
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2500,r13		! source line 2500
	mov	"\0\0SE",r10
!   _temp_2535 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2535 [i ] into _temp_2536
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2525:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2523
! END FOR
_Label_2526:
! CALL STATEMENT...
!   _temp_2537 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2537  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2502,r13		! source line 2502
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2503,r13		! source line 2503
	mov	"\0\0SE",r10
!   _temp_2538 = _function_210_printOpen
	set	_function_210_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2539 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2538  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0SE",r10
!   _temp_2540 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2504,r13		! source line 2504
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2541
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2542
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2543
	.word	-12
	.word	4
	.word	_Label_2544
	.word	-16
	.word	4
	.word	_Label_2545
	.word	-20
	.word	4
	.word	_Label_2546
	.word	-24
	.word	4
	.word	_Label_2547
	.word	-28
	.word	4
	.word	_Label_2548
	.word	-32
	.word	4
	.word	_Label_2549
	.word	-36
	.word	4
	.word	_Label_2550
	.word	-40
	.word	4
	.word	_Label_2551
	.word	-44
	.word	4
	.word	_Label_2552
	.word	-48
	.word	4
	.word	_Label_2553
	.word	-52
	.word	4
	.word	_Label_2554
	.word	-56
	.word	4
	.word	_Label_2555
	.word	-60
	.word	4
	.word	_Label_2556
	.word	-64
	.word	4
	.word	_Label_2557
	.word	-68
	.word	4
	.word	_Label_2558
	.word	-72
	.word	4
	.word	_Label_2559
	.word	-76
	.word	4
	.word	_Label_2560
	.word	-80
	.word	4
	.word	_Label_2561
	.word	-84
	.word	4
	.word	_Label_2562
	.word	-88
	.word	4
	.word	_Label_2563
	.word	-92
	.word	4
	.word	_Label_2564
	.word	-96
	.word	4
	.word	_Label_2565
	.word	-100
	.word	4
	.word	_Label_2566
	.word	-104
	.word	4
	.word	_Label_2567
	.word	-108
	.word	4
	.word	_Label_2568
	.word	-112
	.word	4
	.word	_Label_2569
	.word	-116
	.word	4
	.word	0
_Label_2541:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2542:
	.ascii	"Pself\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2569:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3324:
	push	r0
	sub	r1,1,r1
	bne	_Label_3324
	mov	2509,r13		! source line 2509
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0AS",r10
	mov	2525,r13		! source line 2525
	mov	"\0\0SE",r10
!   _temp_2570 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2526,r13		! source line 2526
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2571
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2571
	jmp	_Label_2572
_Label_2571:
! THEN...
	mov	2527,r13		! source line 2527
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2527,r13		! source line 2527
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2572:
! SEND STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0SE",r10
!   _temp_2573 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0WH",r10
_Label_2574:
	mov	2532,r13		! source line 2532
	mov	"\0\0SE",r10
!   _temp_2577 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2575 else goto _Label_2576
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2576
	jmp	_Label_2575
_Label_2575:
	mov	2532,r13		! source line 2532
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2533,r13		! source line 2533
	mov	"\0\0SE",r10
!   _temp_2578 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2579 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2578  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2574
_Label_2576:
! ASSIGNMENT STATEMENT...
	mov	2535,r13		! source line 2535
	mov	"\0\0AS",r10
	mov	2535,r13		! source line 2535
	mov	"\0\0SE",r10
!   _temp_2580 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2581 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2581 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2582 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2582 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2542,r13		! source line 2542
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2583 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2583 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2544,r13		! source line 2544
	mov	"\0\0SE",r10
!   _temp_2584 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2545,r13		! source line 2545
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2585
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2586
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2587
	.word	12
	.word	4
	.word	_Label_2588
	.word	-12
	.word	4
	.word	_Label_2589
	.word	-16
	.word	4
	.word	_Label_2590
	.word	-20
	.word	4
	.word	_Label_2591
	.word	-24
	.word	4
	.word	_Label_2592
	.word	-28
	.word	4
	.word	_Label_2593
	.word	-32
	.word	4
	.word	_Label_2594
	.word	-36
	.word	4
	.word	_Label_2595
	.word	-40
	.word	4
	.word	_Label_2596
	.word	-44
	.word	4
	.word	_Label_2597
	.word	-48
	.word	4
	.word	_Label_2598
	.word	-52
	.word	4
	.word	_Label_2599
	.word	-56
	.word	4
	.word	0
_Label_2585:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2586:
	.ascii	"Pself\0"
	.align
_Label_2587:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2598:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2599:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3325:
	push	r0
	sub	r1,1,r1
	bne	_Label_3325
	mov	2550,r13		! source line 2550
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2575,r13		! source line 2575
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2578,r13		! source line 2578
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2579,r13		! source line 2579
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2580,r13		! source line 2580
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2601		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2601
!	jmp	_Label_2600
_Label_2600:
! THEN...
	mov	2581,r13		! source line 2581
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2602 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2602  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2581,r13		! source line 2581
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2601:
! ASSIGNMENT STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2587,r13		! source line 2587
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0WH",r10
_Label_2603:
!   if numFiles <= 0 then goto _Label_2605		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2605
!	jmp	_Label_2604
_Label_2604:
	mov	2591,r13		! source line 2591
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2606 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2606  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2592,r13		! source line 2592
	mov	"\0\0CA",r10
	call	_function_212_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2607 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2607  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2594,r13		! source line 2594
	mov	"\0\0CA",r10
	call	_function_212_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2608 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2608  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2596,r13		! source line 2596
	mov	"\0\0CA",r10
	call	_function_212_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2598,r13		! source line 2598
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2612 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2612 then goto _Label_2610		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2610
!	jmp	_Label_2611
_Label_2611:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2614
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2613 = _temp_2614		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2613  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2599,r13		! source line 2599
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2609 else goto _Label_2610
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2610
	jmp	_Label_2609
_Label_2609:
! THEN...
	mov	2600,r13		! source line 2600
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0BR",r10
	jmp	_Label_2605
! END IF...
_Label_2610:
! ASSIGNMENT STATEMENT...
	mov	2602,r13		! source line 2602
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2603
_Label_2605:
! IF STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2616		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2616
!	jmp	_Label_2615
_Label_2615:
! THEN...
	mov	2608,r13		! source line 2608
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2616:
! SEND STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0SE",r10
!   _temp_2617 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2622 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2623 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2622  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2618:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2623 then goto _Label_2621		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2621
_Label_2619:
	mov	2613,r13		! source line 2613
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2614,r13		! source line 2614
	mov	"\0\0AS",r10
!   _temp_2624 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2624 [i ] into _temp_2625
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2625		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2615,r13		! source line 2615
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2629 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2628 = *_temp_2629  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2628 != start then goto _Label_2627		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2627
!	jmp	_Label_2626
_Label_2626:
! THEN...
	mov	2616,r13		! source line 2616
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2616,r13		! source line 2616
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2630 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2633 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2632 = *_temp_2633  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2631 = _temp_2632 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2630 = _temp_2631  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2617,r13		! source line 2617
	mov	"\0\0SE",r10
!   _temp_2634 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2627:
!   Increment the FOR-LOOP index variable and jump back
_Label_2620:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2618
! END FOR
_Label_2621:
! WHILE STATEMENT...
	mov	2623,r13		! source line 2623
	mov	"\0\0WH",r10
_Label_2635:
	mov	2623,r13		! source line 2623
	mov	"\0\0SE",r10
!   _temp_2638 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2636 else goto _Label_2637
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2637
	jmp	_Label_2636
_Label_2636:
	mov	2623,r13		! source line 2623
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0SE",r10
!   _temp_2639 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2640 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2639  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2635
_Label_2637:
! ASSIGNMENT STATEMENT...
	mov	2626,r13		! source line 2626
	mov	"\0\0AS",r10
	mov	2626,r13		! source line 2626
	mov	"\0\0SE",r10
!   _temp_2641 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0SE",r10
!   _temp_2642 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2643 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2643 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2633,r13		! source line 2633
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2644 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2644 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2645 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2645 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2635,r13		! source line 2635
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2650 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2649 = *_temp_2650  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2649 < 0 then goto _Label_2648		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2648
	jmp	_Label_2646
_Label_2648:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2651 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2651 ) then goto _Label_2647		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2647
!	jmp	_Label_2646
_Label_2646:
! THEN...
	mov	2636,r13		! source line 2636
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2652 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2652  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2636,r13		! source line 2636
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2647:
! RETURN STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2653
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2654
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2655
	.word	12
	.word	4
	.word	_Label_2656
	.word	-12
	.word	4
	.word	_Label_2657
	.word	-16
	.word	4
	.word	_Label_2658
	.word	-20
	.word	4
	.word	_Label_2659
	.word	-24
	.word	4
	.word	_Label_2660
	.word	-28
	.word	4
	.word	_Label_2661
	.word	-32
	.word	4
	.word	_Label_2662
	.word	-36
	.word	4
	.word	_Label_2663
	.word	-40
	.word	4
	.word	_Label_2664
	.word	-44
	.word	4
	.word	_Label_2665
	.word	-48
	.word	4
	.word	_Label_2666
	.word	-52
	.word	4
	.word	_Label_2667
	.word	-56
	.word	4
	.word	_Label_2668
	.word	-60
	.word	4
	.word	_Label_2669
	.word	-64
	.word	4
	.word	_Label_2670
	.word	-68
	.word	4
	.word	_Label_2671
	.word	-72
	.word	4
	.word	_Label_2672
	.word	-76
	.word	4
	.word	_Label_2673
	.word	-80
	.word	4
	.word	_Label_2674
	.word	-84
	.word	4
	.word	_Label_2675
	.word	-88
	.word	4
	.word	_Label_2676
	.word	-92
	.word	4
	.word	_Label_2677
	.word	-96
	.word	4
	.word	_Label_2678
	.word	-100
	.word	4
	.word	_Label_2679
	.word	-104
	.word	4
	.word	_Label_2680
	.word	-108
	.word	4
	.word	_Label_2681
	.word	-112
	.word	4
	.word	_Label_2682
	.word	-116
	.word	4
	.word	_Label_2683
	.word	-120
	.word	4
	.word	_Label_2684
	.word	-124
	.word	4
	.word	_Label_2685
	.word	-128
	.word	4
	.word	_Label_2686
	.word	-132
	.word	4
	.word	_Label_2687
	.word	-136
	.word	4
	.word	_Label_2688
	.word	-140
	.word	4
	.word	_Label_2689
	.word	-144
	.word	4
	.word	_Label_2690
	.word	-148
	.word	4
	.word	_Label_2691
	.word	-152
	.word	4
	.word	_Label_2692
	.word	-156
	.word	4
	.word	_Label_2693
	.word	-160
	.word	4
	.word	0
_Label_2653:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2654:
	.ascii	"Pself\0"
	.align
_Label_2655:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2687:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2688:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2689:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2690:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2691:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2692:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2693:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3326:
	push	r0
	sub	r1,1,r1
	bne	_Label_3326
	mov	2651,r13		! source line 2651
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0IF",r10
!   _temp_2696 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2696 then goto _Label_2695		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2695
!	jmp	_Label_2694
_Label_2694:
! THEN...
	mov	2654,r13		! source line 2654
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2654,r13		! source line 2654
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2695:
! SEND STATEMENT...
	mov	2656,r13		! source line 2656
	mov	"\0\0SE",r10
!   _temp_2697 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0SE",r10
!   _temp_2698 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2699 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2699  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2659,r13		! source line 2659
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2700 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2703 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2702 = *_temp_2703  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2701 = _temp_2702 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2700 = _temp_2701  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2707 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2706 = *_temp_2707  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2706 > 0 then goto _Label_2705		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2705
!	jmp	_Label_2704
_Label_2704:
! THEN...
	mov	2661,r13		! source line 2661
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0SE",r10
!   _temp_2708 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0SE",r10
!   _temp_2709 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2710 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2709  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2663,r13		! source line 2663
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2711 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2714 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2713 = *_temp_2714  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2712 = _temp_2713 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2711 = _temp_2712  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2664,r13		! source line 2664
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2718 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2717 = *_temp_2718  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2717 > 0 then goto _Label_2716		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2716
!	jmp	_Label_2715
_Label_2715:
! THEN...
	mov	2665,r13		! source line 2665
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2665,r13		! source line 2665
	mov	"\0\0SE",r10
!   _temp_2719 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2666,r13		! source line 2666
	mov	"\0\0SE",r10
!   _temp_2720 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2721 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2720  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2716:
! END IF...
_Label_2705:
! SEND STATEMENT...
	mov	2669,r13		! source line 2669
	mov	"\0\0SE",r10
!   _temp_2722 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2669,r13		! source line 2669
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2723
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2724
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2725
	.word	12
	.word	4
	.word	_Label_2726
	.word	-12
	.word	4
	.word	_Label_2727
	.word	-16
	.word	4
	.word	_Label_2728
	.word	-20
	.word	4
	.word	_Label_2729
	.word	-24
	.word	4
	.word	_Label_2730
	.word	-28
	.word	4
	.word	_Label_2731
	.word	-32
	.word	4
	.word	_Label_2732
	.word	-36
	.word	4
	.word	_Label_2733
	.word	-40
	.word	4
	.word	_Label_2734
	.word	-44
	.word	4
	.word	_Label_2735
	.word	-48
	.word	4
	.word	_Label_2736
	.word	-52
	.word	4
	.word	_Label_2737
	.word	-56
	.word	4
	.word	_Label_2738
	.word	-60
	.word	4
	.word	_Label_2739
	.word	-64
	.word	4
	.word	_Label_2740
	.word	-68
	.word	4
	.word	_Label_2741
	.word	-72
	.word	4
	.word	_Label_2742
	.word	-76
	.word	4
	.word	_Label_2743
	.word	-80
	.word	4
	.word	_Label_2744
	.word	-84
	.word	4
	.word	_Label_2745
	.word	-88
	.word	4
	.word	_Label_2746
	.word	-92
	.word	4
	.word	_Label_2747
	.word	-96
	.word	4
	.word	_Label_2748
	.word	-100
	.word	4
	.word	_Label_2749
	.word	-104
	.word	4
	.word	0
_Label_2723:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2724:
	.ascii	"Pself\0"
	.align
_Label_2725:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2749:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3327:
	push	r0
	sub	r1,1,r1
	bne	_Label_3327
	mov	2674,r13		! source line 2674
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2679,r13		! source line 2679
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2753 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2752 = *_temp_2753  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2752) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2754 = _temp_2752 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2754 ) then goto _Label_2751		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2751
!	jmp	_Label_2750
_Label_2750:
! THEN...
	mov	2680,r13		! source line 2680
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2680,r13		! source line 2680
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2759 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2758 = *_temp_2759  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2758) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2760 = _temp_2758 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2757 = *_temp_2760  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2757 >= 0 then goto _Label_2756		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2756
!	jmp	_Label_2755
_Label_2755:
! THEN...
	mov	2681,r13		! source line 2681
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2761 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2761  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2681,r13		! source line 2681
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2756:
! ASSIGNMENT STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2763 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2762 = *_temp_2763  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2762) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2764 = _temp_2762 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2764 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2768 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2767 = *_temp_2768  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2767) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2769 = _temp_2767 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2766 = *_temp_2769  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2772 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2771 = *_temp_2772  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2771) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2773 = _temp_2771 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2770 = *_temp_2773  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2765 = _temp_2766 + _temp_2770		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2776 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2775 = *_temp_2776  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2775) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2777 = _temp_2775 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2774 = *_temp_2777  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2778 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2765  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2774  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2751:
! RETURN STATEMENT...
	mov	2679,r13		! source line 2679
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2779
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2780
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2781
	.word	12
	.word	4
	.word	_Label_2782
	.word	-12
	.word	4
	.word	_Label_2783
	.word	-16
	.word	4
	.word	_Label_2784
	.word	-20
	.word	4
	.word	_Label_2785
	.word	-24
	.word	4
	.word	_Label_2786
	.word	-28
	.word	4
	.word	_Label_2787
	.word	-32
	.word	4
	.word	_Label_2788
	.word	-36
	.word	4
	.word	_Label_2789
	.word	-40
	.word	4
	.word	_Label_2790
	.word	-44
	.word	4
	.word	_Label_2791
	.word	-48
	.word	4
	.word	_Label_2792
	.word	-52
	.word	4
	.word	_Label_2793
	.word	-56
	.word	4
	.word	_Label_2794
	.word	-60
	.word	4
	.word	_Label_2795
	.word	-64
	.word	4
	.word	_Label_2796
	.word	-68
	.word	4
	.word	_Label_2797
	.word	-72
	.word	4
	.word	_Label_2798
	.word	-76
	.word	4
	.word	_Label_2799
	.word	-80
	.word	4
	.word	_Label_2800
	.word	-84
	.word	4
	.word	_Label_2801
	.word	-88
	.word	4
	.word	_Label_2802
	.word	-92
	.word	4
	.word	_Label_2803
	.word	-96
	.word	4
	.word	_Label_2804
	.word	-100
	.word	4
	.word	_Label_2805
	.word	-104
	.word	4
	.word	_Label_2806
	.word	-108
	.word	4
	.word	0
_Label_2779:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2780:
	.ascii	"Pself\0"
	.align
_Label_2781:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2766\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2765\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2754\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3328:
	push	r0
	sub	r1,1,r1
	bne	_Label_3328
	mov	2693,r13		! source line 2693
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0SE",r10
!   _temp_2807 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2709,r13		! source line 2709
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2813		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2813
!   _temp_2812 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2814
_Label_2813:
!   _temp_2812 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2814:
!   if _temp_2812 then goto _Label_2811 else goto _Label_2808
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2808
	jmp	_Label_2811
_Label_2811:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2817 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2816 = *_temp_2817  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2816 == 0 then goto _Label_2818		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2818
!   _temp_2815 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2819
_Label_2818:
!   _temp_2815 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2819:
!   if _temp_2815 then goto _Label_2810 else goto _Label_2808
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2808
	jmp	_Label_2810
_Label_2810:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2822 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2821 = *_temp_2822  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2821) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2823 = _temp_2821 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2820 = *_temp_2823  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2820 >= 0 then goto _Label_2809		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2809
!	jmp	_Label_2808
_Label_2808:
! THEN...
	mov	2710,r13		! source line 2710
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2824 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2824  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2710,r13		! source line 2710
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2809:
! ASSIGNMENT STATEMENT...
	mov	2712,r13		! source line 2712
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2825 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2825  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2713,r13		! source line 2713
	mov	"\0\0WH",r10
_Label_2826:
!   if numBytes <= 0 then goto _Label_2828		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2828
!	jmp	_Label_2827
_Label_2827:
	mov	2713,r13		! source line 2713
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2722,r13		! source line 2722
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2723,r13		! source line 2723
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2727,r13		! source line 2727
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2832 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2831 = *_temp_2832  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2831 == sector then goto _Label_2830		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2830
!	jmp	_Label_2829
_Label_2829:
! THEN...
	mov	2728,r13		! source line 2728
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2833) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2836 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2835 = *_temp_2836  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2834 = sector + _temp_2835		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2838 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2837 = *_temp_2838  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2839 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2834  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2837  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2733,r13		! source line 2733
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2840 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2840 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2734,r13		! source line 2734
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2841 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2841 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2830:
! ASSIGNMENT STATEMENT...
	mov	2736,r13		! source line 2736
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2843 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2842 = *_temp_2843  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2842 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2737,r13		! source line 2737
	mov	"\0\0AS",r10
!   _temp_2844 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2844  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2737,r13		! source line 2737
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2741,r13		! source line 2741
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2742,r13		! source line 2742
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2743,r13		! source line 2743
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2744,r13		! source line 2744
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2826
_Label_2828:
! SEND STATEMENT...
	mov	2751,r13		! source line 2751
	mov	"\0\0SE",r10
!   _temp_2845 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2752,r13		! source line 2752
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2846
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2847
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2848
	.word	12
	.word	4
	.word	_Label_2849
	.word	16
	.word	4
	.word	_Label_2850
	.word	20
	.word	4
	.word	_Label_2851
	.word	24
	.word	4
	.word	_Label_2852
	.word	-16
	.word	4
	.word	_Label_2853
	.word	-20
	.word	4
	.word	_Label_2854
	.word	-24
	.word	4
	.word	_Label_2855
	.word	-28
	.word	4
	.word	_Label_2856
	.word	-32
	.word	4
	.word	_Label_2857
	.word	-36
	.word	4
	.word	_Label_2858
	.word	-40
	.word	4
	.word	_Label_2859
	.word	-44
	.word	4
	.word	_Label_2860
	.word	-48
	.word	4
	.word	_Label_2861
	.word	-52
	.word	4
	.word	_Label_2862
	.word	-56
	.word	4
	.word	_Label_2863
	.word	-60
	.word	4
	.word	_Label_2864
	.word	-64
	.word	4
	.word	_Label_2865
	.word	-68
	.word	4
	.word	_Label_2866
	.word	-72
	.word	4
	.word	_Label_2867
	.word	-76
	.word	4
	.word	_Label_2868
	.word	-80
	.word	4
	.word	_Label_2869
	.word	-84
	.word	4
	.word	_Label_2870
	.word	-88
	.word	4
	.word	_Label_2871
	.word	-92
	.word	4
	.word	_Label_2872
	.word	-96
	.word	4
	.word	_Label_2873
	.word	-100
	.word	4
	.word	_Label_2874
	.word	-104
	.word	4
	.word	_Label_2875
	.word	-9
	.word	1
	.word	_Label_2876
	.word	-10
	.word	1
	.word	_Label_2877
	.word	-108
	.word	4
	.word	_Label_2878
	.word	-112
	.word	4
	.word	_Label_2879
	.word	-116
	.word	4
	.word	_Label_2880
	.word	-120
	.word	4
	.word	_Label_2881
	.word	-124
	.word	4
	.word	_Label_2882
	.word	-128
	.word	4
	.word	0
_Label_2846:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2847:
	.ascii	"Pself\0"
	.align
_Label_2848:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2849:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2850:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2851:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2868:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2869:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2870:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2816\0"
	.align
_Label_2875:
	.byte	'C'
	.ascii	"_temp_2815\0"
	.align
_Label_2876:
	.byte	'C'
	.ascii	"_temp_2812\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2878:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2879:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2880:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2881:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2882:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3329:
	push	r0
	sub	r1,1,r1
	bne	_Label_3329
	mov	2757,r13		! source line 2757
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2773,r13		! source line 2773
	mov	"\0\0SE",r10
!   _temp_2883 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2774,r13		! source line 2774
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2889		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2889
!   _temp_2888 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2890
_Label_2889:
!   _temp_2888 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2890:
!   if _temp_2888 then goto _Label_2887 else goto _Label_2884
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2884
	jmp	_Label_2887
_Label_2887:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2893 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2892 = *_temp_2893  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2892 == 0 then goto _Label_2894		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2894
!   _temp_2891 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2895
_Label_2894:
!   _temp_2891 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2895:
!   if _temp_2891 then goto _Label_2886 else goto _Label_2884
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2884
	jmp	_Label_2886
_Label_2886:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2898 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2897 = *_temp_2898  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2897) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2899 = _temp_2897 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2896 = *_temp_2899  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2896 >= 0 then goto _Label_2885		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2885
!	jmp	_Label_2884
_Label_2884:
! THEN...
	mov	2775,r13		! source line 2775
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2900 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2900  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2775,r13		! source line 2775
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2885:
! ASSIGNMENT STATEMENT...
	mov	2777,r13		! source line 2777
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2901 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2901  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0WH",r10
_Label_2902:
!   if numBytes <= 0 then goto _Label_2904		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2904
!	jmp	_Label_2903
_Label_2903:
	mov	2778,r13		! source line 2778
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2787,r13		! source line 2787
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2788,r13		! source line 2788
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2792,r13		! source line 2792
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2908 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2907 = *_temp_2908  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2907 == sector then goto _Label_2906		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2906
!	jmp	_Label_2905
_Label_2905:
! THEN...
	mov	2794,r13		! source line 2794
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2794,r13		! source line 2794
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2909) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_2906:
! ASSIGNMENT STATEMENT...
	mov	2796,r13		! source line 2796
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2911 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2910 = *_temp_2911  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2910 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2797,r13		! source line 2797
	mov	"\0\0AS",r10
!   _temp_2912 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2912  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2797,r13		! source line 2797
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2798,r13		! source line 2798
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2916 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2915 = *_temp_2916  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2915 != sector then goto _Label_2914		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2914
!	jmp	_Label_2913
_Label_2913:
	jmp	_Label_2917
_Label_2914:
! ELSE...
	mov	2800,r13		! source line 2800
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2800,r13		! source line 2800
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2920
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2920
	jmp	_Label_2919
_Label_2920:
!   if bytesToMove != 8192 then goto _Label_2919		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2919
!	jmp	_Label_2918
_Label_2918:
	jmp	_Label_2921
_Label_2919:
! ELSE...
	mov	2804,r13		! source line 2804
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2804,r13		! source line 2804
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2924 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2923 = *_temp_2924  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2922 = sector + _temp_2923		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2926 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2925 = *_temp_2926  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2927 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2922  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2925  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2921:
! END IF...
_Label_2917:
! ASSIGNMENT STATEMENT...
	mov	2808,r13		! source line 2808
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2928 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2928 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2929 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2929 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2813,r13		! source line 2813
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2814,r13		! source line 2814
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2816,r13		! source line 2816
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2902
_Label_2904:
! SEND STATEMENT...
	mov	2823,r13		! source line 2823
	mov	"\0\0SE",r10
!   _temp_2930 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2825,r13		! source line 2825
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_2931
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2932
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2933
	.word	12
	.word	4
	.word	_Label_2934
	.word	16
	.word	4
	.word	_Label_2935
	.word	20
	.word	4
	.word	_Label_2936
	.word	24
	.word	4
	.word	_Label_2937
	.word	-16
	.word	4
	.word	_Label_2938
	.word	-20
	.word	4
	.word	_Label_2939
	.word	-24
	.word	4
	.word	_Label_2940
	.word	-28
	.word	4
	.word	_Label_2941
	.word	-32
	.word	4
	.word	_Label_2942
	.word	-36
	.word	4
	.word	_Label_2943
	.word	-40
	.word	4
	.word	_Label_2944
	.word	-44
	.word	4
	.word	_Label_2945
	.word	-48
	.word	4
	.word	_Label_2946
	.word	-52
	.word	4
	.word	_Label_2947
	.word	-56
	.word	4
	.word	_Label_2948
	.word	-60
	.word	4
	.word	_Label_2949
	.word	-64
	.word	4
	.word	_Label_2950
	.word	-68
	.word	4
	.word	_Label_2951
	.word	-72
	.word	4
	.word	_Label_2952
	.word	-76
	.word	4
	.word	_Label_2953
	.word	-80
	.word	4
	.word	_Label_2954
	.word	-84
	.word	4
	.word	_Label_2955
	.word	-88
	.word	4
	.word	_Label_2956
	.word	-92
	.word	4
	.word	_Label_2957
	.word	-96
	.word	4
	.word	_Label_2958
	.word	-100
	.word	4
	.word	_Label_2959
	.word	-104
	.word	4
	.word	_Label_2960
	.word	-108
	.word	4
	.word	_Label_2961
	.word	-112
	.word	4
	.word	_Label_2962
	.word	-9
	.word	1
	.word	_Label_2963
	.word	-10
	.word	1
	.word	_Label_2964
	.word	-116
	.word	4
	.word	_Label_2965
	.word	-120
	.word	4
	.word	_Label_2966
	.word	-124
	.word	4
	.word	_Label_2967
	.word	-128
	.word	4
	.word	_Label_2968
	.word	-132
	.word	4
	.word	_Label_2969
	.word	-136
	.word	4
	.word	0
_Label_2931:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2932:
	.ascii	"Pself\0"
	.align
_Label_2933:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2934:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2935:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2936:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2962:
	.byte	'C'
	.ascii	"_temp_2891\0"
	.align
_Label_2963:
	.byte	'C'
	.ascii	"_temp_2888\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2965:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2966:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2967:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2968:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2969:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2970
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2970:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2971
	.word	_sourceFileName
	.word	408		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2971:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3330:
	push	r0
	sub	r1,1,r1
	bne	_Label_3330
	mov	2861,r13		! source line 2861
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2863,r13		! source line 2863
	mov	"\0\0AS",r10
	mov	2863,r13		! source line 2863
	mov	"\0\0SE",r10
!   _temp_2972 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2864,r13		! source line 2864
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2866,r13		! source line 2866
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2866,r13		! source line 2866
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2973
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2974
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2975
	.word	-12
	.word	4
	.word	0
_Label_2973:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2974:
	.ascii	"Pself\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3331:
	push	r0
	sub	r1,1,r1
	bne	_Label_3331
	mov	2871,r13		! source line 2871
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2976 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2976  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2872,r13		! source line 2872
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2873,r13		! source line 2873
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2977 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2977  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2874,r13		! source line 2874
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2875,r13		! source line 2875
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2978 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2978  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2876,r13		! source line 2876
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2877,r13		! source line 2877
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2979 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2979  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2878,r13		! source line 2878
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2879,r13		! source line 2879
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2980 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2980  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2880,r13		! source line 2880
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2881,r13		! source line 2881
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2981 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2981  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2882,r13		! source line 2882
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2883,r13		! source line 2883
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2884,r13		! source line 2884
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2884,r13		! source line 2884
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2982
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2983
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2984
	.word	-12
	.word	4
	.word	_Label_2985
	.word	-16
	.word	4
	.word	_Label_2986
	.word	-20
	.word	4
	.word	_Label_2987
	.word	-24
	.word	4
	.word	_Label_2988
	.word	-28
	.word	4
	.word	_Label_2989
	.word	-32
	.word	4
	.word	0
_Label_2982:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2983:
	.ascii	"Pself\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2981\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2977\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2976\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2990
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2990:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2991
	.word	_sourceFileName
	.word	425		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2991:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3332:
	push	r0
	sub	r1,1,r1
	bne	_Label_3332
	mov	2895,r13		! source line 2895
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2992 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2992  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2896,r13		! source line 2896
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2897,r13		! source line 2897
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2993 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2993  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2898,r13		! source line 2898
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2899,r13		! source line 2899
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2995		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2995
!	jmp	_Label_2994
_Label_2994:
! THEN...
	mov	2900,r13		! source line 2900
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2900,r13		! source line 2900
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_2996
_Label_2995:
! ELSE...
	mov	2902,r13		! source line 2902
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2997 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2997  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2902,r13		! source line 2902
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2996:
! RETURN STATEMENT...
	mov	2899,r13		! source line 2899
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_2998
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2999
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3000
	.word	-12
	.word	4
	.word	_Label_3001
	.word	-16
	.word	4
	.word	_Label_3002
	.word	-20
	.word	4
	.word	0
_Label_2998:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2999:
	.ascii	"Pself\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2997\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2992\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3333:
	push	r0
	sub	r1,1,r1
	bne	_Label_3333
	mov	2908,r13		! source line 2908
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2918,r13		! source line 2918
	mov	"\0\0SE",r10
!   _temp_3003 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3004 = _temp_3003 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2919,r13		! source line 2919
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2920,r13		! source line 2920
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2921,r13		! source line 2921
	mov	"\0\0SE",r10
!   _temp_3005 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3006 = _temp_3005 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2922,r13		! source line 2922
	mov	"\0\0RE",r10
	mov	2922,r13		! source line 2922
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3009 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3008  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_3007  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3007  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_3010
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3011
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3012
	.word	12
	.word	4
	.word	_Label_3013
	.word	16
	.word	4
	.word	_Label_3014
	.word	-16
	.word	4
	.word	_Label_3015
	.word	-20
	.word	4
	.word	_Label_3016
	.word	-9
	.word	1
	.word	_Label_3017
	.word	-24
	.word	4
	.word	_Label_3018
	.word	-28
	.word	4
	.word	_Label_3019
	.word	-32
	.word	4
	.word	_Label_3020
	.word	-36
	.word	4
	.word	_Label_3021
	.word	-40
	.word	4
	.word	0
_Label_3010:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3011:
	.ascii	"Pself\0"
	.align
_Label_3012:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3013:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3016:
	.byte	'C'
	.ascii	"_temp_3007\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_3005\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3021:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3334:
	push	r0
	sub	r1,1,r1
	bne	_Label_3334
	mov	2927,r13		! source line 2927
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2932,r13		! source line 2932
	mov	"\0\0IF",r10
	mov	2932,r13		! source line 2932
	mov	"\0\0SE",r10
!   _temp_3025 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3026) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3025  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3024  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3024 then goto _Label_3023 else goto _Label_3022
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3022
	jmp	_Label_3023
_Label_3022:
! THEN...
	mov	2933,r13		! source line 2933
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3027 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3027  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2933,r13		! source line 2933
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3023:
! RETURN STATEMENT...
	mov	2935,r13		! source line 2935
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_3028
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3029
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3030
	.word	-16
	.word	4
	.word	_Label_3031
	.word	-20
	.word	4
	.word	_Label_3032
	.word	-24
	.word	4
	.word	_Label_3033
	.word	-9
	.word	1
	.word	_Label_3034
	.word	-28
	.word	4
	.word	0
_Label_3028:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3029:
	.ascii	"Pself\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_3025\0"
	.align
_Label_3033:
	.byte	'C'
	.ascii	"_temp_3024\0"
	.align
_Label_3034:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3335:
	push	r0
	sub	r1,1,r1
	bne	_Label_3335
	mov	2940,r13		! source line 2940
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2966,r13		! source line 2966
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3038 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3037 = *_temp_3038  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3037) then goto _Label_3036
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3036
!	jmp	_Label_3035
_Label_3035:
! THEN...
	mov	2967,r13		! source line 2967
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3039 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3039  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2967,r13		! source line 2967
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3036:
! IF STATEMENT...
	mov	2971,r13		! source line 2971
	mov	"\0\0IF",r10
	mov	2971,r13		! source line 2971
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3043) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3042  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3042 == 1112300152 then goto _Label_3041		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3041
!	jmp	_Label_3040
_Label_3040:
! THEN...
	mov	2972,r13		! source line 2972
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3044 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3044  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2972,r13		! source line 2972
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2973,r13		! source line 2973
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3041:
! ASSIGNMENT STATEMENT...
	mov	2977,r13		! source line 2977
	mov	"\0\0AS",r10
	mov	2977,r13		! source line 2977
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3045) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2978,r13		! source line 2978
	mov	"\0\0AS",r10
	mov	2978,r13		! source line 2978
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3046) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2979,r13		! source line 2979
	mov	"\0\0AS",r10
	mov	2979,r13		! source line 2979
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3047) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2980,r13		! source line 2980
	mov	"\0\0AS",r10
	mov	2980,r13		! source line 2980
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3048) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2981,r13		! source line 2981
	mov	"\0\0AS",r10
	mov	2981,r13		! source line 2981
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3049) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2982,r13		! source line 2982
	mov	"\0\0AS",r10
	mov	2982,r13		! source line 2982
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3050) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2985,r13		! source line 2985
	mov	"\0\0IF",r10
!   _temp_3053 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3053) then goto _Label_3052
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3052
!	jmp	_Label_3051
_Label_3051:
! THEN...
	mov	2986,r13		! source line 2986
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3054 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3054  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2986,r13		! source line 2986
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2987,r13		! source line 2987
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3052:
! ASSIGNMENT STATEMENT...
	mov	2989,r13		! source line 2989
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2993,r13		! source line 2993
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3056
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3056
!	jmp	_Label_3055
_Label_3055:
! THEN...
	mov	2994,r13		! source line 2994
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3057 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3057  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2994,r13		! source line 2994
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2995,r13		! source line 2995
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3056:
! IF STATEMENT...
	mov	2999,r13		! source line 2999
	mov	"\0\0IF",r10
!   _temp_3060 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3060) then goto _Label_3059
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3059
!	jmp	_Label_3058
_Label_3058:
! THEN...
	mov	3000,r13		! source line 3000
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3061 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3061  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3000,r13		! source line 3000
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3001,r13		! source line 3001
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3059:
! IF STATEMENT...
	mov	3003,r13		! source line 3003
	mov	"\0\0IF",r10
!   _temp_3064 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3064 then goto _Label_3063		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3063
!	jmp	_Label_3062
_Label_3062:
! THEN...
	mov	3004,r13		! source line 3004
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3065 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3065  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3004,r13		! source line 3004
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3005,r13		! source line 3005
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3063:
! ASSIGNMENT STATEMENT...
	mov	3007,r13		! source line 3007
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	3010,r13		! source line 3010
	mov	"\0\0IF",r10
!   _temp_3068 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3068) then goto _Label_3067
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3067
!	jmp	_Label_3066
_Label_3066:
! THEN...
	mov	3011,r13		! source line 3011
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3069 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3069  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3011,r13		! source line 3011
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3012,r13		! source line 3012
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3067:
! IF STATEMENT...
	mov	3014,r13		! source line 3014
	mov	"\0\0IF",r10
!   _temp_3072 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3072 then goto _Label_3071		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3071
!	jmp	_Label_3070
_Label_3070:
! THEN...
	mov	3015,r13		! source line 3015
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3073 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3073  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3015,r13		! source line 3015
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3016,r13		! source line 3016
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3071:
! ASSIGNMENT STATEMENT...
	mov	3018,r13		! source line 3018
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	3021,r13		! source line 3021
	mov	"\0\0AS",r10
!   _temp_3076 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3075 = _temp_3076 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3074 = _temp_3075 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3074 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3036,r13		! source line 3036
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3078		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3078
!	jmp	_Label_3077
_Label_3077:
! THEN...
	mov	3037,r13		! source line 3037
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3079 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3079  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3037,r13		! source line 3037
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3080 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3080  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3038,r13		! source line 3038
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3081 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3081  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3039,r13		! source line 3039
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3040,r13		! source line 3040
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3078:
! SEND STATEMENT...
	mov	3042,r13		! source line 3042
	mov	"\0\0SE",r10
!   _temp_3082 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	3048,r13		! source line 3048
	mov	"\0\0IF",r10
	mov	3048,r13		! source line 3048
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3086) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3085  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3085 == 707406378 then goto _Label_3084		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3084
!	jmp	_Label_3083
_Label_3083:
! THEN...
	mov	3049,r13		! source line 3049
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3087 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3087  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3049,r13		! source line 3049
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3050,r13		! source line 3050
	mov	"\0\0SE",r10
!   _temp_3088 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3051,r13		! source line 3051
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3084:
! ASSIGNMENT STATEMENT...
	mov	3055,r13		! source line 3055
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	3056,r13		! source line 3056
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3093 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3094 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3093  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3089:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3094 then goto _Label_3092		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3092
_Label_3090:
	mov	3056,r13		! source line 3056
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3057,r13		! source line 3057
	mov	"\0\0AS",r10
	mov	3057,r13		! source line 3057
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3060,r13		! source line 3060
	mov	"\0\0IF",r10
	mov	3060,r13		! source line 3060
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3098) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3097  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3097 then goto _Label_3096 else goto _Label_3095
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3095
	jmp	_Label_3096
_Label_3095:
! THEN...
	mov	3061,r13		! source line 3061
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3099 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3099  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3061,r13		! source line 3061
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3062,r13		! source line 3062
	mov	"\0\0SE",r10
!   _temp_3100 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3063,r13		! source line 3063
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3096:
! SEND STATEMENT...
	mov	3065,r13		! source line 3065
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3066,r13		! source line 3066
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3091:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3089
! END FOR
_Label_3092:
! IF STATEMENT...
	mov	3070,r13		! source line 3070
	mov	"\0\0IF",r10
	mov	3070,r13		! source line 3070
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3104) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3103  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3103 == 707406378 then goto _Label_3102		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3102
!	jmp	_Label_3101
_Label_3101:
! THEN...
	mov	3071,r13		! source line 3071
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3105 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3105  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3071,r13		! source line 3071
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3072,r13		! source line 3072
	mov	"\0\0SE",r10
!   _temp_3106 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3073,r13		! source line 3073
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3102:
! FOR STATEMENT...
	mov	3077,r13		! source line 3077
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3111 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3112 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3111  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3107:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3112 then goto _Label_3110		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3110
_Label_3108:
	mov	3077,r13		! source line 3077
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3078,r13		! source line 3078
	mov	"\0\0AS",r10
	mov	3078,r13		! source line 3078
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3081,r13		! source line 3081
	mov	"\0\0IF",r10
	mov	3081,r13		! source line 3081
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3116) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3115  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3115 then goto _Label_3114 else goto _Label_3113
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3113
	jmp	_Label_3114
_Label_3113:
! THEN...
	mov	3082,r13		! source line 3082
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3117 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3117  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3082,r13		! source line 3082
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3083,r13		! source line 3083
	mov	"\0\0SE",r10
!   _temp_3118 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3084,r13		! source line 3084
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3114:
! ASSIGNMENT STATEMENT...
	mov	3086,r13		! source line 3086
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3109:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3107
! END FOR
_Label_3110:
! IF STATEMENT...
	mov	3090,r13		! source line 3090
	mov	"\0\0IF",r10
	mov	3090,r13		! source line 3090
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3122) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3121  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3121 == 707406378 then goto _Label_3120		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3120
!	jmp	_Label_3119
_Label_3119:
! THEN...
	mov	3091,r13		! source line 3091
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3123 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3123  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3091,r13		! source line 3091
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3092,r13		! source line 3092
	mov	"\0\0SE",r10
!   _temp_3124 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3093,r13		! source line 3093
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3120:
! ASSIGNMENT STATEMENT...
	mov	3097,r13		! source line 3097
	mov	"\0\0AS",r10
	mov	3097,r13		! source line 3097
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	3101,r13		! source line 3101
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3104,r13		! source line 3104
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_3125
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3126
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3127
	.word	12
	.word	4
	.word	_Label_3128
	.word	-16
	.word	4
	.word	_Label_3129
	.word	-20
	.word	4
	.word	_Label_3130
	.word	-24
	.word	4
	.word	_Label_3131
	.word	-28
	.word	4
	.word	_Label_3132
	.word	-32
	.word	4
	.word	_Label_3133
	.word	-36
	.word	4
	.word	_Label_3134
	.word	-40
	.word	4
	.word	_Label_3135
	.word	-9
	.word	1
	.word	_Label_3136
	.word	-44
	.word	4
	.word	_Label_3137
	.word	-48
	.word	4
	.word	_Label_3138
	.word	-52
	.word	4
	.word	_Label_3139
	.word	-56
	.word	4
	.word	_Label_3140
	.word	-60
	.word	4
	.word	_Label_3141
	.word	-64
	.word	4
	.word	_Label_3142
	.word	-68
	.word	4
	.word	_Label_3143
	.word	-72
	.word	4
	.word	_Label_3144
	.word	-76
	.word	4
	.word	_Label_3145
	.word	-10
	.word	1
	.word	_Label_3146
	.word	-80
	.word	4
	.word	_Label_3147
	.word	-84
	.word	4
	.word	_Label_3148
	.word	-88
	.word	4
	.word	_Label_3149
	.word	-92
	.word	4
	.word	_Label_3150
	.word	-96
	.word	4
	.word	_Label_3151
	.word	-100
	.word	4
	.word	_Label_3152
	.word	-104
	.word	4
	.word	_Label_3153
	.word	-108
	.word	4
	.word	_Label_3154
	.word	-112
	.word	4
	.word	_Label_3155
	.word	-116
	.word	4
	.word	_Label_3156
	.word	-120
	.word	4
	.word	_Label_3157
	.word	-124
	.word	4
	.word	_Label_3158
	.word	-128
	.word	4
	.word	_Label_3159
	.word	-132
	.word	4
	.word	_Label_3160
	.word	-136
	.word	4
	.word	_Label_3161
	.word	-140
	.word	4
	.word	_Label_3162
	.word	-144
	.word	4
	.word	_Label_3163
	.word	-148
	.word	4
	.word	_Label_3164
	.word	-152
	.word	4
	.word	_Label_3165
	.word	-156
	.word	4
	.word	_Label_3166
	.word	-160
	.word	4
	.word	_Label_3167
	.word	-164
	.word	4
	.word	_Label_3168
	.word	-168
	.word	4
	.word	_Label_3169
	.word	-172
	.word	4
	.word	_Label_3170
	.word	-176
	.word	4
	.word	_Label_3171
	.word	-180
	.word	4
	.word	_Label_3172
	.word	-184
	.word	4
	.word	_Label_3173
	.word	-188
	.word	4
	.word	_Label_3174
	.word	-192
	.word	4
	.word	_Label_3175
	.word	-196
	.word	4
	.word	_Label_3176
	.word	-200
	.word	4
	.word	_Label_3177
	.word	-204
	.word	4
	.word	_Label_3178
	.word	-208
	.word	4
	.word	_Label_3179
	.word	-212
	.word	4
	.word	_Label_3180
	.word	-216
	.word	4
	.word	_Label_3181
	.word	-220
	.word	4
	.word	_Label_3182
	.word	-224
	.word	4
	.word	_Label_3183
	.word	-228
	.word	4
	.word	_Label_3184
	.word	-232
	.word	4
	.word	_Label_3185
	.word	-236
	.word	4
	.word	_Label_3186
	.word	-240
	.word	4
	.word	_Label_3187
	.word	-244
	.word	4
	.word	_Label_3188
	.word	-248
	.word	4
	.word	_Label_3189
	.word	-252
	.word	4
	.word	_Label_3190
	.word	-256
	.word	4
	.word	_Label_3191
	.word	-260
	.word	4
	.word	_Label_3192
	.word	-264
	.word	4
	.word	_Label_3193
	.word	-268
	.word	4
	.word	0
_Label_3125:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3126:
	.ascii	"Pself\0"
	.align
_Label_3127:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3128:
	.byte	'?'
	.ascii	"_temp_3124\0"
	.align
_Label_3129:
	.byte	'?'
	.ascii	"_temp_3123\0"
	.align
_Label_3130:
	.byte	'?'
	.ascii	"_temp_3122\0"
	.align
_Label_3131:
	.byte	'?'
	.ascii	"_temp_3121\0"
	.align
_Label_3132:
	.byte	'?'
	.ascii	"_temp_3118\0"
	.align
_Label_3133:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3134:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3135:
	.byte	'C'
	.ascii	"_temp_3115\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3112\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3111\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3106\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3105\0"
	.align
_Label_3140:
	.byte	'?'
	.ascii	"_temp_3104\0"
	.align
_Label_3141:
	.byte	'?'
	.ascii	"_temp_3103\0"
	.align
_Label_3142:
	.byte	'?'
	.ascii	"_temp_3100\0"
	.align
_Label_3143:
	.byte	'?'
	.ascii	"_temp_3099\0"
	.align
_Label_3144:
	.byte	'?'
	.ascii	"_temp_3098\0"
	.align
_Label_3145:
	.byte	'C'
	.ascii	"_temp_3097\0"
	.align
_Label_3146:
	.byte	'?'
	.ascii	"_temp_3094\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3093\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3085\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3082\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3081\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3080\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3079\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3158:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3073\0"
	.align
_Label_3160:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3161:
	.byte	'?'
	.ascii	"_temp_3069\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3068\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3065\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3061\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3060\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3054\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3053\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3050\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3049\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3048\0"
	.align
_Label_3173:
	.byte	'?'
	.ascii	"_temp_3047\0"
	.align
_Label_3174:
	.byte	'?'
	.ascii	"_temp_3046\0"
	.align
_Label_3175:
	.byte	'?'
	.ascii	"_temp_3045\0"
	.align
_Label_3176:
	.byte	'?'
	.ascii	"_temp_3044\0"
	.align
_Label_3177:
	.byte	'?'
	.ascii	"_temp_3043\0"
	.align
_Label_3178:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3180:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3181:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
_Label_3182:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3183:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3184:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3185:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3186:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3187:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3188:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3189:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3190:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3191:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3192:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3193:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
