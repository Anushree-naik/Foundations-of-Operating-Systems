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
	.export	_P_Kernel_InitFirstProcess
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
_StringConst_235:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_234:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_233:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_232:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_231:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_230:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_229:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_228:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_227:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_226:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_225:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_224:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_223:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_222:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_221:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_220:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_219:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_218:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_217:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_216:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_215:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_214:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_213:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_212:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_211:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_210:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_209:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_208:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_207:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_206:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_205:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_204:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_203:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_202:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_201:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_200:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_199:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_198:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_197:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_196:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_195:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_194:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_193:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_192:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_191:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_190:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_189:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_188:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_187:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_186:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_185:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_184:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_183:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_182:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_181:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_180:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_179:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_178:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_177:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_176:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_175:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_174:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_173:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_172:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_171:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_170:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_169:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_168:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_167:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_166:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_165:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_164:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_163:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_162:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_161:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_160:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_159:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_158:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_157:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_156:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_155:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_154:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_153:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_152:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_151:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_150:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_149:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_148:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_147:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_146:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_145:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_144:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_143:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_142:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_141:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_140:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_139:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_138:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_137:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_136:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_135:
	.word	1			! length
	.ascii	"9"
	.align
_StringConst_134:
	.word	1			! length
	.ascii	"8"
	.align
_StringConst_133:
	.word	1			! length
	.ascii	"7"
	.align
_StringConst_132:
	.word	1			! length
	.ascii	"6"
	.align
_StringConst_131:
	.word	1			! length
	.ascii	"5"
	.align
_StringConst_130:
	.word	1			! length
	.ascii	"4"
	.align
_StringConst_129:
	.word	1			! length
	.ascii	"3"
	.align
_StringConst_128:
	.word	1			! length
	.ascii	"2"
	.align
_StringConst_127:
	.word	1			! length
	.ascii	"1"
	.align
_StringConst_126:
	.word	1			! length
	.ascii	"0"
	.align
_StringConst_125:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
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
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_121:
	.word	1			! length
	.ascii	"9"
	.align
_StringConst_120:
	.word	1			! length
	.ascii	"8"
	.align
_StringConst_119:
	.word	1			! length
	.ascii	"7"
	.align
_StringConst_118:
	.word	1			! length
	.ascii	"6"
	.align
_StringConst_117:
	.word	1			! length
	.ascii	"5"
	.align
_StringConst_116:
	.word	1			! length
	.ascii	"4"
	.align
_StringConst_115:
	.word	1			! length
	.ascii	"3"
	.align
_StringConst_114:
	.word	1			! length
	.ascii	"2"
	.align
_StringConst_113:
	.word	1			! length
	.ascii	"1"
	.align
_StringConst_112:
	.word	1			! length
	.ascii	"0"
	.align
_StringConst_111:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_110:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_109:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_108:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_107:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_106:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_105:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_104:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_103:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_102:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_101:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_100:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_99:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_98:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_97:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_96:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_95:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_94:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_93:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_92:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_91:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_90:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_89:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_88:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_87:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_86:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_85:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_84:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_83:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_82:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_81:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_80:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_79:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_78:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_77:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_76:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_75:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_74:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_73:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_72:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_71:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_70:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_69:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_68:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_67:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_66:
	.word	28			! length
	.ascii	"\n Handle_Sys_Close invoked \n"
	.align
_StringConst_65:
	.word	17			! length
	.ascii	" newCurrentPos = "
	.align
_StringConst_64:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_63:
	.word	27			! length
	.ascii	"\n Handle_Sys_Seek invoked \n"
	.align
_StringConst_62:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_61:
	.word	29			! length
	.ascii	" Virtual address of buffer = "
	.align
_StringConst_60:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_59:
	.word	27			! length
	.ascii	"\n Handle_Sys_Write invoked\n"
	.align
_StringConst_58:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_57:
	.word	29			! length
	.ascii	" Virtual address of buffer = "
	.align
_StringConst_56:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_55:
	.word	26			! length
	.ascii	"\n Handle_Sys_Read invoked\n"
	.align
_StringConst_54:
	.word	11			! length
	.ascii	"file name :"
	.align
_StringConst_53:
	.word	34			! length
	.ascii	"Virtual address of the file name: "
	.align
_StringConst_52:
	.word	27			! length
	.ascii	"\n Handle_Sys_Open invoked \n"
	.align
_StringConst_51:
	.word	11			! length
	.ascii	"File Name: "
	.align
_StringConst_50:
	.word	30			! length
	.ascii	"Virtual address of the file : "
	.align
_StringConst_49:
	.word	29			! length
	.ascii	"\n Handle_Sys_Create invoked \n"
	.align
_StringConst_48:
	.word	76			! length
	.ascii	"*******************\n Error in creating executavle file \n *******************"
	.align
_StringConst_47:
	.word	43			! length
	.ascii	"******** \n Could not open file \n **********"
	.align
_StringConst_46:
	.word	12			! length
	.ascii	"processID : "
	.align
_StringConst_45:
	.word	26			! length
	.ascii	"\n Handle_Sys_Join invoked\n"
	.align
_StringConst_44:
	.word	27			! length
	.ascii	"\n Handle_Sys_Fork invoked \n"
	.align
_StringConst_43:
	.word	28			! length
	.ascii	"\n Handle_Sys_Yield invoked \n"
	.align
_StringConst_42:
	.word	51			! length
	.ascii	"\nSyscall \'Shutdown\' was invoked by the user thread\n"
	.align
_StringConst_41:
	.word	15			! length
	.ascii	"returnStatus = "
	.align
_StringConst_40:
	.word	26			! length
	.ascii	"\n Handle_Sys_Exit invoked\n"
	.align
_StringConst_39:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_38:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_37:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_36:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_35:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_34:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_33:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_32:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_31:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_27:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_26:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_25:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_24:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_23:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_22:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_21:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_20:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_19:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_18:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_17:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_15:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_14:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_13:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_12:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_11:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_10:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_9:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_8:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_7:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_6:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_5:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
_StringConst_4:
	.word	58			! length
	.ascii	"**********\n Error in creating the executable file\n *******"
	.align
_StringConst_3:
	.word	51			! length
	.ascii	"************\n Could not open file \n****************"
	.align
_StringConst_2:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_1:
	.word	11			! length
	.ascii	"UserProgram"
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
	set	0x7a3c10f8,r4		! myHashVal = 2050756856
	cmp	r3,r4
	be	_Label_244
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
_Label_244:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_245
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_245
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_245
_Label_245:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	8,r1
_Label_3385:
	push	r0
	sub	r1,1,r1
	bne	_Label_3385
	mov	15,r13		! source line 15
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0AS",r10
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_246 = &_P_Kernel_threadManager
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
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   if intIsZero (threadpt) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_247 = threadpt + 72
	load	[r14+-28],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   _temp_248 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_247 = _temp_248  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0SE",r10
!   _temp_249 = _function_243_StartUserProcess
	set	_function_243_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (threadpt) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_249  sizeInBytes=4
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
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_250
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_251
	.word	-12
	.word	4
	.word	_Label_252
	.word	-16
	.word	4
	.word	_Label_253
	.word	-20
	.word	4
	.word	_Label_254
	.word	-24
	.word	4
	.word	_Label_255
	.word	-28
	.word	4
	.word	0
_Label_250:
	.ascii	"InitFirstProcess\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_255:
	.byte	'P'
	.ascii	"threadpt\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_243_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_243_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_3386:
	push	r0
	sub	r1,1,r1
	bne	_Label_3386
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	60,r13		! source line 60
	mov	"\0\0AS",r10
	mov	60,r13		! source line 60
	mov	"\0\0SE",r10
!   _temp_256 = &_P_Kernel_processManager
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
	mov	61,r13		! source line 61
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_257 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_257 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_258 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_258 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	63,r13		! source line 63
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_259 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   addrSpace = _temp_259		(4 bytes)
	load	[r14+-56],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
	mov	67,r13		! source line 67
	mov	"\0\0SE",r10
!   _temp_260 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-52]
!   _temp_261 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_260  sizeInBytes=4
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
	mov	68,r13		! source line 68
	mov	"\0\0IF",r10
!   if intIsZero (fileName) then goto _Label_262
	load	[r14+-72],r1
	cmp	r1,r0
	be	_Label_262
	jmp	_Label_263
_Label_262:
! THEN...
	mov	69,r13		! source line 69
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_264 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_264  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	69,r13		! source line 69
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_263:
! ASSIGNMENT STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0AS",r10
	mov	76,r13		! source line 76
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
	mov	78,r13		! source line 78
	mov	"\0\0IF",r10
!   if initPC != -1 then goto _Label_266		(int)
	load	[r14+-80],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_266
!	jmp	_Label_265
_Label_265:
! THEN...
	mov	79,r13		! source line 79
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_267 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_267  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	79,r13		! source line 79
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_266:
! SEND STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0SE",r10
!   _temp_268 = &_P_Kernel_fileManager
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
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_270 = addrSpace + 4
	load	[r14+-84],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_269 = *_temp_270  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   InitUserStackTop = _temp_269 * 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_271 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_271 [999 ] into _temp_272
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
!   initSystemStackTop = _temp_272		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	92,r13		! source line 92
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! SEND STATEMENT...
	mov	94,r13		! source line 94
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
	mov	99,r13		! source line 99
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_273 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_273 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_274 = initSystemStackTop		(4 bytes)
	load	[r14+-92],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=InitUserStackTop  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_274  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	101,r13		! source line 101
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	101,r13		! source line 101
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_243_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_275
	.word	0		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_276
	.word	-12
	.word	4
	.word	_Label_277
	.word	-16
	.word	4
	.word	_Label_278
	.word	-20
	.word	4
	.word	_Label_279
	.word	-24
	.word	4
	.word	_Label_280
	.word	-28
	.word	4
	.word	_Label_281
	.word	-32
	.word	4
	.word	_Label_282
	.word	-36
	.word	4
	.word	_Label_283
	.word	-40
	.word	4
	.word	_Label_284
	.word	-44
	.word	4
	.word	_Label_285
	.word	-48
	.word	4
	.word	_Label_286
	.word	-52
	.word	4
	.word	_Label_287
	.word	-56
	.word	4
	.word	_Label_288
	.word	-60
	.word	4
	.word	_Label_289
	.word	-64
	.word	4
	.word	_Label_290
	.word	-68
	.word	4
	.word	_Label_291
	.word	-72
	.word	4
	.word	_Label_292
	.word	-76
	.word	4
	.word	_Label_293
	.word	-80
	.word	4
	.word	_Label_294
	.word	-84
	.word	4
	.word	_Label_295
	.word	-88
	.word	4
	.word	_Label_296
	.word	-92
	.word	4
	.word	_Label_297
	.word	-96
	.word	4
	.word	0
_Label_275:
	.ascii	"StartUserProcess\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_291:
	.byte	'P'
	.ascii	"fileName\0"
	.align
_Label_292:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_293:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_294:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_295:
	.byte	'I'
	.ascii	"InitUserStackTop\0"
	.align
_Label_296:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_297:
	.byte	'I'
	.ascii	"oldIntStat\0"
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
_Label_3387:
	push	r0
	sub	r1,1,r1
	bne	_Label_3387
	mov	107,r13		! source line 107
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	114,r13		! source line 114
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_298 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_298  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	115,r13		! source line 115
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	116,r13		! source line 116
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
	mov	117,r13		! source line 117
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
	mov	118,r13		! source line 118
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3388:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3388
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	119,r13		! source line 119
	mov	"\0\0SE",r10
!   _temp_302 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-44]
!   _temp_303 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_302  sizeInBytes=4
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
	mov	120,r13		! source line 120
	mov	"\0\0AS",r10
!   _temp_304 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_305 = _temp_304 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_305 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	121,r13		! source line 121
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3389:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3389
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	122,r13		! source line 122
	mov	"\0\0SE",r10
!   _temp_307 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-24]
!   _temp_308 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_307  sizeInBytes=4
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
	mov	123,r13		! source line 123
	mov	"\0\0SE",r10
!   _temp_309 = _function_242_IdleFunction
	set	_function_242_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_310 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_309  sizeInBytes=4
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
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	127,r13		! source line 127
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
	.word	_Label_311
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_312
	.word	-12
	.word	4
	.word	_Label_313
	.word	-16
	.word	4
	.word	_Label_314
	.word	-20
	.word	4
	.word	_Label_315
	.word	-24
	.word	4
	.word	_Label_316
	.word	-28
	.word	4
	.word	_Label_317
	.word	-32
	.word	4
	.word	_Label_318
	.word	-36
	.word	4
	.word	_Label_319
	.word	-40
	.word	4
	.word	_Label_320
	.word	-44
	.word	4
	.word	_Label_321
	.word	-48
	.word	4
	.word	_Label_322
	.word	-52
	.word	4
	.word	_Label_323
	.word	-56
	.word	4
	.word	_Label_324
	.word	-60
	.word	4
	.word	0
_Label_311:
	.ascii	"InitializeScheduler\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_242_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_242_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3390:
	push	r0
	sub	r1,1,r1
	bne	_Label_3390
	mov	132,r13		! source line 132
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	142,r13		! source line 142
	mov	"\0\0WH",r10
_Label_325:
!	jmp	_Label_326
_Label_326:
	mov	142,r13		! source line 142
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	143,r13		! source line 143
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	143,r13		! source line 143
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0IF",r10
	mov	144,r13		! source line 144
	mov	"\0\0SE",r10
!   _temp_330 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_328 else goto _Label_329
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_329
	jmp	_Label_328
_Label_328:
! THEN...
	mov	145,r13		! source line 145
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	145,r13		! source line 145
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_331
_Label_329:
! ELSE...
	mov	147,r13		! source line 147
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	147,r13		! source line 147
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
_Label_331:
! END WHILE...
	jmp	_Label_325
_Label_327:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_242_IdleFunction:
	.word	_sourceFileName
	.word	_Label_332
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_333
	.word	8
	.word	4
	.word	_Label_334
	.word	-12
	.word	4
	.word	_Label_335
	.word	-16
	.word	4
	.word	0
_Label_332:
	.ascii	"IdleFunction\0"
	.align
_Label_333:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_335:
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
_Label_3391:
	push	r0
	sub	r1,1,r1
	bne	_Label_3391
	mov	154,r13		! source line 154
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	168,r13		! source line 168
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
	mov	170,r13		! source line 170
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_338 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_338 ) then goto _Label_337		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_337
!	jmp	_Label_336
_Label_336:
! THEN...
	mov	171,r13		! source line 171
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_340 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_340 [0 ] into _temp_341
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
!   _temp_339 = _temp_341		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_337:
! ASSIGNMENT STATEMENT...
	mov	173,r13		! source line 173
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_342 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_342 = 3  (sizeInBytes=4)
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
	mov	180,r13		! source line 180
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	184,r13		! source line 184
	mov	"\0\0WH",r10
_Label_343:
	mov	184,r13		! source line 184
	mov	"\0\0SE",r10
!   _temp_347 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_346  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_346 then goto _Label_345 else goto _Label_344
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_344
	jmp	_Label_345
_Label_344:
	mov	184,r13		! source line 184
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	185,r13		! source line 185
	mov	"\0\0AS",r10
	mov	185,r13		! source line 185
	mov	"\0\0SE",r10
!   _temp_348 = &_P_Kernel_threadsToBeDestroyed
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
	mov	186,r13		! source line 186
	mov	"\0\0SE",r10
!   _temp_349 = &_P_Kernel_threadManager
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
	jmp	_Label_343
_Label_345:
! IF STATEMENT...
	mov	189,r13		! source line 189
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_352 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_352 ) then goto _Label_351		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_351
!	jmp	_Label_350
_Label_350:
! THEN...
	mov	190,r13		! source line 190
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_354 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_354 [0 ] into _temp_355
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
!   _temp_353 = _temp_355		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	190,r13		! source line 190
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	191,r13		! source line 191
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_357 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_356 = *_temp_357  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_356) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_358 = _temp_356 + 32
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
_Label_351:
! RETURN STATEMENT...
	mov	189,r13		! source line 189
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
	.word	_Label_359
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_360
	.word	8
	.word	4
	.word	_Label_361
	.word	-16
	.word	4
	.word	_Label_362
	.word	-20
	.word	4
	.word	_Label_363
	.word	-24
	.word	4
	.word	_Label_364
	.word	-28
	.word	4
	.word	_Label_365
	.word	-32
	.word	4
	.word	_Label_366
	.word	-36
	.word	4
	.word	_Label_367
	.word	-40
	.word	4
	.word	_Label_368
	.word	-44
	.word	4
	.word	_Label_369
	.word	-48
	.word	4
	.word	_Label_370
	.word	-52
	.word	4
	.word	_Label_371
	.word	-9
	.word	1
	.word	_Label_372
	.word	-56
	.word	4
	.word	_Label_373
	.word	-60
	.word	4
	.word	_Label_374
	.word	-64
	.word	4
	.word	_Label_375
	.word	-68
	.word	4
	.word	_Label_376
	.word	-72
	.word	4
	.word	_Label_377
	.word	-76
	.word	4
	.word	_Label_378
	.word	-80
	.word	4
	.word	0
_Label_359:
	.ascii	"Run\0"
	.align
_Label_360:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_371:
	.byte	'C'
	.ascii	"_temp_346\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_377:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_378:
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
_Label_3392:
	push	r0
	sub	r1,1,r1
	bne	_Label_3392
	mov	197,r13		! source line 197
	mov	"\0\0FU",r10
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
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_379 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_379  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	205,r13		! source line 205
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	206,r13		! source line 206
	mov	"\0\0SE",r10
!   _temp_380 = _function_241_ThreadPrintShort
	set	_function_241_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_381 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_380  sizeInBytes=4
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
	mov	207,r13		! source line 207
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	207,r13		! source line 207
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	207,r13		! source line 207
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
	.word	_Label_382
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_383
	.word	-12
	.word	4
	.word	_Label_384
	.word	-16
	.word	4
	.word	_Label_385
	.word	-20
	.word	4
	.word	_Label_386
	.word	-24
	.word	4
	.word	0
_Label_382:
	.ascii	"PrintReadyList\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_386:
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
_Label_3393:
	push	r0
	sub	r1,1,r1
	bne	_Label_3393
	mov	212,r13		! source line 212
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	224,r13		! source line 224
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	225,r13		! source line 225
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_387 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_387  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_389 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_388 = *_temp_389  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	226,r13		! source line 226
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	227,r13		! source line 227
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_390 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_390  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	228,r13		! source line 228
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	228,r13		! source line 228
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
	.word	_Label_391
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_392
	.word	-12
	.word	4
	.word	_Label_393
	.word	-16
	.word	4
	.word	_Label_394
	.word	-20
	.word	4
	.word	_Label_395
	.word	-24
	.word	4
	.word	_Label_396
	.word	-28
	.word	4
	.word	_Label_397
	.word	-32
	.word	4
	.word	0
_Label_391:
	.ascii	"ThreadStartMain\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_396:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_397:
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
_Label_3394:
	push	r0
	sub	r1,1,r1
	bne	_Label_3394
	mov	233,r13		! source line 233
	mov	"\0\0FU",r10
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
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0SE",r10
!   _temp_398 = &_P_Kernel_threadsToBeDestroyed
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
	mov	249,r13		! source line 249
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
!   _temp_399 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_399  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	251,r13		! source line 251
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	251,r13		! source line 251
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
	.word	_Label_400
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_401
	.word	-12
	.word	4
	.word	_Label_402
	.word	-16
	.word	4
	.word	_Label_403
	.word	-20
	.word	4
	.word	0
_Label_400:
	.ascii	"ThreadFinish\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_403:
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
_Label_3395:
	push	r0
	sub	r1,1,r1
	bne	_Label_3395
	mov	256,r13		! source line 256
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	264,r13		! source line 264
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_404 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_404  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	265,r13		! source line 265
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_406		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_406
!	jmp	_Label_405
_Label_405:
! THEN...
	mov	267,r13		! source line 267
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_407 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_407  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	267,r13		! source line 267
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_409 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_408 = *_temp_409  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_408  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	268,r13		! source line 268
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_406:
! CALL STATEMENT...
!   _temp_410 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_410  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	270,r13		! source line 270
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_411 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_411  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	272,r13		! source line 272
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_412 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_412  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	273,r13		! source line 273
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	274,r13		! source line 274
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	274,r13		! source line 274
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
	.word	_Label_413
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_414
	.word	8
	.word	4
	.word	_Label_415
	.word	-12
	.word	4
	.word	_Label_416
	.word	-16
	.word	4
	.word	_Label_417
	.word	-20
	.word	4
	.word	_Label_418
	.word	-24
	.word	4
	.word	_Label_419
	.word	-28
	.word	4
	.word	_Label_420
	.word	-32
	.word	4
	.word	_Label_421
	.word	-36
	.word	4
	.word	_Label_422
	.word	-40
	.word	4
	.word	0
_Label_413:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_414:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_422:
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
_Label_3396:
	push	r0
	sub	r1,1,r1
	bne	_Label_3396
	mov	279,r13		! source line 279
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	292,r13		! source line 292
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	293,r13		! source line 293
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_424		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_424
!	jmp	_Label_423
_Label_423:
! THEN...
	mov	295,r13		! source line 295
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	296,r13		! source line 296
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_425
_Label_424:
! ELSE...
	mov	298,r13		! source line 298
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	299,r13		! source line 299
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_425:
! RETURN STATEMENT...
	mov	301,r13		! source line 301
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
	.word	_Label_426
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_427
	.word	8
	.word	4
	.word	_Label_428
	.word	-12
	.word	4
	.word	0
_Label_426:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_427:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_428:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_241_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_241_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3397:
	push	r0
	sub	r1,1,r1
	bne	_Label_3397
	mov	922,r13		! source line 922
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	930,r13		! source line 930
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_432		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_432
!   _temp_431 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_433
_Label_432:
!   _temp_431 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_433:
!   if _temp_431 then goto _Label_430 else goto _Label_429
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_429
	jmp	_Label_430
_Label_429:
! THEN...
	mov	931,r13		! source line 931
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_434 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_434  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_430:
! CALL STATEMENT...
!   _temp_435 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_435  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	934,r13		! source line 934
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_437 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_436 = *_temp_437  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_436  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	935,r13		! source line 935
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_438 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_438  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	937,r13		! source line 937
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_447 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_446 = *_temp_447  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_441
	cmp	r1,2
	be	_Label_442
	cmp	r1,3
	be	_Label_443
	cmp	r1,4
	be	_Label_444
	cmp	r1,5
	be	_Label_445
	jmp	_Label_439
! CASE 1...
_Label_441:
! CALL STATEMENT...
!   _temp_448 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_448  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	939,r13		! source line 939
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0BR",r10
	jmp	_Label_440
! CASE 2...
_Label_442:
! CALL STATEMENT...
!   _temp_449 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_449  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	942,r13		! source line 942
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	943,r13		! source line 943
	mov	"\0\0BR",r10
	jmp	_Label_440
! CASE 3...
_Label_443:
! CALL STATEMENT...
!   _temp_450 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_450  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	945,r13		! source line 945
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	946,r13		! source line 946
	mov	"\0\0BR",r10
	jmp	_Label_440
! CASE 4...
_Label_444:
! CALL STATEMENT...
!   _temp_451 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_451  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	948,r13		! source line 948
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	949,r13		! source line 949
	mov	"\0\0BR",r10
	jmp	_Label_440
! CASE 5...
_Label_445:
! CALL STATEMENT...
!   _temp_452 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_452  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	951,r13		! source line 951
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0BR",r10
	jmp	_Label_440
! DEFAULT CASE...
_Label_439:
! CALL STATEMENT...
!   _temp_453 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_453  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	954,r13		! source line 954
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_440:
! CALL STATEMENT...
!   _temp_454 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_454  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	956,r13		! source line 956
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_455 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_455  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	957,r13		! source line 957
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_456 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_456  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	958,r13		! source line 958
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	959,r13		! source line 959
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	961,r13		! source line 961
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_241_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_457
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_458
	.word	8
	.word	4
	.word	_Label_459
	.word	-16
	.word	4
	.word	_Label_460
	.word	-20
	.word	4
	.word	_Label_461
	.word	-24
	.word	4
	.word	_Label_462
	.word	-28
	.word	4
	.word	_Label_463
	.word	-32
	.word	4
	.word	_Label_464
	.word	-36
	.word	4
	.word	_Label_465
	.word	-40
	.word	4
	.word	_Label_466
	.word	-44
	.word	4
	.word	_Label_467
	.word	-48
	.word	4
	.word	_Label_468
	.word	-52
	.word	4
	.word	_Label_469
	.word	-56
	.word	4
	.word	_Label_470
	.word	-60
	.word	4
	.word	_Label_471
	.word	-64
	.word	4
	.word	_Label_472
	.word	-68
	.word	4
	.word	_Label_473
	.word	-72
	.word	4
	.word	_Label_474
	.word	-76
	.word	4
	.word	_Label_475
	.word	-9
	.word	1
	.word	_Label_476
	.word	-80
	.word	4
	.word	0
_Label_457:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_458:
	.byte	'P'
	.ascii	"t\0"
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
	.ascii	"_temp_451\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_475:
	.byte	'C'
	.ascii	"_temp_431\0"
	.align
_Label_476:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_240_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_240_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3398:
	push	r0
	sub	r1,1,r1
	bne	_Label_3398
	mov	1482,r13		! source line 1482
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_477 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_477  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1486,r13		! source line 1486
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1487,r13		! source line 1487
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_240_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_478
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_479
	.word	8
	.word	4
	.word	_Label_480
	.word	-12
	.word	4
	.word	0
_Label_478:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_479:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_477\0"
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
_Label_3399:
	push	r0
	sub	r1,1,r1
	bne	_Label_3399
	mov	1492,r13		! source line 1492
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_481 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_481  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1498,r13		! source line 1498
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1498,r13		! source line 1498
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
	.word	_Label_482
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_483
	.word	8
	.word	4
	.word	_Label_484
	.word	-12
	.word	4
	.word	0
_Label_482:
	.ascii	"ProcessFinish\0"
	.align
_Label_483:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_481\0"
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
_Label_3400:
	push	r0
	sub	r1,1,r1
	bne	_Label_3400
	mov	2036,r13		! source line 2036
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2048,r13		! source line 2048
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
	mov	2049,r13		! source line 2049
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2049,r13		! source line 2049
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
	.word	_Label_485
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_485:
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
_Label_3401:
	push	r0
	sub	r1,1,r1
	bne	_Label_3401
	mov	2054,r13		! source line 2054
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0IF",r10
!   _temp_489 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_490 = _temp_489 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_488 = *_temp_490  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_488 == 0 then goto _Label_487		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_487
!	jmp	_Label_486
_Label_486:
! THEN...
	mov	2066,r13		! source line 2066
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0SE",r10
!   _temp_492 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_493 = _temp_492 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_491 = *_temp_493  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_491) then goto _runtimeErrorNullPointer
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
_Label_487:
! RETURN STATEMENT...
	mov	2065,r13		! source line 2065
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
	.word	_Label_494
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_495
	.word	-12
	.word	4
	.word	_Label_496
	.word	-16
	.word	4
	.word	_Label_497
	.word	-20
	.word	4
	.word	_Label_498
	.word	-24
	.word	4
	.word	_Label_499
	.word	-28
	.word	4
	.word	_Label_500
	.word	-32
	.word	4
	.word	0
_Label_494:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_488\0"
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
	mov	2079,r13		! source line 2079
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2088,r13		! source line 2088
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
	.word	_Label_501
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_501:
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
_Label_3402:
	push	r0
	sub	r1,1,r1
	bne	_Label_3402
	mov	2093,r13		! source line 2093
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_502 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_502  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2100,r13		! source line 2100
	mov	"\0\0CA",r10
	call	_function_239_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2100,r13		! source line 2100
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
	.word	_Label_503
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_504
	.word	-12
	.word	4
	.word	0
_Label_503:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_502\0"
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
_Label_3403:
	push	r0
	sub	r1,1,r1
	bne	_Label_3403
	mov	2105,r13		! source line 2105
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2111,r13		! source line 2111
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_505 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_505  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2112,r13		! source line 2112
	mov	"\0\0CA",r10
	call	_function_239_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2112,r13		! source line 2112
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
	.word	_Label_506
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_507
	.word	-12
	.word	4
	.word	0
_Label_506:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_505\0"
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
_Label_3404:
	push	r0
	sub	r1,1,r1
	bne	_Label_3404
	mov	2117,r13		! source line 2117
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_508 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_508  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2124,r13		! source line 2124
	mov	"\0\0CA",r10
	call	_function_239_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2124,r13		! source line 2124
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
	.word	_Label_509
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_510
	.word	-12
	.word	4
	.word	0
_Label_509:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_508\0"
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
_Label_3405:
	push	r0
	sub	r1,1,r1
	bne	_Label_3405
	mov	2129,r13		! source line 2129
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2135,r13		! source line 2135
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_511 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_511  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2136,r13		! source line 2136
	mov	"\0\0CA",r10
	call	_function_239_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2136,r13		! source line 2136
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
	.word	_Label_512
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_513
	.word	-12
	.word	4
	.word	0
_Label_512:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_511\0"
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
_Label_3406:
	push	r0
	sub	r1,1,r1
	bne	_Label_3406
	mov	2141,r13		! source line 2141
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2147,r13		! source line 2147
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_514 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_514  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2148,r13		! source line 2148
	mov	"\0\0CA",r10
	call	_function_239_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2148,r13		! source line 2148
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
	.word	_Label_515
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_516
	.word	-12
	.word	4
	.word	0
_Label_515:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_514\0"
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
_Label_3407:
	push	r0
	sub	r1,1,r1
	bne	_Label_3407
	mov	2153,r13		! source line 2153
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_517 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_517  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2160,r13		! source line 2160
	mov	"\0\0CA",r10
	call	_function_239_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2160,r13		! source line 2160
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
	.word	_Label_518
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_519
	.word	-12
	.word	4
	.word	0
_Label_518:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_517\0"
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
_Label_3408:
	push	r0
	sub	r1,1,r1
	bne	_Label_3408
	mov	2165,r13		! source line 2165
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_520 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_520  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2172,r13		! source line 2172
	mov	"\0\0CA",r10
	call	_function_239_ErrorInUserProcess
! RETURN STATEMENT...
	mov	2172,r13		! source line 2172
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
	.word	_Label_521
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_522
	.word	-12
	.word	4
	.word	0
_Label_521:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_239_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_239_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3409:
	push	r0
	sub	r1,1,r1
	bne	_Label_3409
	mov	2177,r13		! source line 2177
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_523 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_523  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2182,r13		! source line 2182
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2183,r13		! source line 2183
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_524 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_524  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2184,r13		! source line 2184
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_528 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_527 = *_temp_528  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_527 == 0 then goto _Label_526		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_526
!	jmp	_Label_525
_Label_525:
! THEN...
	mov	2188,r13		! source line 2188
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_530 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_529 = *_temp_530  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_529) then goto _runtimeErrorNullPointer
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
	jmp	_Label_531
_Label_526:
! ELSE...
	mov	2190,r13		! source line 2190
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_532 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_532  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2190,r13		! source line 2190
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_531:
! SEND STATEMENT...
	mov	2192,r13		! source line 2192
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
	mov	2198,r13		! source line 2198
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_239_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_533
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_534
	.word	8
	.word	4
	.word	_Label_535
	.word	-12
	.word	4
	.word	_Label_536
	.word	-16
	.word	4
	.word	_Label_537
	.word	-20
	.word	4
	.word	_Label_538
	.word	-24
	.word	4
	.word	_Label_539
	.word	-28
	.word	4
	.word	_Label_540
	.word	-32
	.word	4
	.word	_Label_541
	.word	-36
	.word	4
	.word	0
_Label_533:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_534:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_523\0"
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
_Label_3410:
	push	r0
	sub	r1,1,r1
	bne	_Label_3410
	mov	2203,r13		! source line 2203
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	2224,r13		! source line 2224
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3411
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_542
_Label_3411:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_542
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_542
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_556,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_556:
	jmp	_Label_548	! 1:	
	jmp	_Label_555	! 2:	
	jmp	_Label_545	! 3:	
	jmp	_Label_544	! 4:	
	jmp	_Label_547	! 5:	
	jmp	_Label_546	! 6:	
	jmp	_Label_549	! 7:	
	jmp	_Label_550	! 8:	
	jmp	_Label_551	! 9:	
	jmp	_Label_552	! 10:	
	jmp	_Label_553	! 11:	
	jmp	_Label_554	! 12:	
! CASE 4...
_Label_544:
! RETURN STATEMENT...
	mov	2226,r13		! source line 2226
	mov	"\0\0RE",r10
!   Call the function
	mov	2226,r13		! source line 2226
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_557  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_557  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_545:
! CALL STATEMENT...
!   Call the function
	mov	2228,r13		! source line 2228
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	2229,r13		! source line 2229
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_546:
! RETURN STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2231,r13		! source line 2231
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_558  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_558  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_547:
! RETURN STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2233,r13		! source line 2233
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_559  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_559  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_548:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2235,r13		! source line 2235
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	2236,r13		! source line 2236
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_549:
! RETURN STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2238,r13		! source line 2238
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_560  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_560  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_550:
! RETURN STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2240,r13		! source line 2240
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_561  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_561  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_551:
! RETURN STATEMENT...
	mov	2242,r13		! source line 2242
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
	mov	2242,r13		! source line 2242
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_562  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_562  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_552:
! RETURN STATEMENT...
	mov	2244,r13		! source line 2244
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
	mov	2244,r13		! source line 2244
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_563  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_563  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_553:
! RETURN STATEMENT...
	mov	2246,r13		! source line 2246
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2246,r13		! source line 2246
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_564  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_564  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_554:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2248,r13		! source line 2248
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_555:
! CALL STATEMENT...
!   Call the function
	mov	2251,r13		! source line 2251
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_542:
! CALL STATEMENT...
!   _temp_565 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_565  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2254,r13		! source line 2254
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2255,r13		! source line 2255
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2256,r13		! source line 2256
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_566 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_566  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2257,r13		! source line 2257
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_543:
! RETURN STATEMENT...
	mov	2259,r13		! source line 2259
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
	.word	_Label_567
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_568
	.word	8
	.word	4
	.word	_Label_569
	.word	12
	.word	4
	.word	_Label_570
	.word	16
	.word	4
	.word	_Label_571
	.word	20
	.word	4
	.word	_Label_572
	.word	24
	.word	4
	.word	_Label_573
	.word	-12
	.word	4
	.word	_Label_574
	.word	-16
	.word	4
	.word	_Label_575
	.word	-20
	.word	4
	.word	_Label_576
	.word	-24
	.word	4
	.word	_Label_577
	.word	-28
	.word	4
	.word	_Label_578
	.word	-32
	.word	4
	.word	_Label_579
	.word	-36
	.word	4
	.word	_Label_580
	.word	-40
	.word	4
	.word	_Label_581
	.word	-44
	.word	4
	.word	_Label_582
	.word	-48
	.word	4
	.word	0
_Label_567:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_568:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_569:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_570:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_571:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_572:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_557\0"
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
	mov	3,r1
_Label_3412:
	push	r0
	sub	r1,1,r1
	bne	_Label_3412
	mov	2264,r13		! source line 2264
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_583 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_583  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2269,r13		! source line 2269
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_584 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_584  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2270,r13		! source line 2270
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2273,r13		! source line 2273
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2274,r13		! source line 2274
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2274,r13		! source line 2274
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_585
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_586
	.word	8
	.word	4
	.word	_Label_587
	.word	-12
	.word	4
	.word	_Label_588
	.word	-16
	.word	4
	.word	0
_Label_585:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_586:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_583\0"
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
	mov	2,r1
_Label_3413:
	push	r0
	sub	r1,1,r1
	bne	_Label_3413
	mov	2280,r13		! source line 2280
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_589 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_589  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2285,r13		! source line 2285
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_590
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_591
	.word	-12
	.word	4
	.word	0
_Label_590:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_589\0"
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
	mov	2,r1
_Label_3414:
	push	r0
	sub	r1,1,r1
	bne	_Label_3414
	mov	2291,r13		! source line 2291
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_592 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_592  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2295,r13		! source line 2295
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_593
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_594
	.word	-12
	.word	4
	.word	0
_Label_593:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_592\0"
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
	mov	2,r1
_Label_3415:
	push	r0
	sub	r1,1,r1
	bne	_Label_3415
	mov	2300,r13		! source line 2300
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_595 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_595  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2305,r13		! source line 2305
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2306,r13		! source line 2306
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_596
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_597
	.word	-12
	.word	4
	.word	0
_Label_596:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_595\0"
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
	mov	3,r1
_Label_3416:
	push	r0
	sub	r1,1,r1
	bne	_Label_3416
	mov	2311,r13		! source line 2311
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_598 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_598  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2318,r13		! source line 2318
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_599 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_599  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2319,r13		! source line 2319
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2320,r13		! source line 2320
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2321,r13		! source line 2321
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2322,r13		! source line 2322
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_600
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_601
	.word	8
	.word	4
	.word	_Label_602
	.word	-12
	.word	4
	.word	_Label_603
	.word	-16
	.word	4
	.word	0
_Label_600:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_601:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_598\0"
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
	mov	68,r1
_Label_3417:
	push	r0
	sub	r1,1,r1
	bne	_Label_3417
	mov	2327,r13		! source line 2327
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-216,r4
	mov	23,r3
_Label_3418:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3418
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-216]
! SEND STATEMENT...
	mov	2347,r13		! source line 2347
	mov	"\0\0SE",r10
!   _temp_605 = &newAddrSpace
	add	r14,-216,r1
	store	r1,[r14+-120]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2351,r13		! source line 2351
	mov	"\0\0AS",r10
	mov	2351,r13		! source line 2351
	mov	"\0\0SE",r10
!   _temp_606 = &stringBuffer
	add	r14,-240,r1
	store	r1,[r14+-116]
!   _temp_607 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-112]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_609 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_608 = *_temp_609  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_608) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_610 = _temp_608 + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_606  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_607  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2353,r13		! source line 2353
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_612		(int)
	load	[r14+-264],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_612
!	jmp	_Label_611
_Label_611:
! THEN...
	mov	2354,r13		! source line 2354
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2354,r13		! source line 2354
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_612:
! ASSIGNMENT STATEMENT...
	mov	2359,r13		! source line 2359
	mov	"\0\0AS",r10
	mov	2359,r13		! source line 2359
	mov	"\0\0SE",r10
!   _temp_613 = &stringBuffer
	add	r14,-240,r1
	store	r1,[r14+-96]
!   _temp_614 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_613  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=fileName  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! IF STATEMENT...
	mov	2360,r13		! source line 2360
	mov	"\0\0IF",r10
!   if intIsZero (fileName) then goto _Label_615
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_615
	jmp	_Label_616
_Label_615:
! THEN...
	mov	2361,r13		! source line 2361
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_617 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_617  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	2361,r13		! source line 2361
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2362,r13		! source line 2362
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_616:
! ASSIGNMENT STATEMENT...
	mov	2367,r13		! source line 2367
	mov	"\0\0AS",r10
	mov	2367,r13		! source line 2367
	mov	"\0\0SE",r10
!   _temp_618 = &newAddrSpace
	add	r14,-216,r1
	store	r1,[r14+-84]
!   if intIsZero (fileName) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_618  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-244],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! IF STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0IF",r10
!   if initPC != -1 then goto _Label_620		(int)
	load	[r14+-248],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_620
!	jmp	_Label_619
_Label_619:
! THEN...
	mov	2370,r13		! source line 2370
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_621 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_621  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2370,r13		! source line 2370
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_620:
! SEND STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0SE",r10
!   _temp_622 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=fileName  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_625 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_624 = *_temp_625  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_624) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_626 = _temp_624 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_623 = _temp_626		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-72]
!   _temp_627 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_623  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2379,r13		! source line 2379
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_629 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_628 = *_temp_629  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_628) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_630 = _temp_628 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_630 = newAddrSpace  (sizeInBytes=92)
	add	r14,-216,r5
	load	[r14+-44],r4
	mov	23,r3
_Label_3419:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3419
! ASSIGNMENT STATEMENT...
	mov	2382,r13		! source line 2382
	mov	"\0\0AS",r10
!   _temp_632 = &newAddrSpace
	add	r14,-216,r1
	store	r1,[r14+-36]
!   _temp_633 = _temp_632 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_631 = *_temp_633  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   InitUserStackTop = _temp_631 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_634 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_634 [999 ] into _temp_635
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   initSystemStackTop = _temp_635		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-256]
! ASSIGNMENT STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2387,r13		! source line 2387
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-260]
! SEND STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0SE",r10
!   _temp_636 = &newAddrSpace
	add	r14,-216,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_637 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_637 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_638 = initSystemStackTop		(4 bytes)
	load	[r14+-256],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=InitUserStackTop  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_638  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	2390,r13		! source line 2390
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2392,r13		! source line 2392
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_639
	.word	4		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_640
	.word	8
	.word	4
	.word	_Label_641
	.word	-12
	.word	4
	.word	_Label_642
	.word	-16
	.word	4
	.word	_Label_643
	.word	-20
	.word	4
	.word	_Label_644
	.word	-24
	.word	4
	.word	_Label_645
	.word	-28
	.word	4
	.word	_Label_646
	.word	-32
	.word	4
	.word	_Label_647
	.word	-36
	.word	4
	.word	_Label_648
	.word	-40
	.word	4
	.word	_Label_649
	.word	-44
	.word	4
	.word	_Label_650
	.word	-48
	.word	4
	.word	_Label_651
	.word	-52
	.word	4
	.word	_Label_652
	.word	-56
	.word	4
	.word	_Label_653
	.word	-60
	.word	4
	.word	_Label_654
	.word	-64
	.word	4
	.word	_Label_655
	.word	-68
	.word	4
	.word	_Label_656
	.word	-72
	.word	4
	.word	_Label_657
	.word	-76
	.word	4
	.word	_Label_658
	.word	-80
	.word	4
	.word	_Label_659
	.word	-84
	.word	4
	.word	_Label_660
	.word	-88
	.word	4
	.word	_Label_661
	.word	-92
	.word	4
	.word	_Label_662
	.word	-96
	.word	4
	.word	_Label_663
	.word	-100
	.word	4
	.word	_Label_664
	.word	-104
	.word	4
	.word	_Label_665
	.word	-108
	.word	4
	.word	_Label_666
	.word	-112
	.word	4
	.word	_Label_667
	.word	-116
	.word	4
	.word	_Label_668
	.word	-120
	.word	4
	.word	_Label_669
	.word	-124
	.word	4
	.word	_Label_670
	.word	-216
	.word	92
	.word	_Label_671
	.word	-240
	.word	24
	.word	_Label_672
	.word	-244
	.word	4
	.word	_Label_673
	.word	-248
	.word	4
	.word	_Label_674
	.word	-252
	.word	4
	.word	_Label_675
	.word	-256
	.word	4
	.word	_Label_676
	.word	-260
	.word	4
	.word	_Label_677
	.word	-264
	.word	4
	.word	0
_Label_639:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_640:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_670:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_671:
	.byte	'A'
	.ascii	"stringBuffer\0"
	.align
_Label_672:
	.byte	'P'
	.ascii	"fileName\0"
	.align
_Label_673:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_674:
	.byte	'I'
	.ascii	"InitUserStackTop\0"
	.align
_Label_675:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_676:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_677:
	.byte	'I'
	.ascii	"i\0"
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
	mov	21,r1
_Label_3420:
	push	r0
	sub	r1,1,r1
	bne	_Label_3420
	mov	2397,r13		! source line 2397
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_678 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_678  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2405,r13		! source line 2405
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_679 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_679  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	2406,r13		! source line 2406
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_680 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_680  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	2407,r13		! source line 2407
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2408,r13		! source line 2408
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0AS",r10
	mov	2410,r13		! source line 2410
	mov	"\0\0SE",r10
!   _temp_681 = &stringBuffer
	add	r14,-76,r1
	store	r1,[r14+-36]
!   _temp_682 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_684 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_683 = *_temp_684  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_683) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_685 = _temp_683 + 32
	load	[r14+-28],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_681  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_682  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_687		(int)
	load	[r14+-52],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_687
!	jmp	_Label_686
_Label_686:
! THEN...
	mov	2413,r13		! source line 2413
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_687:
! CALL STATEMENT...
!   _temp_688 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_688  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2416,r13		! source line 2416
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_689 = &stringBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_689  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2417,r13		! source line 2417
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2418,r13		! source line 2418
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2420,r13		! source line 2420
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_690
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_691
	.word	8
	.word	4
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
	.word	_Label_698
	.word	-36
	.word	4
	.word	_Label_699
	.word	-40
	.word	4
	.word	_Label_700
	.word	-44
	.word	4
	.word	_Label_701
	.word	-48
	.word	4
	.word	_Label_702
	.word	-52
	.word	4
	.word	_Label_703
	.word	-76
	.word	24
	.word	0
_Label_690:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_691:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_702:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_703:
	.byte	'A'
	.ascii	"stringBuffer\0"
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
	mov	21,r1
_Label_3421:
	push	r0
	sub	r1,1,r1
	bne	_Label_3421
	mov	2425,r13		! source line 2425
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_704 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_704  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2432,r13		! source line 2432
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_705 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_705  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	2433,r13		! source line 2433
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_706 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_706  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	2434,r13		! source line 2434
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2435,r13		! source line 2435
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0AS",r10
	mov	2437,r13		! source line 2437
	mov	"\0\0SE",r10
!   _temp_707 = &stringBuffer
	add	r14,-76,r1
	store	r1,[r14+-36]
!   _temp_708 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_710 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_709 = *_temp_710  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_709) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_711 = _temp_709 + 32
	load	[r14+-28],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_707  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_708  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	2439,r13		! source line 2439
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_713		(int)
	load	[r14+-52],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_713
!	jmp	_Label_712
_Label_712:
! THEN...
	mov	2440,r13		! source line 2440
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_713:
! CALL STATEMENT...
!   _temp_714 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_714  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2443,r13		! source line 2443
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_715 = &stringBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_715  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2444,r13		! source line 2444
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2445,r13		! source line 2445
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2447,r13		! source line 2447
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_716
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_717
	.word	8
	.word	4
	.word	_Label_718
	.word	-12
	.word	4
	.word	_Label_719
	.word	-16
	.word	4
	.word	_Label_720
	.word	-20
	.word	4
	.word	_Label_721
	.word	-24
	.word	4
	.word	_Label_722
	.word	-28
	.word	4
	.word	_Label_723
	.word	-32
	.word	4
	.word	_Label_724
	.word	-36
	.word	4
	.word	_Label_725
	.word	-40
	.word	4
	.word	_Label_726
	.word	-44
	.word	4
	.word	_Label_727
	.word	-48
	.word	4
	.word	_Label_728
	.word	-52
	.word	4
	.word	_Label_729
	.word	-76
	.word	24
	.word	0
_Label_716:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_717:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_728:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_729:
	.byte	'A'
	.ascii	"stringBuffer\0"
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
	mov	6,r1
_Label_3422:
	push	r0
	sub	r1,1,r1
	bne	_Label_3422
	mov	2452,r13		! source line 2452
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_730 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_730  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2457,r13		! source line 2457
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_731 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_731  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2458,r13		! source line 2458
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2459,r13		! source line 2459
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2460,r13		! source line 2460
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_732 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_732  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2462,r13		! source line 2462
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_733 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_733  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2463,r13		! source line 2463
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2464,r13		! source line 2464
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_734 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_734  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2466,r13		! source line 2466
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2467,r13		! source line 2467
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2468,r13		! source line 2468
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2470,r13		! source line 2470
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_735
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_736
	.word	8
	.word	4
	.word	_Label_737
	.word	12
	.word	4
	.word	_Label_738
	.word	16
	.word	4
	.word	_Label_739
	.word	-12
	.word	4
	.word	_Label_740
	.word	-16
	.word	4
	.word	_Label_741
	.word	-20
	.word	4
	.word	_Label_742
	.word	-24
	.word	4
	.word	_Label_743
	.word	-28
	.word	4
	.word	0
_Label_735:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_736:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_737:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_738:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_730\0"
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
	mov	6,r1
_Label_3423:
	push	r0
	sub	r1,1,r1
	bne	_Label_3423
	mov	2475,r13		! source line 2475
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_744 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_744  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2482,r13		! source line 2482
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_745 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_745  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2483,r13		! source line 2483
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2484,r13		! source line 2484
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2485,r13		! source line 2485
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_746 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_746  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2487,r13		! source line 2487
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_747 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_747  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2488,r13		! source line 2488
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2489,r13		! source line 2489
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_748 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_748  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2491,r13		! source line 2491
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2492,r13		! source line 2492
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2493,r13		! source line 2493
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2495,r13		! source line 2495
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_749
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_750
	.word	8
	.word	4
	.word	_Label_751
	.word	12
	.word	4
	.word	_Label_752
	.word	16
	.word	4
	.word	_Label_753
	.word	-12
	.word	4
	.word	_Label_754
	.word	-16
	.word	4
	.word	_Label_755
	.word	-20
	.word	4
	.word	_Label_756
	.word	-24
	.word	4
	.word	_Label_757
	.word	-28
	.word	4
	.word	0
_Label_749:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_750:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_751:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_752:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_744\0"
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
	mov	4,r1
_Label_3424:
	push	r0
	sub	r1,1,r1
	bne	_Label_3424
	mov	2500,r13		! source line 2500
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_758 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_758  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2506,r13		! source line 2506
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_759 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_759  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2507,r13		! source line 2507
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2508,r13		! source line 2508
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2509,r13		! source line 2509
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_760 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_760  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2511,r13		! source line 2511
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2512,r13		! source line 2512
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2513,r13		! source line 2513
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_761
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_762
	.word	8
	.word	4
	.word	_Label_763
	.word	12
	.word	4
	.word	_Label_764
	.word	-12
	.word	4
	.word	_Label_765
	.word	-16
	.word	4
	.word	_Label_766
	.word	-20
	.word	4
	.word	0
_Label_761:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_762:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_763:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_758\0"
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
	mov	3,r1
_Label_3425:
	push	r0
	sub	r1,1,r1
	bne	_Label_3425
	mov	2520,r13		! source line 2520
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_767 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_767  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2525,r13		! source line 2525
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_768 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_768  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2526,r13		! source line 2526
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2527,r13		! source line 2527
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2528,r13		! source line 2528
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_769
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_770
	.word	8
	.word	4
	.word	_Label_771
	.word	-12
	.word	4
	.word	_Label_772
	.word	-16
	.word	4
	.word	0
_Label_769:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_770:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_238_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_238_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3426:
	push	r0
	sub	r1,1,r1
	bne	_Label_3426
	mov	3120,r13		! source line 3120
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3122,r13		! source line 3122
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3123,r13		! source line 3123
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	3124,r13		! source line 3124
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_773 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_773  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3125,r13		! source line 3125
	mov	"\0\0AS",r10
!   _temp_774 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_774) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_776 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_776) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_775 = *_temp_776  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_774 = _temp_775  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3126,r13		! source line 3126
	mov	"\0\0AS",r10
!   _temp_777 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_777) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_779 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_779) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_778 = *_temp_779  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_777 = _temp_778  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3127,r13		! source line 3127
	mov	"\0\0AS",r10
!   _temp_780 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_780) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_782 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_782) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_781 = *_temp_782  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_780 = _temp_781  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3127,r13		! source line 3127
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_238_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_783
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_784
	.word	8
	.word	4
	.word	_Label_785
	.word	12
	.word	4
	.word	_Label_786
	.word	-16
	.word	4
	.word	_Label_787
	.word	-9
	.word	1
	.word	_Label_788
	.word	-20
	.word	4
	.word	_Label_789
	.word	-24
	.word	4
	.word	_Label_790
	.word	-10
	.word	1
	.word	_Label_791
	.word	-28
	.word	4
	.word	_Label_792
	.word	-32
	.word	4
	.word	_Label_793
	.word	-11
	.word	1
	.word	_Label_794
	.word	-36
	.word	4
	.word	_Label_795
	.word	-12
	.word	1
	.word	_Label_796
	.word	-40
	.word	4
	.word	_Label_797
	.word	-44
	.word	4
	.word	0
_Label_783:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_784:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_785:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_787:
	.byte	'C'
	.ascii	"_temp_781\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_790:
	.byte	'C'
	.ascii	"_temp_778\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_793:
	.byte	'C'
	.ascii	"_temp_775\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_795:
	.byte	'C'
	.ascii	"_temp_773\0"
	.align
_Label_796:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_797:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_237_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_237_printFCB,r1
	push	r1
	mov	3,r1
_Label_3427:
	push	r0
	sub	r1,1,r1
	bne	_Label_3427
	mov	3130,r13		! source line 3130
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_799 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_798 = *_temp_799  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_798  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3131,r13		! source line 3131
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3132,r13		! source line 3132
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	3132,r13		! source line 3132
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_237_printFCB:
	.word	_sourceFileName
	.word	_Label_800
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_801
	.word	8
	.word	4
	.word	_Label_802
	.word	-12
	.word	4
	.word	_Label_803
	.word	-16
	.word	4
	.word	0
_Label_800:
	.ascii	"printFCB\0"
	.align
_Label_801:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_236_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_236_printOpen,r1
	push	r1
	mov	4,r1
_Label_3428:
	push	r0
	sub	r1,1,r1
	bne	_Label_3428
	mov	3135,r13		! source line 3135
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_804 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_804  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3136,r13		! source line 3136
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_805 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_805  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3137,r13		! source line 3137
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_806 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_806  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3138,r13		! source line 3138
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3139,r13		! source line 3139
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
	mov	3139,r13		! source line 3139
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_236_printOpen:
	.word	_sourceFileName
	.word	_Label_807
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_808
	.word	8
	.word	4
	.word	_Label_809
	.word	-12
	.word	4
	.word	_Label_810
	.word	-16
	.word	4
	.word	_Label_811
	.word	-20
	.word	4
	.word	0
_Label_807:
	.ascii	"printOpen\0"
	.align
_Label_808:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_812
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_812:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_813
	.word	_sourceFileName
	.word	126		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_813:
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
_Label_3429:
	push	r0
	sub	r1,1,r1
	bne	_Label_3429
	mov	330,r13		! source line 330
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_815		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_815
!	jmp	_Label_814
_Label_814:
! THEN...
	mov	332,r13		! source line 332
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_816 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_816  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	332,r13		! source line 332
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_815:
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	335,r13		! source line 335
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
	mov	335,r13		! source line 335
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
	.word	_Label_818
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_819
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_820
	.word	12
	.word	4
	.word	_Label_821
	.word	-12
	.word	4
	.word	_Label_822
	.word	-16
	.word	4
	.word	0
_Label_818:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_819:
	.ascii	"Pself\0"
	.align
_Label_820:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_816\0"
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
_Label_3430:
	push	r0
	sub	r1,1,r1
	bne	_Label_3430
	mov	340,r13		! source line 340
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	344,r13		! source line 344
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	344,r13		! source line 344
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	345,r13		! source line 345
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_824		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_824
!	jmp	_Label_823
_Label_823:
! THEN...
	mov	346,r13		! source line 346
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_825 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_825  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	346,r13		! source line 346
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_824:
! ASSIGNMENT STATEMENT...
	mov	348,r13		! source line 348
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
	mov	349,r13		! source line 349
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_827		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_827
!	jmp	_Label_826
_Label_826:
! THEN...
	mov	350,r13		! source line 350
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0AS",r10
	mov	350,r13		! source line 350
	mov	"\0\0SE",r10
!   _temp_828 = &waitingThreads
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
	mov	351,r13		! source line 351
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_829 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_829 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0SE",r10
!   _temp_830 = &_P_Kernel_readyList
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
_Label_827:
! ASSIGNMENT STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	354,r13		! source line 354
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	354,r13		! source line 354
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
	.word	_Label_831
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_832
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_833
	.word	-12
	.word	4
	.word	_Label_834
	.word	-16
	.word	4
	.word	_Label_835
	.word	-20
	.word	4
	.word	_Label_836
	.word	-24
	.word	4
	.word	_Label_837
	.word	-28
	.word	4
	.word	_Label_838
	.word	-32
	.word	4
	.word	0
_Label_831:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_832:
	.ascii	"Pself\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_837:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_838:
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
_Label_3431:
	push	r0
	sub	r1,1,r1
	bne	_Label_3431
	mov	359,r13		! source line 359
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	362,r13		! source line 362
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	362,r13		! source line 362
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	363,r13		! source line 363
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_840		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_840
!	jmp	_Label_839
_Label_839:
! THEN...
	mov	364,r13		! source line 364
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_841 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_841  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	364,r13		! source line 364
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_840:
! ASSIGNMENT STATEMENT...
	mov	366,r13		! source line 366
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
	mov	367,r13		! source line 367
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_843		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_843
!	jmp	_Label_842
_Label_842:
! THEN...
	mov	368,r13		! source line 368
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	368,r13		! source line 368
	mov	"\0\0SE",r10
!   _temp_844 = &waitingThreads
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
	mov	369,r13		! source line 369
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
_Label_843:
! ASSIGNMENT STATEMENT...
	mov	371,r13		! source line 371
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	371,r13		! source line 371
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	371,r13		! source line 371
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
	.word	_Label_845
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_846
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_847
	.word	-12
	.word	4
	.word	_Label_848
	.word	-16
	.word	4
	.word	_Label_849
	.word	-20
	.word	4
	.word	0
_Label_845:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_846:
	.ascii	"Pself\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_849:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_850
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_850:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_851
	.word	_sourceFileName
	.word	139		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_851:
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
_Label_3432:
	push	r0
	sub	r1,1,r1
	bne	_Label_3432
	mov	394,r13		! source line 394
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	395,r13		! source line 395
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
	mov	395,r13		! source line 395
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
	.word	_Label_853
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_854
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_855
	.word	-12
	.word	4
	.word	0
_Label_853:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_854:
	.ascii	"Pself\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_852\0"
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
_Label_3433:
	push	r0
	sub	r1,1,r1
	bne	_Label_3433
	mov	400,r13		! source line 400
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	403,r13		! source line 403
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_857		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_857
!	jmp	_Label_856
_Label_856:
! THEN...
	mov	404,r13		! source line 404
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_858 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_858  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	404,r13		! source line 404
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_857:
! ASSIGNMENT STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	406,r13		! source line 406
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	407,r13		! source line 407
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_862		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_862
!   _temp_861 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_863
_Label_862:
!   _temp_861 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_863:
!   if _temp_861 then goto _Label_860 else goto _Label_859
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_859
	jmp	_Label_860
_Label_859:
! THEN...
	mov	408,r13		! source line 408
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	408,r13		! source line 408
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_864
_Label_860:
! ELSE...
	mov	410,r13		! source line 410
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0SE",r10
!   _temp_865 = &waitingThreads
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
	mov	411,r13		! source line 411
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
_Label_864:
! ASSIGNMENT STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	413,r13		! source line 413
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	413,r13		! source line 413
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
	.word	_Label_866
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_867
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_868
	.word	-16
	.word	4
	.word	_Label_869
	.word	-9
	.word	1
	.word	_Label_870
	.word	-20
	.word	4
	.word	_Label_871
	.word	-24
	.word	4
	.word	0
_Label_866:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_867:
	.ascii	"Pself\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_869:
	.byte	'C'
	.ascii	"_temp_861\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_871:
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
_Label_3434:
	push	r0
	sub	r1,1,r1
	bne	_Label_3434
	mov	418,r13		! source line 418
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	422,r13		! source line 422
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_873		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_873
!	jmp	_Label_872
_Label_872:
! THEN...
	mov	423,r13		! source line 423
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_874 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_874  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	423,r13		! source line 423
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_873:
! ASSIGNMENT STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	425,r13		! source line 425
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0AS",r10
	mov	426,r13		! source line 426
	mov	"\0\0SE",r10
!   _temp_875 = &waitingThreads
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
	mov	427,r13		! source line 427
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_877		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_877
!	jmp	_Label_876
_Label_876:
! THEN...
	mov	428,r13		! source line 428
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_878 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_878 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_879 = &_P_Kernel_readyList
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
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_880
_Label_877:
! ELSE...
	mov	432,r13		! source line 432
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_880:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	434,r13		! source line 434
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	434,r13		! source line 434
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
	.word	_Label_881
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_882
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_883
	.word	-12
	.word	4
	.word	_Label_884
	.word	-16
	.word	4
	.word	_Label_885
	.word	-20
	.word	4
	.word	_Label_886
	.word	-24
	.word	4
	.word	_Label_887
	.word	-28
	.word	4
	.word	_Label_888
	.word	-32
	.word	4
	.word	0
_Label_881:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_882:
	.ascii	"Pself\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_887:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_888:
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
_Label_3435:
	push	r0
	sub	r1,1,r1
	bne	_Label_3435
	mov	439,r13		! source line 439
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	440,r13		! source line 440
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_891		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_891
!	jmp	_Label_890
_Label_890:
!   _temp_889 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_892
_Label_891:
!   _temp_889 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_892:
!   ReturnResult: _temp_889  (sizeInBytes=1)
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
	.word	_Label_893
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_894
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_895
	.word	-9
	.word	1
	.word	0
_Label_893:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_894:
	.ascii	"Pself\0"
	.align
_Label_895:
	.byte	'C'
	.ascii	"_temp_889\0"
	.align
! 
! ===============  CLASS MutexHoare  ===============
! 
! Dispatch Table:
! 
_P_Kernel_MutexHoare:
	.word	_Label_896
	jmp	_Method_P_Kernel_MutexHoare_1	! 4:	Init
	jmp	_Method_P_Kernel_MutexHoare_2	! 8:	Lock
	jmp	_Method_P_Kernel_MutexHoare_3	! 12:	Unlock
	jmp	_Method_P_Kernel_MutexHoare_4	! 16:	GiveUpLock
	jmp	_Method_P_Kernel_MutexHoare_5	! 20:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_896:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_897
	.word	_sourceFileName
	.word	153		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_MutexHoare
	.word	_P_System_Object
	.word	0
_Label_897:
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
_Label_3436:
	push	r0
	sub	r1,1,r1
	bne	_Label_3436
	mov	465,r13		! source line 465
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	466,r13		! source line 466
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
	mov	466,r13		! source line 466
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
	.word	_Label_899
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_900
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_901
	.word	-12
	.word	4
	.word	0
_Label_899:
	.ascii	"MutexHoare"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_900:
	.ascii	"Pself\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_898\0"
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
_Label_3437:
	push	r0
	sub	r1,1,r1
	bne	_Label_3437
	mov	471,r13		! source line 471
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_903		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_903
!	jmp	_Label_902
_Label_902:
! THEN...
	mov	475,r13		! source line 475
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_904 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_904  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	475,r13		! source line 475
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_903:
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	477,r13		! source line 477
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_908		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_908
!   _temp_907 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_909
_Label_908:
!   _temp_907 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_909:
!   if _temp_907 then goto _Label_906 else goto _Label_905
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_905
	jmp	_Label_906
_Label_905:
! THEN...
	mov	479,r13		! source line 479
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_910
_Label_906:
! ELSE...
	mov	481,r13		! source line 481
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0SE",r10
!   _temp_911 = &waitingThreads
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
	mov	482,r13		! source line 482
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
_Label_910:
! ASSIGNMENT STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	484,r13		! source line 484
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	484,r13		! source line 484
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
	.word	_Label_912
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_913
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_914
	.word	-16
	.word	4
	.word	_Label_915
	.word	-9
	.word	1
	.word	_Label_916
	.word	-20
	.word	4
	.word	_Label_917
	.word	-24
	.word	4
	.word	0
_Label_912:
	.ascii	"MutexHoare"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_913:
	.ascii	"Pself\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_915:
	.byte	'C'
	.ascii	"_temp_907\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_917:
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
_Label_3438:
	push	r0
	sub	r1,1,r1
	bne	_Label_3438
	mov	489,r13		! source line 489
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	493,r13		! source line 493
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_919		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_919
!	jmp	_Label_918
_Label_918:
! THEN...
	mov	494,r13		! source line 494
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_920 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_920  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	494,r13		! source line 494
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_919:
! ASSIGNMENT STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	496,r13		! source line 496
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0AS",r10
	mov	497,r13		! source line 497
	mov	"\0\0SE",r10
!   _temp_921 = &waitingThreads
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
	mov	498,r13		! source line 498
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_923		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_923
!	jmp	_Label_922
_Label_922:
! THEN...
	mov	499,r13		! source line 499
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_924 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_924 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0SE",r10
!   _temp_925 = &_P_Kernel_readyList
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
	mov	501,r13		! source line 501
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_926
_Label_923:
! ELSE...
	mov	503,r13		! source line 503
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	503,r13		! source line 503
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_926:
! ASSIGNMENT STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	505,r13		! source line 505
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	505,r13		! source line 505
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
	.word	_Label_927
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_928
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_929
	.word	-12
	.word	4
	.word	_Label_930
	.word	-16
	.word	4
	.word	_Label_931
	.word	-20
	.word	4
	.word	_Label_932
	.word	-24
	.word	4
	.word	_Label_933
	.word	-28
	.word	4
	.word	_Label_934
	.word	-32
	.word	4
	.word	0
_Label_927:
	.ascii	"MutexHoare"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_928:
	.ascii	"Pself\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_933:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_934:
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
	mov	510,r13		! source line 510
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	512,r13		! source line 512
	mov	"\0\0AS",r10
!   heldBy = th		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	512,r13		! source line 512
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
	.word	_Label_935
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_936
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_937
	.word	12
	.word	4
	.word	0
_Label_935:
	.ascii	"MutexHoare"
	.ascii	"::"
	.ascii	"GiveUpLock\0"
	.align
_Label_936:
	.ascii	"Pself\0"
	.align
_Label_937:
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
_Label_3439:
	push	r0
	sub	r1,1,r1
	bne	_Label_3439
	mov	518,r13		! source line 518
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_940		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_940
!	jmp	_Label_939
_Label_939:
!   _temp_938 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_941
_Label_940:
!   _temp_938 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_941:
!   ReturnResult: _temp_938  (sizeInBytes=1)
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
	.word	_Label_942
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_943
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_944
	.word	-9
	.word	1
	.word	0
_Label_942:
	.ascii	"MutexHoare"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_943:
	.ascii	"Pself\0"
	.align
_Label_944:
	.byte	'C'
	.ascii	"_temp_938\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_945
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_945:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_946
	.word	_sourceFileName
	.word	168		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_946:
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
_Label_3440:
	push	r0
	sub	r1,1,r1
	bne	_Label_3440
	mov	559,r13		! source line 559
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	560,r13		! source line 560
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
	mov	560,r13		! source line 560
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
	.word	_Label_948
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_949
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_950
	.word	-12
	.word	4
	.word	0
_Label_948:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_949:
	.ascii	"Pself\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_947\0"
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
_Label_3441:
	push	r0
	sub	r1,1,r1
	bne	_Label_3441
	mov	565,r13		! source line 565
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0IF",r10
	mov	568,r13		! source line 568
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
!   Retrieve Result: targetName=_temp_953  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_953 then goto _Label_952 else goto _Label_951
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_951
	jmp	_Label_952
_Label_951:
! THEN...
	mov	569,r13		! source line 569
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_954 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_954  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	569,r13		! source line 569
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_952:
! ASSIGNMENT STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	571,r13		! source line 571
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	572,r13		! source line 572
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
	mov	573,r13		! source line 573
	mov	"\0\0SE",r10
!   _temp_955 = &waitingThreads
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
	mov	574,r13		! source line 574
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
	mov	575,r13		! source line 575
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
	mov	576,r13		! source line 576
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	576,r13		! source line 576
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	576,r13		! source line 576
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
	.word	_Label_956
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_957
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_958
	.word	12
	.word	4
	.word	_Label_959
	.word	-16
	.word	4
	.word	_Label_960
	.word	-20
	.word	4
	.word	_Label_961
	.word	-9
	.word	1
	.word	_Label_962
	.word	-24
	.word	4
	.word	0
_Label_956:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_957:
	.ascii	"Pself\0"
	.align
_Label_958:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_961:
	.byte	'C'
	.ascii	"_temp_953\0"
	.align
_Label_962:
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
_Label_3442:
	push	r0
	sub	r1,1,r1
	bne	_Label_3442
	mov	581,r13		! source line 581
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	585,r13		! source line 585
	mov	"\0\0IF",r10
	mov	585,r13		! source line 585
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
!   Retrieve Result: targetName=_temp_965  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_965 then goto _Label_964 else goto _Label_963
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_963
	jmp	_Label_964
_Label_963:
! THEN...
	mov	586,r13		! source line 586
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_966 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_966  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	586,r13		! source line 586
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_964:
! ASSIGNMENT STATEMENT...
	mov	588,r13		! source line 588
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0AS",r10
	mov	589,r13		! source line 589
	mov	"\0\0SE",r10
!   _temp_967 = &waitingThreads
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
	mov	590,r13		! source line 590
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_969		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_969
!	jmp	_Label_968
_Label_968:
! THEN...
	mov	591,r13		! source line 591
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_970 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_970 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	592,r13		! source line 592
	mov	"\0\0SE",r10
!   _temp_971 = &_P_Kernel_readyList
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
_Label_969:
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
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_972
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_973
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_974
	.word	12
	.word	4
	.word	_Label_975
	.word	-16
	.word	4
	.word	_Label_976
	.word	-20
	.word	4
	.word	_Label_977
	.word	-24
	.word	4
	.word	_Label_978
	.word	-28
	.word	4
	.word	_Label_979
	.word	-9
	.word	1
	.word	_Label_980
	.word	-32
	.word	4
	.word	_Label_981
	.word	-36
	.word	4
	.word	0
_Label_972:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_973:
	.ascii	"Pself\0"
	.align
_Label_974:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_979:
	.byte	'C'
	.ascii	"_temp_965\0"
	.align
_Label_980:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_981:
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
_Label_3443:
	push	r0
	sub	r1,1,r1
	bne	_Label_3443
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
!   Retrieve Result: targetName=_temp_984  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_984 then goto _Label_983 else goto _Label_982
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_982
	jmp	_Label_983
_Label_982:
! THEN...
	mov	604,r13		! source line 604
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_985 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_985  sizeInBytes=4
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
_Label_983:
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
_Label_986:
!	jmp	_Label_987
_Label_987:
	mov	607,r13		! source line 607
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0AS",r10
	mov	608,r13		! source line 608
	mov	"\0\0SE",r10
!   _temp_989 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_990
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_990
	jmp	_Label_991
_Label_990:
! THEN...
	mov	610,r13		! source line 610
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0BR",r10
	jmp	_Label_988
! END IF...
_Label_991:
! ASSIGNMENT STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_992 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_992 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0SE",r10
!   _temp_993 = &_P_Kernel_readyList
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
	jmp	_Label_986
_Label_988:
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
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_994
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_995
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_996
	.word	12
	.word	4
	.word	_Label_997
	.word	-16
	.word	4
	.word	_Label_998
	.word	-20
	.word	4
	.word	_Label_999
	.word	-24
	.word	4
	.word	_Label_1000
	.word	-28
	.word	4
	.word	_Label_1001
	.word	-9
	.word	1
	.word	_Label_1002
	.word	-32
	.word	4
	.word	_Label_1003
	.word	-36
	.word	4
	.word	0
_Label_994:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_995:
	.ascii	"Pself\0"
	.align
_Label_996:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1001:
	.byte	'C'
	.ascii	"_temp_984\0"
	.align
_Label_1002:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1003:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS ConditionHoare  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ConditionHoare:
	.word	_Label_1004
	jmp	_Method_P_Kernel_ConditionHoare_1	! 4:	Init
	jmp	_Method_P_Kernel_ConditionHoare_2	! 8:	Wait
	jmp	_Method_P_Kernel_ConditionHoare_3	! 12:	Signal
	jmp	_Method_P_Kernel_ConditionHoare_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1004:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1005
	.word	_sourceFileName
	.word	181		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_ConditionHoare
	.word	_P_System_Object
	.word	0
_Label_1005:
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
_Label_3444:
	push	r0
	sub	r1,1,r1
	bne	_Label_3444
	mov	655,r13		! source line 655
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	656,r13		! source line 656
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
	mov	656,r13		! source line 656
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
	.word	_Label_1007
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1008
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1009
	.word	-12
	.word	4
	.word	0
_Label_1007:
	.ascii	"ConditionHoare"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1008:
	.ascii	"Pself\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_1006\0"
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
_Label_3445:
	push	r0
	sub	r1,1,r1
	bne	_Label_3445
	mov	661,r13		! source line 661
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	664,r13		! source line 664
	mov	"\0\0IF",r10
	mov	664,r13		! source line 664
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
!   Retrieve Result: targetName=_temp_1012  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1012 then goto _Label_1011 else goto _Label_1010
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1010
	jmp	_Label_1011
_Label_1010:
! THEN...
	mov	665,r13		! source line 665
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1013 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1013  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	665,r13		! source line 665
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1011:
! ASSIGNMENT STATEMENT...
	mov	667,r13		! source line 667
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	668,r13		! source line 668
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
	mov	669,r13		! source line 669
	mov	"\0\0SE",r10
!   _temp_1014 = &waitingThreads
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
	mov	670,r13		! source line 670
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
	mov	671,r13		! source line 671
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
	mov	672,r13		! source line 672
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	672,r13		! source line 672
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
	.word	_Label_1015
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1016
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1017
	.word	12
	.word	4
	.word	_Label_1018
	.word	-16
	.word	4
	.word	_Label_1019
	.word	-20
	.word	4
	.word	_Label_1020
	.word	-9
	.word	1
	.word	_Label_1021
	.word	-24
	.word	4
	.word	0
_Label_1015:
	.ascii	"ConditionHoare"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1016:
	.ascii	"Pself\0"
	.align
_Label_1017:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1020:
	.byte	'C'
	.ascii	"_temp_1012\0"
	.align
_Label_1021:
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
_Label_3446:
	push	r0
	sub	r1,1,r1
	bne	_Label_3446
	mov	677,r13		! source line 677
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	681,r13		! source line 681
	mov	"\0\0IF",r10
	mov	681,r13		! source line 681
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
!   Retrieve Result: targetName=_temp_1024  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1024 then goto _Label_1023 else goto _Label_1022
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1022
	jmp	_Label_1023
_Label_1022:
! THEN...
	mov	682,r13		! source line 682
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1025 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1025  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	682,r13		! source line 682
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1023:
! ASSIGNMENT STATEMENT...
	mov	684,r13		! source line 684
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	684,r13		! source line 684
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	685,r13		! source line 685
	mov	"\0\0AS",r10
	mov	685,r13		! source line 685
	mov	"\0\0SE",r10
!   _temp_1026 = &waitingThreads
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
	mov	686,r13		! source line 686
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1028		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1028
!	jmp	_Label_1027
_Label_1027:
! THEN...
	mov	687,r13		! source line 687
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	687,r13		! source line 687
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1029 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1029 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	688,r13		! source line 688
	mov	"\0\0SE",r10
!   _temp_1030 = &_P_Kernel_readyList
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
	mov	692,r13		! source line 692
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
_Label_1028:
! ASSIGNMENT STATEMENT...
	mov	694,r13		! source line 694
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	694,r13		! source line 694
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
	.word	_Label_1031
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1032
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1033
	.word	12
	.word	4
	.word	_Label_1034
	.word	-16
	.word	4
	.word	_Label_1035
	.word	-20
	.word	4
	.word	_Label_1036
	.word	-24
	.word	4
	.word	_Label_1037
	.word	-28
	.word	4
	.word	_Label_1038
	.word	-9
	.word	1
	.word	_Label_1039
	.word	-32
	.word	4
	.word	_Label_1040
	.word	-36
	.word	4
	.word	0
_Label_1031:
	.ascii	"ConditionHoare"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1032:
	.ascii	"Pself\0"
	.align
_Label_1033:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1038:
	.byte	'C'
	.ascii	"_temp_1024\0"
	.align
_Label_1039:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1040:
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
_Label_3447:
	push	r0
	sub	r1,1,r1
	bne	_Label_3447
	mov	699,r13		! source line 699
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0IF",r10
	mov	703,r13		! source line 703
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
!   Retrieve Result: targetName=_temp_1043  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1043 then goto _Label_1042 else goto _Label_1041
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1041
	jmp	_Label_1042
_Label_1041:
! THEN...
	mov	704,r13		! source line 704
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1044 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1044  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	704,r13		! source line 704
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1042:
! ASSIGNMENT STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0WH",r10
_Label_1045:
!	jmp	_Label_1046
_Label_1046:
	mov	707,r13		! source line 707
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0AS",r10
	mov	708,r13		! source line 708
	mov	"\0\0SE",r10
!   _temp_1048 = &waitingThreads
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
	mov	709,r13		! source line 709
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_1049
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1049
	jmp	_Label_1050
_Label_1049:
! THEN...
	mov	710,r13		! source line 710
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0BR",r10
	jmp	_Label_1047
! END IF...
_Label_1050:
! ASSIGNMENT STATEMENT...
	mov	712,r13		! source line 712
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1051 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1051 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	713,r13		! source line 713
	mov	"\0\0SE",r10
!   _temp_1052 = &_P_Kernel_readyList
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
	jmp	_Label_1045
_Label_1047:
! ASSIGNMENT STATEMENT...
	mov	715,r13		! source line 715
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	715,r13		! source line 715
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	715,r13		! source line 715
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
	.word	_Label_1053
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1054
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1055
	.word	12
	.word	4
	.word	_Label_1056
	.word	-16
	.word	4
	.word	_Label_1057
	.word	-20
	.word	4
	.word	_Label_1058
	.word	-24
	.word	4
	.word	_Label_1059
	.word	-28
	.word	4
	.word	_Label_1060
	.word	-9
	.word	1
	.word	_Label_1061
	.word	-32
	.word	4
	.word	_Label_1062
	.word	-36
	.word	4
	.word	0
_Label_1053:
	.ascii	"ConditionHoare"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1054:
	.ascii	"Pself\0"
	.align
_Label_1055:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1060:
	.byte	'C'
	.ascii	"_temp_1043\0"
	.align
_Label_1061:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1062:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1063
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
_Label_1063:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1064
	.word	_sourceFileName
	.word	194		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1064:
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
_Label_3448:
	push	r0
	sub	r1,1,r1
	bne	_Label_3448
	mov	729,r13		! source line 729
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	734,r13		! source line 734
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	735,r13		! source line 735
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0AS",r10
!   _temp_1065 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1065) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1065 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	738,r13		! source line 738
	mov	"\0\0AS",r10
!   _temp_1066 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1066 [0 ] into _temp_1067
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
!   Data Move: *_temp_1067 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	739,r13		! source line 739
	mov	"\0\0AS",r10
!   _temp_1068 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1068 [999 ] into _temp_1069
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
!   Data Move: *_temp_1069 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0AS",r10
!   _temp_1070 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1070 [999 ] into _temp_1071
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
!   stackTop = _temp_1071		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	741,r13		! source line 741
	mov	"\0\0AS",r10
!   _temp_1072 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1074 = &_temp_1073
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1074 = _temp_1074 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1076:
!   Data Move: *_temp_1074 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1074 = _temp_1074 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1075 = _temp_1075 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1075) then goto _Label_1076
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1076
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1077 = &_temp_1073
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3449
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3449:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1072 = *_temp_1077  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3450:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3450
! ASSIGNMENT STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0AS",r10
!   _temp_1078 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1080 = &_temp_1079
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1080 = _temp_1080 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1082:
!   Data Move: *_temp_1080 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1080 = _temp_1080 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1081 = _temp_1081 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1081) then goto _Label_1082
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1082
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1083 = &_temp_1079
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3451
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3451:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1078 = *_temp_1083  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3452:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3452
! RETURN STATEMENT...
	mov	743,r13		! source line 743
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
	.word	_Label_1084
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1085
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1086
	.word	12
	.word	4
	.word	_Label_1087
	.word	-12
	.word	4
	.word	_Label_1088
	.word	-16
	.word	4
	.word	_Label_1089
	.word	-20
	.word	4
	.word	_Label_1090
	.word	-84
	.word	64
	.word	_Label_1091
	.word	-88
	.word	4
	.word	_Label_1092
	.word	-92
	.word	4
	.word	_Label_1093
	.word	-96
	.word	4
	.word	_Label_1094
	.word	-100
	.word	4
	.word	_Label_1095
	.word	-156
	.word	56
	.word	_Label_1096
	.word	-160
	.word	4
	.word	_Label_1097
	.word	-164
	.word	4
	.word	_Label_1098
	.word	-168
	.word	4
	.word	_Label_1099
	.word	-172
	.word	4
	.word	_Label_1100
	.word	-176
	.word	4
	.word	_Label_1101
	.word	-180
	.word	4
	.word	_Label_1102
	.word	-184
	.word	4
	.word	_Label_1103
	.word	-188
	.word	4
	.word	0
_Label_1084:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1085:
	.ascii	"Pself\0"
	.align
_Label_1086:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1065\0"
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
_Label_3453:
	push	r0
	sub	r1,1,r1
	bne	_Label_3453
	mov	748,r13		! source line 748
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	759,r13		! source line 759
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	759,r13		! source line 759
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	763,r13		! source line 763
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
	mov	764,r13		! source line 764
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1104 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1104  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	765,r13		! source line 765
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1106 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1105  sizeInBytes=4
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
	mov	767,r13		! source line 767
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	767,r13		! source line 767
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	767,r13		! source line 767
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
	.word	_Label_1107
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1108
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1109
	.word	12
	.word	4
	.word	_Label_1110
	.word	16
	.word	4
	.word	_Label_1111
	.word	-12
	.word	4
	.word	_Label_1112
	.word	-16
	.word	4
	.word	_Label_1113
	.word	-20
	.word	4
	.word	_Label_1114
	.word	-24
	.word	4
	.word	_Label_1115
	.word	-28
	.word	4
	.word	0
_Label_1107:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1108:
	.ascii	"Pself\0"
	.align
_Label_1109:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1110:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1114:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1115:
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
_Label_3454:
	push	r0
	sub	r1,1,r1
	bne	_Label_3454
	mov	772,r13		! source line 772
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1118 == _P_Kernel_currentThread then goto _Label_1117		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1117
!	jmp	_Label_1116
_Label_1116:
! THEN...
	mov	789,r13		! source line 789
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1119 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1119  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	789,r13		! source line 789
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1117:
! ASSIGNMENT STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	791,r13		! source line 791
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0AS",r10
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
!   _temp_1120 = &_P_Kernel_readyList
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
	mov	796,r13		! source line 796
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1122		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1122
!	jmp	_Label_1121
_Label_1121:
! THEN...
	mov	800,r13		! source line 800
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	800,r13		! source line 800
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1124		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1124
!	jmp	_Label_1123
_Label_1123:
! THEN...
	mov	801,r13		! source line 801
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1125 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1125  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	801,r13		! source line 801
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1124:
! ASSIGNMENT STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1127 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1126  sizeInBytes=4
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
	mov	805,r13		! source line 805
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1122:
! ASSIGNMENT STATEMENT...
	mov	807,r13		! source line 807
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	807,r13		! source line 807
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	807,r13		! source line 807
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
	.word	_Label_1128
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1129
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1130
	.word	-12
	.word	4
	.word	_Label_1131
	.word	-16
	.word	4
	.word	_Label_1132
	.word	-20
	.word	4
	.word	_Label_1133
	.word	-24
	.word	4
	.word	_Label_1134
	.word	-28
	.word	4
	.word	_Label_1135
	.word	-32
	.word	4
	.word	_Label_1136
	.word	-36
	.word	4
	.word	_Label_1137
	.word	-40
	.word	4
	.word	_Label_1138
	.word	-44
	.word	4
	.word	0
_Label_1128:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1129:
	.ascii	"Pself\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1136:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1137:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1138:
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
_Label_3455:
	push	r0
	sub	r1,1,r1
	bne	_Label_3455
	mov	812,r13		! source line 812
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1140		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1140
!	jmp	_Label_1139
_Label_1139:
! THEN...
	mov	825,r13		! source line 825
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1141 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1141  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	825,r13		! source line 825
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1140:
! IF STATEMENT...
	mov	828,r13		! source line 828
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1144 == _P_Kernel_currentThread then goto _Label_1143		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1143
!	jmp	_Label_1142
_Label_1142:
! THEN...
	mov	829,r13		! source line 829
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1145 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1145  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	829,r13		! source line 829
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1143:
! ASSIGNMENT STATEMENT...
	mov	834,r13		! source line 834
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	835,r13		! source line 835
	mov	"\0\0AS",r10
	mov	835,r13		! source line 835
	mov	"\0\0SE",r10
!   _temp_1146 = &_P_Kernel_readyList
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
	mov	836,r13		! source line 836
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1147
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1147
	jmp	_Label_1148
_Label_1147:
! THEN...
	mov	837,r13		! source line 837
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1149 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1149  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	837,r13		! source line 837
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1148:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	839,r13		! source line 839
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	839,r13		! source line 839
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
	.word	_Label_1150
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1151
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1152
	.word	-12
	.word	4
	.word	_Label_1153
	.word	-16
	.word	4
	.word	_Label_1154
	.word	-20
	.word	4
	.word	_Label_1155
	.word	-24
	.word	4
	.word	_Label_1156
	.word	-28
	.word	4
	.word	_Label_1157
	.word	-32
	.word	4
	.word	0
_Label_1150:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1151:
	.ascii	"Pself\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1157:
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
_Label_3456:
	push	r0
	sub	r1,1,r1
	bne	_Label_3456
	mov	844,r13		! source line 844
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	850,r13		! source line 850
	mov	"\0\0IF",r10
!   _temp_1161 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1161 [0 ] into _temp_1162
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
!   Data Move: _temp_1160 = *_temp_1162  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1160 == 606348324 then goto _Label_1159		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1159
!	jmp	_Label_1158
_Label_1158:
! THEN...
	mov	851,r13		! source line 851
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1163 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1163  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	851,r13		! source line 851
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1164
_Label_1159:
! ELSE...
	mov	852,r13		! source line 852
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0IF",r10
!   _temp_1168 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1168 [999 ] into _temp_1169
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
!   Data Move: _temp_1167 = *_temp_1169  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1167 == 606348324 then goto _Label_1166		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1166
!	jmp	_Label_1165
_Label_1165:
! THEN...
	mov	853,r13		! source line 853
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1170 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1170  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	853,r13		! source line 853
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1166:
! END IF...
_Label_1164:
! RETURN STATEMENT...
	mov	850,r13		! source line 850
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
	.word	_Label_1171
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1172
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1173
	.word	-12
	.word	4
	.word	_Label_1174
	.word	-16
	.word	4
	.word	_Label_1175
	.word	-20
	.word	4
	.word	_Label_1176
	.word	-24
	.word	4
	.word	_Label_1177
	.word	-28
	.word	4
	.word	_Label_1178
	.word	-32
	.word	4
	.word	_Label_1179
	.word	-36
	.word	4
	.word	_Label_1180
	.word	-40
	.word	4
	.word	0
_Label_1171:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1172:
	.ascii	"Pself\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1160\0"
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
_Label_3457:
	push	r0
	sub	r1,1,r1
	bne	_Label_3457
	mov	859,r13		! source line 859
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1181 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1181  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1182 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1182  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1183  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1184 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1184  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	870,r13		! source line 870
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1185 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1185  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	871,r13		! source line 871
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	872,r13		! source line 872
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1190 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1191 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1190  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1186:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1191 then goto _Label_1189		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1189
_Label_1187:
	mov	872,r13		! source line 872
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1192 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1192  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	873,r13		! source line 873
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1193 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1193  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	874,r13		! source line 874
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1194 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1194  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	875,r13		! source line 875
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1196 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1196 [i ] into _temp_1197
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
!   Data Move: _temp_1195 = *_temp_1197  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1195  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	876,r13		! source line 876
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1198 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1198  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	877,r13		! source line 877
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1200 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1200 [i ] into _temp_1201
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
!   Data Move: _temp_1199 = *_temp_1201  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1199  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	878,r13		! source line 878
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1202 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1202  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	879,r13		! source line 879
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1188:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1186
! END FOR
_Label_1189:
! CALL STATEMENT...
!   _temp_1203 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-116]
!   _temp_1204 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1203  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1204  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	881,r13		! source line 881
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1205 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-108]
!   _temp_1207 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1207 [0 ] into _temp_1208
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
!   _temp_1206 = _temp_1208		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1205  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1206  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	882,r13		! source line 882
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	883,r13		! source line 883
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1211
	cmp	r1,2
	be	_Label_1212
	cmp	r1,3
	be	_Label_1213
	cmp	r1,4
	be	_Label_1214
	cmp	r1,5
	be	_Label_1215
	jmp	_Label_1209
! CASE 1...
_Label_1211:
! CALL STATEMENT...
!   _temp_1216 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1216  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	885,r13		! source line 885
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	886,r13		! source line 886
	mov	"\0\0BR",r10
	jmp	_Label_1210
! CASE 2...
_Label_1212:
! CALL STATEMENT...
!   _temp_1217 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1217  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	888,r13		! source line 888
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	889,r13		! source line 889
	mov	"\0\0BR",r10
	jmp	_Label_1210
! CASE 3...
_Label_1213:
! CALL STATEMENT...
!   _temp_1218 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1218  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	891,r13		! source line 891
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	892,r13		! source line 892
	mov	"\0\0BR",r10
	jmp	_Label_1210
! CASE 4...
_Label_1214:
! CALL STATEMENT...
!   _temp_1219 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1219  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	894,r13		! source line 894
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0BR",r10
	jmp	_Label_1210
! CASE 5...
_Label_1215:
! CALL STATEMENT...
!   _temp_1220 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1220  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	897,r13		! source line 897
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0BR",r10
	jmp	_Label_1210
! DEFAULT CASE...
_Label_1209:
! CALL STATEMENT...
!   _temp_1221 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1221  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	900,r13		! source line 900
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1210:
! CALL STATEMENT...
!   _temp_1222 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1222  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	902,r13		! source line 902
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	903,r13		! source line 903
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	904,r13		! source line 904
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1223 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1223  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1228 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1229 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1228  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1224:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1229 then goto _Label_1227		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1227
_Label_1225:
	mov	906,r13		! source line 906
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1230 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1230  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	907,r13		! source line 907
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1231 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1231  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	908,r13		! source line 908
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1232 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1232  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	909,r13		! source line 909
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1234 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1234 [i ] into _temp_1235
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
!   Data Move: _temp_1233 = *_temp_1235  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1233  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	910,r13		! source line 910
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1236 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1236  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	911,r13		! source line 911
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1238 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1238 [i ] into _temp_1239
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
!   Data Move: _temp_1237 = *_temp_1239  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1237  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	912,r13		! source line 912
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1240 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1240  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	913,r13		! source line 913
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1226:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1224
! END FOR
_Label_1227:
! ASSIGNMENT STATEMENT...
	mov	915,r13		! source line 915
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	915,r13		! source line 915
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	915,r13		! source line 915
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
	.word	_Label_1241
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1242
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1243
	.word	-12
	.word	4
	.word	_Label_1244
	.word	-16
	.word	4
	.word	_Label_1245
	.word	-20
	.word	4
	.word	_Label_1246
	.word	-24
	.word	4
	.word	_Label_1247
	.word	-28
	.word	4
	.word	_Label_1248
	.word	-32
	.word	4
	.word	_Label_1249
	.word	-36
	.word	4
	.word	_Label_1250
	.word	-40
	.word	4
	.word	_Label_1251
	.word	-44
	.word	4
	.word	_Label_1252
	.word	-48
	.word	4
	.word	_Label_1253
	.word	-52
	.word	4
	.word	_Label_1254
	.word	-56
	.word	4
	.word	_Label_1255
	.word	-60
	.word	4
	.word	_Label_1256
	.word	-64
	.word	4
	.word	_Label_1257
	.word	-68
	.word	4
	.word	_Label_1258
	.word	-72
	.word	4
	.word	_Label_1259
	.word	-76
	.word	4
	.word	_Label_1260
	.word	-80
	.word	4
	.word	_Label_1261
	.word	-84
	.word	4
	.word	_Label_1262
	.word	-88
	.word	4
	.word	_Label_1263
	.word	-92
	.word	4
	.word	_Label_1264
	.word	-96
	.word	4
	.word	_Label_1265
	.word	-100
	.word	4
	.word	_Label_1266
	.word	-104
	.word	4
	.word	_Label_1267
	.word	-108
	.word	4
	.word	_Label_1268
	.word	-112
	.word	4
	.word	_Label_1269
	.word	-116
	.word	4
	.word	_Label_1270
	.word	-120
	.word	4
	.word	_Label_1271
	.word	-124
	.word	4
	.word	_Label_1272
	.word	-128
	.word	4
	.word	_Label_1273
	.word	-132
	.word	4
	.word	_Label_1274
	.word	-136
	.word	4
	.word	_Label_1275
	.word	-140
	.word	4
	.word	_Label_1276
	.word	-144
	.word	4
	.word	_Label_1277
	.word	-148
	.word	4
	.word	_Label_1278
	.word	-152
	.word	4
	.word	_Label_1279
	.word	-156
	.word	4
	.word	_Label_1280
	.word	-160
	.word	4
	.word	_Label_1281
	.word	-164
	.word	4
	.word	_Label_1282
	.word	-168
	.word	4
	.word	_Label_1283
	.word	-172
	.word	4
	.word	_Label_1284
	.word	-176
	.word	4
	.word	_Label_1285
	.word	-180
	.word	4
	.word	_Label_1286
	.word	-184
	.word	4
	.word	_Label_1287
	.word	-188
	.word	4
	.word	_Label_1288
	.word	-192
	.word	4
	.word	_Label_1289
	.word	-196
	.word	4
	.word	0
_Label_1241:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1242:
	.ascii	"Pself\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1288:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1289:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1290
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1290:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1291
	.word	_sourceFileName
	.word	221		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1291:
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
_Label_3458:
	push	r0
	sub	r1,1,r1
	bne	_Label_3458
	mov	976,r13		! source line 976
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0AS",r10
!   _temp_1292 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1294 = &_temp_1293
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-4364]
!   _temp_1294 = _temp_1294 + 4
	load	[r14+-4364],r1
	add	r1,4,r1
	store	r1,[r14+-4364]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1296 = zeros  (sizeInBytes=4164)
	add	r14,-4356,r4
	mov	1041,r3
_Label_3459:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3459
!   _temp_1296 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4356]
	mov	10,r1
	store	r1,[r14+-4360]
_Label_1298:
!   Data Move: *_temp_1294 = _temp_1296  (sizeInBytes=4164)
	add	r14,-4356,r5
	load	[r14+-4364],r4
	mov	1041,r3
_Label_3460:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3460
!   _temp_1294 = _temp_1294 + 4164
	load	[r14+-4364],r1
	add	r1,4164,r1
	store	r1,[r14+-4364]
!   _temp_1295 = _temp_1295 + -1
	load	[r14+-4360],r1
	add	r1,-1,r1
	store	r1,[r14+-4360]
!   if intNotZero (_temp_1295) then goto _Label_1298
	load	[r14+-4360],r1
	cmp	r1,r0
	bne	_Label_1298
!   Initialize the array size...
	mov	10,r1
	set	-46008,r2
	store	r1,[r14+r2]
!   _temp_1299 = &_temp_1293
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-188]
!   make sure array has size 10
	set	-46012,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3461
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3461:
!   make sure array has size 10
	load	[r14+-188],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1292 = *_temp_1299  (sizeInBytes=41644)
	load	[r14+-188],r5
	set	-46012,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3462:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3462
! ASSIGNMENT STATEMENT...
	mov	988,r13		! source line 988
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
	mov	991,r13		! source line 991
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
	mov	992,r13		! source line 992
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
	mov	994,r13		! source line 994
	mov	"\0\0SE",r10
!   _temp_1303 = &aThreadBecameFree
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
	mov	995,r13		! source line 995
	mov	"\0\0SE",r10
!   _temp_1304 = &threadManagerLock
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
	mov	997,r13		! source line 997
	mov	"\0\0SE",r10
!   _temp_1305 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-164]
!   _temp_1306 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_1306 [0 ] into _temp_1307
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
!   Prepare Argument: offset=12  value=_temp_1305  sizeInBytes=4
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
	mov	998,r13		! source line 998
	mov	"\0\0SE",r10
!   _temp_1308 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-152]
!   _temp_1309 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Move address of _temp_1309 [1 ] into _temp_1310
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
!   Prepare Argument: offset=12  value=_temp_1308  sizeInBytes=4
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
	mov	999,r13		! source line 999
	mov	"\0\0SE",r10
!   _temp_1311 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-140]
!   _temp_1312 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_1312 [2 ] into _temp_1313
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
!   Prepare Argument: offset=12  value=_temp_1311  sizeInBytes=4
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
	mov	1000,r13		! source line 1000
	mov	"\0\0SE",r10
!   _temp_1314 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-128]
!   _temp_1315 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-124]
!   Move address of _temp_1315 [3 ] into _temp_1316
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
!   Prepare Argument: offset=12  value=_temp_1314  sizeInBytes=4
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
	mov	1001,r13		! source line 1001
	mov	"\0\0SE",r10
!   _temp_1317 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-116]
!   _temp_1318 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_1318 [4 ] into _temp_1319
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
!   Prepare Argument: offset=12  value=_temp_1317  sizeInBytes=4
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
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_1320 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-104]
!   _temp_1321 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Move address of _temp_1321 [5 ] into _temp_1322
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
!   Prepare Argument: offset=12  value=_temp_1320  sizeInBytes=4
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
	mov	1003,r13		! source line 1003
	mov	"\0\0SE",r10
!   _temp_1323 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-92]
!   _temp_1324 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Move address of _temp_1324 [6 ] into _temp_1325
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
!   Prepare Argument: offset=12  value=_temp_1323  sizeInBytes=4
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
	mov	1004,r13		! source line 1004
	mov	"\0\0SE",r10
!   _temp_1326 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-80]
!   _temp_1327 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1327 [7 ] into _temp_1328
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
!   Prepare Argument: offset=12  value=_temp_1326  sizeInBytes=4
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
	mov	1005,r13		! source line 1005
	mov	"\0\0SE",r10
!   _temp_1329 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-68]
!   _temp_1330 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Move address of _temp_1330 [8 ] into _temp_1331
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
!   Prepare Argument: offset=12  value=_temp_1329  sizeInBytes=4
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
	mov	1006,r13		! source line 1006
	mov	"\0\0SE",r10
!   _temp_1332 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-56]
!   _temp_1333 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1333 [9 ] into _temp_1334
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
!   Prepare Argument: offset=12  value=_temp_1332  sizeInBytes=4
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
	mov	1009,r13		! source line 1009
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1339 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1340 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1339  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46016,r2
	store	r1,[r14+r2]
_Label_1335:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1340 then goto _Label_1338		
	set	-46016,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1338
_Label_1336:
	mov	1009,r13		! source line 1009
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0AS",r10
!   _temp_1341 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1341 [i ] into _temp_1342
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
!   _temp_1343 = _temp_1342 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1343 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1013,r13		! source line 1013
	mov	"\0\0SE",r10
!   _temp_1345 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1345 [i ] into _temp_1346
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
!   _temp_1344 = _temp_1346		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1347 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1344  sizeInBytes=4
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
_Label_1337:
!   i = i + 1
	set	-46016,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46016,r2
	store	r1,[r14+r2]
	jmp	_Label_1335
! END FOR
_Label_1338:
! RETURN STATEMENT...
	mov	1009,r13		! source line 1009
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
	.word	_Label_1348
	.word	4		! total size of parameters
	.word	46016		! frame size = 46016
	.word	_Label_1349
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1350
	.word	-12
	.word	4
	.word	_Label_1351
	.word	-16
	.word	4
	.word	_Label_1352
	.word	-20
	.word	4
	.word	_Label_1353
	.word	-24
	.word	4
	.word	_Label_1354
	.word	-28
	.word	4
	.word	_Label_1355
	.word	-32
	.word	4
	.word	_Label_1356
	.word	-36
	.word	4
	.word	_Label_1357
	.word	-40
	.word	4
	.word	_Label_1358
	.word	-44
	.word	4
	.word	_Label_1359
	.word	-48
	.word	4
	.word	_Label_1360
	.word	-52
	.word	4
	.word	_Label_1361
	.word	-56
	.word	4
	.word	_Label_1362
	.word	-60
	.word	4
	.word	_Label_1363
	.word	-64
	.word	4
	.word	_Label_1364
	.word	-68
	.word	4
	.word	_Label_1365
	.word	-72
	.word	4
	.word	_Label_1366
	.word	-76
	.word	4
	.word	_Label_1367
	.word	-80
	.word	4
	.word	_Label_1368
	.word	-84
	.word	4
	.word	_Label_1369
	.word	-88
	.word	4
	.word	_Label_1370
	.word	-92
	.word	4
	.word	_Label_1371
	.word	-96
	.word	4
	.word	_Label_1372
	.word	-100
	.word	4
	.word	_Label_1373
	.word	-104
	.word	4
	.word	_Label_1374
	.word	-108
	.word	4
	.word	_Label_1375
	.word	-112
	.word	4
	.word	_Label_1376
	.word	-116
	.word	4
	.word	_Label_1377
	.word	-120
	.word	4
	.word	_Label_1378
	.word	-124
	.word	4
	.word	_Label_1379
	.word	-128
	.word	4
	.word	_Label_1380
	.word	-132
	.word	4
	.word	_Label_1381
	.word	-136
	.word	4
	.word	_Label_1382
	.word	-140
	.word	4
	.word	_Label_1383
	.word	-144
	.word	4
	.word	_Label_1384
	.word	-148
	.word	4
	.word	_Label_1385
	.word	-152
	.word	4
	.word	_Label_1386
	.word	-156
	.word	4
	.word	_Label_1387
	.word	-160
	.word	4
	.word	_Label_1388
	.word	-164
	.word	4
	.word	_Label_1389
	.word	-168
	.word	4
	.word	_Label_1390
	.word	-172
	.word	4
	.word	_Label_1391
	.word	-176
	.word	4
	.word	_Label_1392
	.word	-180
	.word	4
	.word	_Label_1393
	.word	-184
	.word	4
	.word	_Label_1394
	.word	-188
	.word	4
	.word	_Label_1395
	.word	-192
	.word	4
	.word	_Label_1396
	.word	-4356
	.word	4164
	.word	_Label_1397
	.word	-4360
	.word	4
	.word	_Label_1398
	.word	-4364
	.word	4
	.word	_Label_1399
	.word	-46008
	.word	41644
	.word	_Label_1400
	.word	-46012
	.word	4
	.word	_Label_1401
	.word	-46016
	.word	4
	.word	0
_Label_1348:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1349:
	.ascii	"Pself\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1401:
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
_Label_3463:
	push	r0
	sub	r1,1,r1
	bne	_Label_3463
	mov	1020,r13		! source line 1020
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1027,r13		! source line 1027
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1027,r13		! source line 1027
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1402 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1402  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1028,r13		! source line 1028
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1407 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1408 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1407  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1403:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1408 then goto _Label_1406		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1406
_Label_1404:
	mov	1029,r13		! source line 1029
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1409 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1409  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1030,r13		! source line 1030
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1031,r13		! source line 1031
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1410 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1410  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1032,r13		! source line 1032
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1412 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1412 [i ] into _temp_1413
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
!   _temp_1411 = _temp_1413		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1411  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1033,r13		! source line 1033
	mov	"\0\0CA",r10
	call	_function_241_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1405:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1403
! END FOR
_Label_1406:
! CALL STATEMENT...
!   _temp_1414 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1414  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1035,r13		! source line 1035
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1036,r13		! source line 1036
	mov	"\0\0SE",r10
!   _temp_1415 = _function_240_PrintObjectAddr
	set	_function_240_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1416 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1415  sizeInBytes=4
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
	mov	1037,r13		! source line 1037
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1038,r13		! source line 1038
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	1038,r13		! source line 1038
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
	.word	_Label_1417
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1418
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1419
	.word	-12
	.word	4
	.word	_Label_1420
	.word	-16
	.word	4
	.word	_Label_1421
	.word	-20
	.word	4
	.word	_Label_1422
	.word	-24
	.word	4
	.word	_Label_1423
	.word	-28
	.word	4
	.word	_Label_1424
	.word	-32
	.word	4
	.word	_Label_1425
	.word	-36
	.word	4
	.word	_Label_1426
	.word	-40
	.word	4
	.word	_Label_1427
	.word	-44
	.word	4
	.word	_Label_1428
	.word	-48
	.word	4
	.word	_Label_1429
	.word	-52
	.word	4
	.word	_Label_1430
	.word	-56
	.word	4
	.word	_Label_1431
	.word	-60
	.word	4
	.word	0
_Label_1417:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1418:
	.ascii	"Pself\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1430:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1431:
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
_Label_3464:
	push	r0
	sub	r1,1,r1
	bne	_Label_3464
	mov	1043,r13		! source line 1043
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1053,r13		! source line 1053
	mov	"\0\0SE",r10
!   _temp_1432 = &threadManagerLock
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
	mov	1058,r13		! source line 1058
	mov	"\0\0WH",r10
_Label_1433:
	mov	1059,r13		! source line 1059
	mov	"\0\0SE",r10
!   _temp_1436 = &freeList
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
!   if result==true then goto _Label_1434 else goto _Label_1435
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1435
	jmp	_Label_1434
_Label_1434:
	mov	1058,r13		! source line 1058
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0SE",r10
!   _temp_1437 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1438 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1437  sizeInBytes=4
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
	jmp	_Label_1433
_Label_1435:
! ASSIGNMENT STATEMENT...
	mov	1065,r13		! source line 1065
	mov	"\0\0AS",r10
	mov	1065,r13		! source line 1065
	mov	"\0\0SE",r10
!   _temp_1439 = &freeList
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
	mov	1066,r13		! source line 1066
	mov	"\0\0AS",r10
!   if intIsZero (threadpt) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1440 = threadpt + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1440 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1069,r13		! source line 1069
	mov	"\0\0SE",r10
!   _temp_1441 = &threadManagerLock
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
	mov	1070,r13		! source line 1070
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
	.word	_Label_1442
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1443
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1444
	.word	-12
	.word	4
	.word	_Label_1445
	.word	-16
	.word	4
	.word	_Label_1446
	.word	-20
	.word	4
	.word	_Label_1447
	.word	-24
	.word	4
	.word	_Label_1448
	.word	-28
	.word	4
	.word	_Label_1449
	.word	-32
	.word	4
	.word	_Label_1450
	.word	-36
	.word	4
	.word	_Label_1451
	.word	-40
	.word	4
	.word	0
_Label_1442:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1443:
	.ascii	"Pself\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1451:
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
_Label_3465:
	push	r0
	sub	r1,1,r1
	bne	_Label_3465
	mov	1076,r13		! source line 1076
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1083,r13		! source line 1083
	mov	"\0\0SE",r10
!   _temp_1452 = &threadManagerLock
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
	mov	1086,r13		! source line 1086
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1453 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1453 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1089,r13		! source line 1089
	mov	"\0\0SE",r10
!   _temp_1454 = &freeList
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
	mov	1091,r13		! source line 1091
	mov	"\0\0SE",r10
!   _temp_1455 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1456 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1455  sizeInBytes=4
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
	mov	1094,r13		! source line 1094
	mov	"\0\0SE",r10
!   _temp_1457 = &threadManagerLock
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
	mov	1094,r13		! source line 1094
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
	.word	_Label_1458
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1459
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1460
	.word	12
	.word	4
	.word	_Label_1461
	.word	-12
	.word	4
	.word	_Label_1462
	.word	-16
	.word	4
	.word	_Label_1463
	.word	-20
	.word	4
	.word	_Label_1464
	.word	-24
	.word	4
	.word	_Label_1465
	.word	-28
	.word	4
	.word	_Label_1466
	.word	-32
	.word	4
	.word	0
_Label_1458:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1459:
	.ascii	"Pself\0"
	.align
_Label_1460:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
! 
! ===============  CLASS ThreadManagerHoare  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManagerHoare:
	.word	_Label_1467
	jmp	_Method_P_Kernel_ThreadManagerHoare_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManagerHoare_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManagerHoare_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManagerHoare_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1467:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1468
	.word	_sourceFileName
	.word	240		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManagerHoare
	.word	_P_System_Object
	.word	0
_Label_1468:
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
_Label_3466:
	push	r0
	sub	r1,1,r1
	bne	_Label_3466
	mov	1110,r13		! source line 1110
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1120,r13		! source line 1120
	mov	"\0\0AS",r10
!   _temp_1469 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1471 = &_temp_1470
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-4364]
!   _temp_1471 = _temp_1471 + 4
	load	[r14+-4364],r1
	add	r1,4,r1
	store	r1,[r14+-4364]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1473 = zeros  (sizeInBytes=4164)
	add	r14,-4356,r4
	mov	1041,r3
_Label_3467:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3467
!   _temp_1473 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4356]
	mov	10,r1
	store	r1,[r14+-4360]
_Label_1475:
!   Data Move: *_temp_1471 = _temp_1473  (sizeInBytes=4164)
	add	r14,-4356,r5
	load	[r14+-4364],r4
	mov	1041,r3
_Label_3468:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3468
!   _temp_1471 = _temp_1471 + 4164
	load	[r14+-4364],r1
	add	r1,4164,r1
	store	r1,[r14+-4364]
!   _temp_1472 = _temp_1472 + -1
	load	[r14+-4360],r1
	add	r1,-1,r1
	store	r1,[r14+-4360]
!   if intNotZero (_temp_1472) then goto _Label_1475
	load	[r14+-4360],r1
	cmp	r1,r0
	bne	_Label_1475
!   Initialize the array size...
	mov	10,r1
	set	-46008,r2
	store	r1,[r14+r2]
!   _temp_1476 = &_temp_1470
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-188]
!   make sure array has size 10
	set	-46012,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3469
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3469:
!   make sure array has size 10
	load	[r14+-188],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1469 = *_temp_1476  (sizeInBytes=41644)
	load	[r14+-188],r5
	set	-46012,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3470:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3470
! ASSIGNMENT STATEMENT...
	mov	1121,r13		! source line 1121
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
	mov	1124,r13		! source line 1124
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
	mov	1125,r13		! source line 1125
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
	mov	1127,r13		! source line 1127
	mov	"\0\0SE",r10
!   _temp_1480 = &aThreadBecameFree
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
	mov	1128,r13		! source line 1128
	mov	"\0\0SE",r10
!   _temp_1481 = &threadManagerLock
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
	mov	1130,r13		! source line 1130
	mov	"\0\0SE",r10
!   _temp_1482 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-164]
!   _temp_1483 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_1483 [0 ] into _temp_1484
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
!   Prepare Argument: offset=12  value=_temp_1482  sizeInBytes=4
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
	mov	1131,r13		! source line 1131
	mov	"\0\0SE",r10
!   _temp_1485 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-152]
!   _temp_1486 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Move address of _temp_1486 [1 ] into _temp_1487
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
!   Prepare Argument: offset=12  value=_temp_1485  sizeInBytes=4
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
	mov	1132,r13		! source line 1132
	mov	"\0\0SE",r10
!   _temp_1488 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-140]
!   _temp_1489 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_1489 [2 ] into _temp_1490
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
!   Prepare Argument: offset=12  value=_temp_1488  sizeInBytes=4
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
	mov	1133,r13		! source line 1133
	mov	"\0\0SE",r10
!   _temp_1491 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-128]
!   _temp_1492 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-124]
!   Move address of _temp_1492 [3 ] into _temp_1493
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
!   Prepare Argument: offset=12  value=_temp_1491  sizeInBytes=4
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
	mov	1134,r13		! source line 1134
	mov	"\0\0SE",r10
!   _temp_1494 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-116]
!   _temp_1495 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_1495 [4 ] into _temp_1496
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
!   Prepare Argument: offset=12  value=_temp_1494  sizeInBytes=4
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
	mov	1135,r13		! source line 1135
	mov	"\0\0SE",r10
!   _temp_1497 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-104]
!   _temp_1498 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Move address of _temp_1498 [5 ] into _temp_1499
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
!   Prepare Argument: offset=12  value=_temp_1497  sizeInBytes=4
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
	mov	1136,r13		! source line 1136
	mov	"\0\0SE",r10
!   _temp_1500 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-92]
!   _temp_1501 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Move address of _temp_1501 [6 ] into _temp_1502
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
!   Prepare Argument: offset=12  value=_temp_1500  sizeInBytes=4
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
	mov	1137,r13		! source line 1137
	mov	"\0\0SE",r10
!   _temp_1503 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-80]
!   _temp_1504 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1504 [7 ] into _temp_1505
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
!   Prepare Argument: offset=12  value=_temp_1503  sizeInBytes=4
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
	mov	1138,r13		! source line 1138
	mov	"\0\0SE",r10
!   _temp_1506 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-68]
!   _temp_1507 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Move address of _temp_1507 [8 ] into _temp_1508
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
!   Prepare Argument: offset=12  value=_temp_1506  sizeInBytes=4
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
	mov	1139,r13		! source line 1139
	mov	"\0\0SE",r10
!   _temp_1509 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-56]
!   _temp_1510 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1510 [9 ] into _temp_1511
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
!   Prepare Argument: offset=12  value=_temp_1509  sizeInBytes=4
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
	mov	1141,r13		! source line 1141
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1516 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1517 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1516  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46016,r2
	store	r1,[r14+r2]
_Label_1512:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1517 then goto _Label_1515		
	set	-46016,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1515
_Label_1513:
	mov	1141,r13		! source line 1141
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0AS",r10
!   _temp_1518 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1518 [i ] into _temp_1519
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
!   _temp_1520 = _temp_1519 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1520 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1146,r13		! source line 1146
	mov	"\0\0SE",r10
!   _temp_1522 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1522 [i ] into _temp_1523
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
!   _temp_1521 = _temp_1523		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1524 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1521  sizeInBytes=4
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
_Label_1514:
!   i = i + 1
	set	-46016,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46016,r2
	store	r1,[r14+r2]
	jmp	_Label_1512
! END FOR
_Label_1515:
! RETURN STATEMENT...
	mov	1141,r13		! source line 1141
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
	.word	_Label_1525
	.word	4		! total size of parameters
	.word	46016		! frame size = 46016
	.word	_Label_1526
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1527
	.word	-12
	.word	4
	.word	_Label_1528
	.word	-16
	.word	4
	.word	_Label_1529
	.word	-20
	.word	4
	.word	_Label_1530
	.word	-24
	.word	4
	.word	_Label_1531
	.word	-28
	.word	4
	.word	_Label_1532
	.word	-32
	.word	4
	.word	_Label_1533
	.word	-36
	.word	4
	.word	_Label_1534
	.word	-40
	.word	4
	.word	_Label_1535
	.word	-44
	.word	4
	.word	_Label_1536
	.word	-48
	.word	4
	.word	_Label_1537
	.word	-52
	.word	4
	.word	_Label_1538
	.word	-56
	.word	4
	.word	_Label_1539
	.word	-60
	.word	4
	.word	_Label_1540
	.word	-64
	.word	4
	.word	_Label_1541
	.word	-68
	.word	4
	.word	_Label_1542
	.word	-72
	.word	4
	.word	_Label_1543
	.word	-76
	.word	4
	.word	_Label_1544
	.word	-80
	.word	4
	.word	_Label_1545
	.word	-84
	.word	4
	.word	_Label_1546
	.word	-88
	.word	4
	.word	_Label_1547
	.word	-92
	.word	4
	.word	_Label_1548
	.word	-96
	.word	4
	.word	_Label_1549
	.word	-100
	.word	4
	.word	_Label_1550
	.word	-104
	.word	4
	.word	_Label_1551
	.word	-108
	.word	4
	.word	_Label_1552
	.word	-112
	.word	4
	.word	_Label_1553
	.word	-116
	.word	4
	.word	_Label_1554
	.word	-120
	.word	4
	.word	_Label_1555
	.word	-124
	.word	4
	.word	_Label_1556
	.word	-128
	.word	4
	.word	_Label_1557
	.word	-132
	.word	4
	.word	_Label_1558
	.word	-136
	.word	4
	.word	_Label_1559
	.word	-140
	.word	4
	.word	_Label_1560
	.word	-144
	.word	4
	.word	_Label_1561
	.word	-148
	.word	4
	.word	_Label_1562
	.word	-152
	.word	4
	.word	_Label_1563
	.word	-156
	.word	4
	.word	_Label_1564
	.word	-160
	.word	4
	.word	_Label_1565
	.word	-164
	.word	4
	.word	_Label_1566
	.word	-168
	.word	4
	.word	_Label_1567
	.word	-172
	.word	4
	.word	_Label_1568
	.word	-176
	.word	4
	.word	_Label_1569
	.word	-180
	.word	4
	.word	_Label_1570
	.word	-184
	.word	4
	.word	_Label_1571
	.word	-188
	.word	4
	.word	_Label_1572
	.word	-192
	.word	4
	.word	_Label_1573
	.word	-4356
	.word	4164
	.word	_Label_1574
	.word	-4360
	.word	4
	.word	_Label_1575
	.word	-4364
	.word	4
	.word	_Label_1576
	.word	-46008
	.word	41644
	.word	_Label_1577
	.word	-46012
	.word	4
	.word	_Label_1578
	.word	-46016
	.word	4
	.word	0
_Label_1525:
	.ascii	"ThreadManagerHoare"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1526:
	.ascii	"Pself\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1578:
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
_Label_3471:
	push	r0
	sub	r1,1,r1
	bne	_Label_3471
	mov	1153,r13		! source line 1153
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1160,r13		! source line 1160
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1160,r13		! source line 1160
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1579 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1579  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1161,r13		! source line 1161
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1162,r13		! source line 1162
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1584 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1585 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1584  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1580:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1585 then goto _Label_1583		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1583
_Label_1581:
	mov	1162,r13		! source line 1162
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1586 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1586  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1163,r13		! source line 1163
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1164,r13		! source line 1164
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1587 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1587  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1165,r13		! source line 1165
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1589 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1589 [i ] into _temp_1590
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
!   _temp_1588 = _temp_1590		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1588  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1166,r13		! source line 1166
	mov	"\0\0CA",r10
	call	_function_241_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1582:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1580
! END FOR
_Label_1583:
! CALL STATEMENT...
!   _temp_1591 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1591  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1168,r13		! source line 1168
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1169,r13		! source line 1169
	mov	"\0\0SE",r10
!   _temp_1592 = _function_240_PrintObjectAddr
	set	_function_240_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1593 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1592  sizeInBytes=4
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
	mov	1170,r13		! source line 1170
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1171,r13		! source line 1171
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1171,r13		! source line 1171
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	1171,r13		! source line 1171
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
	.word	_Label_1594
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1595
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1596
	.word	-12
	.word	4
	.word	_Label_1597
	.word	-16
	.word	4
	.word	_Label_1598
	.word	-20
	.word	4
	.word	_Label_1599
	.word	-24
	.word	4
	.word	_Label_1600
	.word	-28
	.word	4
	.word	_Label_1601
	.word	-32
	.word	4
	.word	_Label_1602
	.word	-36
	.word	4
	.word	_Label_1603
	.word	-40
	.word	4
	.word	_Label_1604
	.word	-44
	.word	4
	.word	_Label_1605
	.word	-48
	.word	4
	.word	_Label_1606
	.word	-52
	.word	4
	.word	_Label_1607
	.word	-56
	.word	4
	.word	_Label_1608
	.word	-60
	.word	4
	.word	0
_Label_1594:
	.ascii	"ThreadManagerHoare"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1595:
	.ascii	"Pself\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1607:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1608:
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
_Label_3472:
	push	r0
	sub	r1,1,r1
	bne	_Label_3472
	mov	1176,r13		! source line 1176
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0SE",r10
!   _temp_1609 = &threadManagerLock
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
	mov	1192,r13		! source line 1192
	mov	"\0\0WH",r10
_Label_1610:
	mov	1193,r13		! source line 1193
	mov	"\0\0SE",r10
!   _temp_1613 = &freeList
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
!   if result==true then goto _Label_1611 else goto _Label_1612
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1612
	jmp	_Label_1611
_Label_1611:
	mov	1192,r13		! source line 1192
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1194,r13		! source line 1194
	mov	"\0\0SE",r10
!   _temp_1614 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1615 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1614  sizeInBytes=4
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
	jmp	_Label_1610
_Label_1612:
! ASSIGNMENT STATEMENT...
	mov	1199,r13		! source line 1199
	mov	"\0\0AS",r10
	mov	1199,r13		! source line 1199
	mov	"\0\0SE",r10
!   _temp_1616 = &freeList
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
	mov	1200,r13		! source line 1200
	mov	"\0\0AS",r10
!   if intIsZero (threadpt) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1617 = threadpt + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1617 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1203,r13		! source line 1203
	mov	"\0\0SE",r10
!   _temp_1618 = &threadManagerLock
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
	mov	1204,r13		! source line 1204
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
	.word	_Label_1619
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1620
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1621
	.word	-12
	.word	4
	.word	_Label_1622
	.word	-16
	.word	4
	.word	_Label_1623
	.word	-20
	.word	4
	.word	_Label_1624
	.word	-24
	.word	4
	.word	_Label_1625
	.word	-28
	.word	4
	.word	_Label_1626
	.word	-32
	.word	4
	.word	_Label_1627
	.word	-36
	.word	4
	.word	_Label_1628
	.word	-40
	.word	4
	.word	0
_Label_1619:
	.ascii	"ThreadManagerHoare"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1620:
	.ascii	"Pself\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1628:
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
_Label_3473:
	push	r0
	sub	r1,1,r1
	bne	_Label_3473
	mov	1210,r13		! source line 1210
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1217,r13		! source line 1217
	mov	"\0\0SE",r10
!   _temp_1629 = &threadManagerLock
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
	mov	1220,r13		! source line 1220
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1630 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1630 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1223,r13		! source line 1223
	mov	"\0\0SE",r10
!   _temp_1631 = &freeList
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
	mov	1225,r13		! source line 1225
	mov	"\0\0SE",r10
!   _temp_1632 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1633 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1632  sizeInBytes=4
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
	mov	1228,r13		! source line 1228
	mov	"\0\0SE",r10
!   _temp_1634 = &threadManagerLock
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
	mov	1228,r13		! source line 1228
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
	.word	_Label_1635
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1636
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1637
	.word	12
	.word	4
	.word	_Label_1638
	.word	-12
	.word	4
	.word	_Label_1639
	.word	-16
	.word	4
	.word	_Label_1640
	.word	-20
	.word	4
	.word	_Label_1641
	.word	-24
	.word	4
	.word	_Label_1642
	.word	-28
	.word	4
	.word	_Label_1643
	.word	-32
	.word	4
	.word	0
_Label_1635:
	.ascii	"ThreadManagerHoare"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1636:
	.ascii	"Pself\0"
	.align
_Label_1637:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1644
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1644:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1645
	.word	_sourceFileName
	.word	262		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1645:
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
_Label_3474:
	push	r0
	sub	r1,1,r1
	bne	_Label_3474
	mov	1242,r13		! source line 1242
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1243,r13		! source line 1243
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1245,r13		! source line 1245
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3475:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3475
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0SE",r10
!   _temp_1647 = &addrSpace
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
	mov	1246,r13		! source line 1246
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
	.word	_Label_1648
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1649
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1650
	.word	-12
	.word	4
	.word	_Label_1651
	.word	-16
	.word	4
	.word	0
_Label_1648:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1649:
	.ascii	"Pself\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1646\0"
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
_Label_3476:
	push	r0
	sub	r1,1,r1
	bne	_Label_3476
	mov	1256,r13		! source line 1256
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1261,r13		! source line 1261
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1652) then goto _runtimeErrorNullPointer
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
	mov	1262,r13		! source line 1262
	mov	"\0\0SE",r10
!   _temp_1653 = &addrSpace
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
!   _temp_1654 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1654  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1264,r13		! source line 1264
	mov	"\0\0CA",r10
	call	_function_241_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	1274,r13		! source line 1274
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1274,r13		! source line 1274
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
	.word	_Label_1655
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1656
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1657
	.word	-12
	.word	4
	.word	_Label_1658
	.word	-16
	.word	4
	.word	_Label_1659
	.word	-20
	.word	4
	.word	0
_Label_1655:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1656:
	.ascii	"Pself\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1652\0"
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
_Label_3477:
	push	r0
	sub	r1,1,r1
	bne	_Label_3477
	mov	1279,r13		! source line 1279
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1660 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1660  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1283,r13		! source line 1283
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1661  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1284,r13		! source line 1284
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1662 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1662  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1285,r13		! source line 1285
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1286,r13		! source line 1286
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1663 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1663  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1287,r13		! source line 1287
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1665		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1665
!	jmp	_Label_1664
_Label_1664:
! THEN...
	mov	1289,r13		! source line 1289
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1666 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1666  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1289,r13		! source line 1289
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1667
_Label_1665:
! ELSE...
	mov	1290,r13		! source line 1290
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1290,r13		! source line 1290
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1669		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1669
!	jmp	_Label_1668
_Label_1668:
! THEN...
	mov	1291,r13		! source line 1291
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1670 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1670  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1291,r13		! source line 1291
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1671
_Label_1669:
! ELSE...
	mov	1292,r13		! source line 1292
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1292,r13		! source line 1292
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1673		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1673
!	jmp	_Label_1672
_Label_1672:
! THEN...
	mov	1293,r13		! source line 1293
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1674 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1674  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1293,r13		! source line 1293
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1675
_Label_1673:
! ELSE...
	mov	1295,r13		! source line 1295
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1676 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1676  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1295,r13		! source line 1295
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1675:
! END IF...
_Label_1671:
! END IF...
_Label_1667:
! CALL STATEMENT...
!   _temp_1677 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1677  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1297,r13		! source line 1297
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1298,r13		! source line 1298
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1678 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1678  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1299,r13		! source line 1299
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1300,r13		! source line 1300
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1301,r13		! source line 1301
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1301,r13		! source line 1301
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
	.word	_Label_1679
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1680
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1681
	.word	-12
	.word	4
	.word	_Label_1682
	.word	-16
	.word	4
	.word	_Label_1683
	.word	-20
	.word	4
	.word	_Label_1684
	.word	-24
	.word	4
	.word	_Label_1685
	.word	-28
	.word	4
	.word	_Label_1686
	.word	-32
	.word	4
	.word	_Label_1687
	.word	-36
	.word	4
	.word	_Label_1688
	.word	-40
	.word	4
	.word	_Label_1689
	.word	-44
	.word	4
	.word	_Label_1690
	.word	-48
	.word	4
	.word	0
_Label_1679:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1680:
	.ascii	"Pself\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1691
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1691:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1692
	.word	_sourceFileName
	.word	282		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1692:
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
_Label_3478:
	push	r0
	sub	r1,1,r1
	bne	_Label_3478
	mov	1319,r13		! source line 1319
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1329,r13		! source line 1329
	mov	"\0\0AS",r10
!   _temp_1693 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1540]
!   NEW ARRAY Constructor...
!   _temp_1695 = &_temp_1694
	add	r14,-1536,r1
	store	r1,[r14+-292]
!   _temp_1695 = _temp_1695 + 4
	load	[r14+-292],r1
	add	r1,4,r1
	store	r1,[r14+-292]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1697 = zeros  (sizeInBytes=124)
	add	r14,-284,r4
	mov	31,r3
_Label_3479:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3479
!   _temp_1697 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-284]
	mov	10,r1
	store	r1,[r14+-288]
_Label_1699:
!   Data Move: *_temp_1695 = _temp_1697  (sizeInBytes=124)
	add	r14,-284,r5
	load	[r14+-292],r4
	mov	31,r3
_Label_3480:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3480
!   _temp_1695 = _temp_1695 + 124
	load	[r14+-292],r1
	add	r1,124,r1
	store	r1,[r14+-292]
!   _temp_1696 = _temp_1696 + -1
	load	[r14+-288],r1
	add	r1,-1,r1
	store	r1,[r14+-288]
!   if intNotZero (_temp_1696) then goto _Label_1699
	load	[r14+-288],r1
	cmp	r1,r0
	bne	_Label_1699
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1536]
!   _temp_1700 = &_temp_1694
	add	r14,-1536,r1
	store	r1,[r14+-156]
!   make sure array has size 10
	load	[r14+-1540],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3481
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3481:
!   make sure array has size 10
	load	[r14+-156],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1693 = *_temp_1700  (sizeInBytes=1244)
	load	[r14+-156],r5
	load	[r14+-1540],r4
	mov	311,r3
_Label_3482:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3482
! ASSIGNMENT STATEMENT...
	mov	1332,r13		! source line 1332
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
	mov	1335,r13		! source line 1335
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
	mov	1336,r13		! source line 1336
	mov	"\0\0SE",r10
!   _temp_1703 = &processManagerLock
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
	mov	1338,r13		! source line 1338
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
	mov	1339,r13		! source line 1339
	mov	"\0\0SE",r10
!   _temp_1705 = &aProcessBecameFree
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
	mov	1341,r13		! source line 1341
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
	mov	1342,r13		! source line 1342
	mov	"\0\0SE",r10
!   _temp_1707 = &aProcessDied
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
	mov	1344,r13		! source line 1344
	mov	"\0\0SE",r10
!   _temp_1708 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-124]
!   Move address of _temp_1708 [0 ] into _temp_1709
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
	mov	1345,r13		! source line 1345
	mov	"\0\0SE",r10
!   _temp_1710 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_1710 [1 ] into _temp_1711
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
	mov	1346,r13		! source line 1346
	mov	"\0\0SE",r10
!   _temp_1712 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Move address of _temp_1712 [2 ] into _temp_1713
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
	mov	1347,r13		! source line 1347
	mov	"\0\0SE",r10
!   _temp_1714 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Move address of _temp_1714 [3 ] into _temp_1715
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
	mov	1348,r13		! source line 1348
	mov	"\0\0SE",r10
!   _temp_1716 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Move address of _temp_1716 [4 ] into _temp_1717
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
	mov	1349,r13		! source line 1349
	mov	"\0\0SE",r10
!   _temp_1718 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-84]
!   Move address of _temp_1718 [5 ] into _temp_1719
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
	mov	1350,r13		! source line 1350
	mov	"\0\0SE",r10
!   _temp_1720 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1720 [6 ] into _temp_1721
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
	mov	1351,r13		! source line 1351
	mov	"\0\0SE",r10
!   _temp_1722 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Move address of _temp_1722 [7 ] into _temp_1723
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
	mov	1352,r13		! source line 1352
	mov	"\0\0SE",r10
!   _temp_1724 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_1724 [8 ] into _temp_1725
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
	mov	1353,r13		! source line 1353
	mov	"\0\0SE",r10
!   _temp_1726 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1726 [9 ] into _temp_1727
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
	mov	1355,r13		! source line 1355
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1732 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1733 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1732  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-1544]
_Label_1728:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1733 then goto _Label_1731		
	load	[r14+-1544],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1731
_Label_1729:
	mov	1355,r13		! source line 1355
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1359,r13		! source line 1359
	mov	"\0\0AS",r10
!   _temp_1734 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1734 [i ] into _temp_1735
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
!   _temp_1736 = _temp_1735 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1736 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1362,r13		! source line 1362
	mov	"\0\0SE",r10
!   _temp_1738 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1738 [i ] into _temp_1739
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
!   _temp_1737 = _temp_1739		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1740 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1737  sizeInBytes=4
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
_Label_1730:
!   i = i + 1
	load	[r14+-1544],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1544]
	jmp	_Label_1728
! END FOR
_Label_1731:
! RETURN STATEMENT...
	mov	1355,r13		! source line 1355
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
	.word	_Label_1741
	.word	4		! total size of parameters
	.word	1544		! frame size = 1544
	.word	_Label_1742
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1743
	.word	-12
	.word	4
	.word	_Label_1744
	.word	-16
	.word	4
	.word	_Label_1745
	.word	-20
	.word	4
	.word	_Label_1746
	.word	-24
	.word	4
	.word	_Label_1747
	.word	-28
	.word	4
	.word	_Label_1748
	.word	-32
	.word	4
	.word	_Label_1749
	.word	-36
	.word	4
	.word	_Label_1750
	.word	-40
	.word	4
	.word	_Label_1751
	.word	-44
	.word	4
	.word	_Label_1752
	.word	-48
	.word	4
	.word	_Label_1753
	.word	-52
	.word	4
	.word	_Label_1754
	.word	-56
	.word	4
	.word	_Label_1755
	.word	-60
	.word	4
	.word	_Label_1756
	.word	-64
	.word	4
	.word	_Label_1757
	.word	-68
	.word	4
	.word	_Label_1758
	.word	-72
	.word	4
	.word	_Label_1759
	.word	-76
	.word	4
	.word	_Label_1760
	.word	-80
	.word	4
	.word	_Label_1761
	.word	-84
	.word	4
	.word	_Label_1762
	.word	-88
	.word	4
	.word	_Label_1763
	.word	-92
	.word	4
	.word	_Label_1764
	.word	-96
	.word	4
	.word	_Label_1765
	.word	-100
	.word	4
	.word	_Label_1766
	.word	-104
	.word	4
	.word	_Label_1767
	.word	-108
	.word	4
	.word	_Label_1768
	.word	-112
	.word	4
	.word	_Label_1769
	.word	-116
	.word	4
	.word	_Label_1770
	.word	-120
	.word	4
	.word	_Label_1771
	.word	-124
	.word	4
	.word	_Label_1772
	.word	-128
	.word	4
	.word	_Label_1773
	.word	-132
	.word	4
	.word	_Label_1774
	.word	-136
	.word	4
	.word	_Label_1775
	.word	-140
	.word	4
	.word	_Label_1776
	.word	-144
	.word	4
	.word	_Label_1777
	.word	-148
	.word	4
	.word	_Label_1778
	.word	-152
	.word	4
	.word	_Label_1779
	.word	-156
	.word	4
	.word	_Label_1780
	.word	-160
	.word	4
	.word	_Label_1781
	.word	-284
	.word	124
	.word	_Label_1782
	.word	-288
	.word	4
	.word	_Label_1783
	.word	-292
	.word	4
	.word	_Label_1784
	.word	-1536
	.word	1244
	.word	_Label_1785
	.word	-1540
	.word	4
	.word	_Label_1786
	.word	-1544
	.word	4
	.word	0
_Label_1741:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1742:
	.ascii	"Pself\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1786:
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
_Label_3483:
	push	r0
	sub	r1,1,r1
	bne	_Label_3483
	mov	1369,r13		! source line 1369
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1376,r13		! source line 1376
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1787 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1787  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1377,r13		! source line 1377
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1378,r13		! source line 1378
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1792 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1793 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1792  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1788:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1793 then goto _Label_1791		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1791
_Label_1789:
	mov	1378,r13		! source line 1378
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1794 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1794  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1379,r13		! source line 1379
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1380,r13		! source line 1380
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1795 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1795  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1381,r13		! source line 1381
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0SE",r10
!   _temp_1796 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1796 [i ] into _temp_1797
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
_Label_1790:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1788
! END FOR
_Label_1791:
! CALL STATEMENT...
!   _temp_1798 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1798  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1384,r13		! source line 1384
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0SE",r10
!   _temp_1799 = _function_240_PrintObjectAddr
	set	_function_240_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1800 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1799  sizeInBytes=4
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
	mov	1386,r13		! source line 1386
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1387,r13		! source line 1387
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1387,r13		! source line 1387
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
	.word	_Label_1801
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1802
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1803
	.word	-12
	.word	4
	.word	_Label_1804
	.word	-16
	.word	4
	.word	_Label_1805
	.word	-20
	.word	4
	.word	_Label_1806
	.word	-24
	.word	4
	.word	_Label_1807
	.word	-28
	.word	4
	.word	_Label_1808
	.word	-32
	.word	4
	.word	_Label_1809
	.word	-36
	.word	4
	.word	_Label_1810
	.word	-40
	.word	4
	.word	_Label_1811
	.word	-44
	.word	4
	.word	_Label_1812
	.word	-48
	.word	4
	.word	_Label_1813
	.word	-52
	.word	4
	.word	_Label_1814
	.word	-56
	.word	4
	.word	0
_Label_1801:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1802:
	.ascii	"Pself\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1813:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1814:
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
_Label_3484:
	push	r0
	sub	r1,1,r1
	bne	_Label_3484
	mov	1392,r13		! source line 1392
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1399,r13		! source line 1399
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1399,r13		! source line 1399
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1815 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1815  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1400,r13		! source line 1400
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1820 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1821 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1820  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1816:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1821 then goto _Label_1819		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1819
_Label_1817:
	mov	1401,r13		! source line 1401
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1822 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1822  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1402,r13		! source line 1402
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1403,r13		! source line 1403
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0SE",r10
!   _temp_1823 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1823 [i ] into _temp_1824
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
_Label_1818:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1816
! END FOR
_Label_1819:
! CALL STATEMENT...
!   _temp_1825 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1825  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1406,r13		! source line 1406
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1407,r13		! source line 1407
	mov	"\0\0SE",r10
!   _temp_1826 = _function_240_PrintObjectAddr
	set	_function_240_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1827 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1826  sizeInBytes=4
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
	mov	1408,r13		! source line 1408
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1409,r13		! source line 1409
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1409,r13		! source line 1409
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1409,r13		! source line 1409
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
	.word	_Label_1828
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1829
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1830
	.word	-12
	.word	4
	.word	_Label_1831
	.word	-16
	.word	4
	.word	_Label_1832
	.word	-20
	.word	4
	.word	_Label_1833
	.word	-24
	.word	4
	.word	_Label_1834
	.word	-28
	.word	4
	.word	_Label_1835
	.word	-32
	.word	4
	.word	_Label_1836
	.word	-36
	.word	4
	.word	_Label_1837
	.word	-40
	.word	4
	.word	_Label_1838
	.word	-44
	.word	4
	.word	_Label_1839
	.word	-48
	.word	4
	.word	_Label_1840
	.word	-52
	.word	4
	.word	0
_Label_1828:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1829:
	.ascii	"Pself\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1839:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1840:
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
_Label_3485:
	push	r0
	sub	r1,1,r1
	bne	_Label_3485
	mov	1415,r13		! source line 1415
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1425,r13		! source line 1425
	mov	"\0\0SE",r10
!   _temp_1841 = &processManagerLock
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
	mov	1428,r13		! source line 1428
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
	mov	1432,r13		! source line 1432
	mov	"\0\0WH",r10
_Label_1842:
	mov	1432,r13		! source line 1432
	mov	"\0\0SE",r10
!   _temp_1845 = &freeList
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
!   if result==true then goto _Label_1843 else goto _Label_1844
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1844
	jmp	_Label_1843
_Label_1843:
	mov	1432,r13		! source line 1432
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0SE",r10
!   _temp_1846 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-44]
!   _temp_1847 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1846  sizeInBytes=4
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
	jmp	_Label_1842
_Label_1844:
! ASSIGNMENT STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0AS",r10
	mov	1438,r13		! source line 1438
	mov	"\0\0SE",r10
!   _temp_1848 = &freeList
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
	mov	1439,r13		! source line 1439
	mov	"\0\0AS",r10
!   if intIsZero (processpt) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1849 = processpt + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1849 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-32],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1443,r13		! source line 1443
	mov	"\0\0IF",r10
!   if intIsZero (processpt) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1853 = processpt + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1852 = *_temp_1853  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_1852 != 2 then goto _Label_1851		(int)
	load	[r14+-28],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1851
!	jmp	_Label_1850
_Label_1850:
! THEN...
	mov	1444,r13		! source line 1444
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0SE",r10
!   _temp_1854 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1855 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1854  sizeInBytes=4
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
_Label_1851:
! SEND STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0SE",r10
!   _temp_1856 = &processManagerLock
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
	mov	1449,r13		! source line 1449
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
	.word	_Label_1857
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1858
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1859
	.word	-12
	.word	4
	.word	_Label_1860
	.word	-16
	.word	4
	.word	_Label_1861
	.word	-20
	.word	4
	.word	_Label_1862
	.word	-24
	.word	4
	.word	_Label_1863
	.word	-28
	.word	4
	.word	_Label_1864
	.word	-32
	.word	4
	.word	_Label_1865
	.word	-36
	.word	4
	.word	_Label_1866
	.word	-40
	.word	4
	.word	_Label_1867
	.word	-44
	.word	4
	.word	_Label_1868
	.word	-48
	.word	4
	.word	_Label_1869
	.word	-52
	.word	4
	.word	_Label_1870
	.word	-56
	.word	4
	.word	0
_Label_1857:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1858:
	.ascii	"Pself\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1870:
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
_Label_3486:
	push	r0
	sub	r1,1,r1
	bne	_Label_3486
	mov	1455,r13		! source line 1455
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1462,r13		! source line 1462
	mov	"\0\0SE",r10
!   _temp_1871 = &processManagerLock
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
	mov	1466,r13		! source line 1466
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1872 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1872 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1467,r13		! source line 1467
	mov	"\0\0SE",r10
!   _temp_1873 = &freeList
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
	mov	1471,r13		! source line 1471
	mov	"\0\0SE",r10
!   _temp_1874 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1875 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1874  sizeInBytes=4
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
	mov	1474,r13		! source line 1474
	mov	"\0\0SE",r10
!   _temp_1876 = &processManagerLock
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
	mov	1474,r13		! source line 1474
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
	.word	_Label_1877
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1878
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1879
	.word	12
	.word	4
	.word	_Label_1880
	.word	-12
	.word	4
	.word	_Label_1881
	.word	-16
	.word	4
	.word	_Label_1882
	.word	-20
	.word	4
	.word	_Label_1883
	.word	-24
	.word	4
	.word	_Label_1884
	.word	-28
	.word	4
	.word	_Label_1885
	.word	-32
	.word	4
	.word	0
_Label_1877:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1878:
	.ascii	"Pself\0"
	.align
_Label_1879:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1883:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1886
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1886:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1887
	.word	_sourceFileName
	.word	305		! line number
	.word	88		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1887:
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
_Label_3487:
	push	r0
	sub	r1,1,r1
	bne	_Label_3487
	mov	1509,r13		! source line 1509
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1888 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1888  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	1516,r13		! source line 1516
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1517,r13		! source line 1517
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
	mov	1518,r13		! source line 1518
	mov	"\0\0SE",r10
!   _temp_1890 = &framesInUse
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
	mov	1519,r13		! source line 1519
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1520,r13		! source line 1520
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
	mov	1521,r13		! source line 1521
	mov	"\0\0SE",r10
!   _temp_1892 = &frameManagerLock
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
	mov	1522,r13		! source line 1522
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
	mov	1523,r13		! source line 1523
	mov	"\0\0SE",r10
!   _temp_1894 = &newFramesAvailable
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
	mov	1524,r13		! source line 1524
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
	mov	1525,r13		! source line 1525
	mov	"\0\0SE",r10
!   _temp_1896 = &otherThreads
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
	mov	1526,r13		! source line 1526
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
	mov	1527,r13		! source line 1527
	mov	"\0\0SE",r10
!   _temp_1898 = &leaderThread
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
	mov	1533,r13		! source line 1533
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1903 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1904 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1903  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-72]
_Label_1899:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1904 then goto _Label_1902		
	load	[r14+-72],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1902
_Label_1900:
	mov	1533,r13		! source line 1533
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1907 = *i  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1907) then goto _Label_1906
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1906
!	jmp	_Label_1905
_Label_1905:
! THEN...
	mov	1537,r13		! source line 1537
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1908 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1908  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1537,r13		! source line 1537
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1906:
!   Increment the FOR-LOOP index variable and jump back
_Label_1901:
!   i = i + 4
	load	[r14+-72],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_1899
! END FOR
_Label_1902:
! RETURN STATEMENT...
	mov	1533,r13		! source line 1533
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
	.word	_Label_1909
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1910
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1911
	.word	-12
	.word	4
	.word	_Label_1912
	.word	-16
	.word	4
	.word	_Label_1913
	.word	-20
	.word	4
	.word	_Label_1914
	.word	-24
	.word	4
	.word	_Label_1915
	.word	-28
	.word	4
	.word	_Label_1916
	.word	-32
	.word	4
	.word	_Label_1917
	.word	-36
	.word	4
	.word	_Label_1918
	.word	-40
	.word	4
	.word	_Label_1919
	.word	-44
	.word	4
	.word	_Label_1920
	.word	-48
	.word	4
	.word	_Label_1921
	.word	-52
	.word	4
	.word	_Label_1922
	.word	-56
	.word	4
	.word	_Label_1923
	.word	-60
	.word	4
	.word	_Label_1924
	.word	-64
	.word	4
	.word	_Label_1925
	.word	-68
	.word	4
	.word	_Label_1926
	.word	-72
	.word	4
	.word	0
_Label_1909:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1910:
	.ascii	"Pself\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1926:
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
_Label_3488:
	push	r0
	sub	r1,1,r1
	bne	_Label_3488
	mov	1544,r13		! source line 1544
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1548,r13		! source line 1548
	mov	"\0\0SE",r10
!   _temp_1927 = &frameManagerLock
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
!   _temp_1928 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1928  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1549,r13		! source line 1549
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1929 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1929  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1550,r13		! source line 1550
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1930 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1930  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1551,r13		! source line 1551
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1552,r13		! source line 1552
	mov	"\0\0SE",r10
!   _temp_1931 = &framesInUse
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
	mov	1553,r13		! source line 1553
	mov	"\0\0SE",r10
!   _temp_1932 = &frameManagerLock
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
	mov	1553,r13		! source line 1553
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
	.word	_Label_1933
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1934
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1935
	.word	-12
	.word	4
	.word	_Label_1936
	.word	-16
	.word	4
	.word	_Label_1937
	.word	-20
	.word	4
	.word	_Label_1938
	.word	-24
	.word	4
	.word	_Label_1939
	.word	-28
	.word	4
	.word	_Label_1940
	.word	-32
	.word	4
	.word	0
_Label_1933:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1934:
	.ascii	"Pself\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1927\0"
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
_Label_3489:
	push	r0
	sub	r1,1,r1
	bne	_Label_3489
	mov	1558,r13		! source line 1558
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1566,r13		! source line 1566
	mov	"\0\0SE",r10
!   _temp_1941 = &frameManagerLock
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
	mov	1569,r13		! source line 1569
	mov	"\0\0WH",r10
_Label_1942:
!   if numberFreeFrames >= 1 then goto _Label_1944		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1944
!	jmp	_Label_1943
_Label_1943:
	mov	1569,r13		! source line 1569
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1570,r13		! source line 1570
	mov	"\0\0SE",r10
!   _temp_1945 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1946 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1945  sizeInBytes=4
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
	jmp	_Label_1942
_Label_1944:
! ASSIGNMENT STATEMENT...
	mov	1574,r13		! source line 1574
	mov	"\0\0AS",r10
	mov	1574,r13		! source line 1574
	mov	"\0\0SE",r10
!   _temp_1947 = &framesInUse
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
	mov	1575,r13		! source line 1575
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
	mov	1578,r13		! source line 1578
	mov	"\0\0SE",r10
!   _temp_1948 = &frameManagerLock
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
	mov	1581,r13		! source line 1581
	mov	"\0\0AS",r10
!   _temp_1949 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1949		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1583,r13		! source line 1583
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
	.word	_Label_1950
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1951
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1952
	.word	-12
	.word	4
	.word	_Label_1953
	.word	-16
	.word	4
	.word	_Label_1954
	.word	-20
	.word	4
	.word	_Label_1955
	.word	-24
	.word	4
	.word	_Label_1956
	.word	-28
	.word	4
	.word	_Label_1957
	.word	-32
	.word	4
	.word	_Label_1958
	.word	-36
	.word	4
	.word	_Label_1959
	.word	-40
	.word	4
	.word	0
_Label_1950:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1951:
	.ascii	"Pself\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1941\0"
	.align
_Label_1958:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1959:
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
_Label_3490:
	push	r0
	sub	r1,1,r1
	bne	_Label_3490
	mov	1591,r13		! source line 1591
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1596,r13		! source line 1596
	mov	"\0\0SE",r10
!   _temp_1960 = &frameManagerLock
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
	mov	1601,r13		! source line 1601
	mov	"\0\0WH",r10
_Label_1961:
!   if numOfWaitingThreads <= 1 then goto _Label_1963		(int)
	load	[r14+-76],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1963
!	jmp	_Label_1962
_Label_1962:
	mov	1601,r13		! source line 1601
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1602,r13		! source line 1602
	mov	"\0\0AS",r10
!   numOfWaitingThreads = numOfWaitingThreads + 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0SE",r10
!   _temp_1964 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   _temp_1965 = &otherThreads
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1964  sizeInBytes=4
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
	jmp	_Label_1961
_Label_1963:
! WHILE STATEMENT...
	mov	1608,r13		! source line 1608
	mov	"\0\0WH",r10
_Label_1966:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1968		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1968
!	jmp	_Label_1967
_Label_1967:
	mov	1608,r13		! source line 1608
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0SE",r10
!   _temp_1969 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   _temp_1970 = &leaderThread
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1969  sizeInBytes=4
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
	jmp	_Label_1966
_Label_1968:
! FOR STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1975 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1976 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1975  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-68]
_Label_1971:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1976 then goto _Label_1974		
	load	[r14+-68],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1974
_Label_1972:
	mov	1617,r13		! source line 1617
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1619,r13		! source line 1619
	mov	"\0\0AS",r10
	mov	1619,r13		! source line 1619
	mov	"\0\0SE",r10
!   _temp_1977 = &framesInUse
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
	mov	1620,r13		! source line 1620
	mov	"\0\0AS",r10
!   _temp_1978 = Frames * 8192		(int)
	load	[r14+-64],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   frameAddr = 1048576 + _temp_1978		(int)
	set	1048576,r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! SEND STATEMENT...
	mov	1621,r13		! source line 1621
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
_Label_1973:
!   i = i + 1
	load	[r14+-68],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
	jmp	_Label_1971
! END FOR
_Label_1974:
! ASSIGNMENT STATEMENT...
	mov	1627,r13		! source line 1627
	mov	"\0\0AS",r10
!   numOfWaitingThreads = numOfWaitingThreads - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1628,r13		! source line 1628
	mov	"\0\0SE",r10
!   _temp_1979 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   _temp_1980 = &otherThreads
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1979  sizeInBytes=4
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
	mov	1632,r13		! source line 1632
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
	mov	1633,r13		! source line 1633
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1981 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1981 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1636,r13		! source line 1636
	mov	"\0\0SE",r10
!   _temp_1982 = &frameManagerLock
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
	mov	1636,r13		! source line 1636
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
	.word	_Label_1983
	.word	12		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_1984
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1985
	.word	12
	.word	4
	.word	_Label_1986
	.word	16
	.word	4
	.word	_Label_1987
	.word	-12
	.word	4
	.word	_Label_1988
	.word	-16
	.word	4
	.word	_Label_1989
	.word	-20
	.word	4
	.word	_Label_1990
	.word	-24
	.word	4
	.word	_Label_1991
	.word	-28
	.word	4
	.word	_Label_1992
	.word	-32
	.word	4
	.word	_Label_1993
	.word	-36
	.word	4
	.word	_Label_1994
	.word	-40
	.word	4
	.word	_Label_1995
	.word	-44
	.word	4
	.word	_Label_1996
	.word	-48
	.word	4
	.word	_Label_1997
	.word	-52
	.word	4
	.word	_Label_1998
	.word	-56
	.word	4
	.word	_Label_1999
	.word	-60
	.word	4
	.word	_Label_2000
	.word	-64
	.word	4
	.word	_Label_2001
	.word	-68
	.word	4
	.word	_Label_2002
	.word	-72
	.word	4
	.word	_Label_2003
	.word	-76
	.word	4
	.word	0
_Label_1983:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1984:
	.ascii	"Pself\0"
	.align
_Label_1985:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1986:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_2000:
	.byte	'I'
	.ascii	"Frames\0"
	.align
_Label_2001:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2002:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2003:
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
_Label_3491:
	push	r0
	sub	r1,1,r1
	bne	_Label_3491
	mov	1648,r13		! source line 1648
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1654,r13		! source line 1654
	mov	"\0\0SE",r10
!   _temp_2004 = &frameManagerLock
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
	mov	1656,r13		! source line 1656
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2005 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: numFramesReturned = *_temp_2005  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-48]
! FOR STATEMENT...
	mov	1659,r13		! source line 1659
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2010 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2011 = numFramesReturned - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2010  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-56]
_Label_2006:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2011 then goto _Label_2009		
	load	[r14+-56],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2009
_Label_2007:
	mov	1659,r13		! source line 1659
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1660,r13		! source line 1660
	mov	"\0\0AS",r10
	mov	1660,r13		! source line 1660
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
	mov	1661,r13		! source line 1661
	mov	"\0\0AS",r10
!   _temp_2012 = frameAddr - 1048576		(int)
	load	[r14+-60],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bitNumber = _temp_2012 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
! SEND STATEMENT...
	mov	1662,r13		! source line 1662
	mov	"\0\0SE",r10
!   _temp_2013 = &framesInUse
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
_Label_2008:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2006
! END FOR
_Label_2009:
! ASSIGNMENT STATEMENT...
	mov	1667,r13		! source line 1667
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
	mov	1668,r13		! source line 1668
	mov	"\0\0AS",r10
!   numOfWaitingThreads = numOfWaitingThreads - 1		(int)
	load	[r14+-64],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1669,r13		! source line 1669
	mov	"\0\0SE",r10
!   _temp_2014 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2015 = &leaderThread
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2014  sizeInBytes=4
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
	mov	1672,r13		! source line 1672
	mov	"\0\0SE",r10
!   _temp_2016 = &frameManagerLock
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
	mov	1672,r13		! source line 1672
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
	.word	_Label_2017
	.word	8		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2018
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2019
	.word	12
	.word	4
	.word	_Label_2020
	.word	-12
	.word	4
	.word	_Label_2021
	.word	-16
	.word	4
	.word	_Label_2022
	.word	-20
	.word	4
	.word	_Label_2023
	.word	-24
	.word	4
	.word	_Label_2024
	.word	-28
	.word	4
	.word	_Label_2025
	.word	-32
	.word	4
	.word	_Label_2026
	.word	-36
	.word	4
	.word	_Label_2027
	.word	-40
	.word	4
	.word	_Label_2028
	.word	-44
	.word	4
	.word	_Label_2029
	.word	-48
	.word	4
	.word	_Label_2030
	.word	-52
	.word	4
	.word	_Label_2031
	.word	-56
	.word	4
	.word	_Label_2032
	.word	-60
	.word	4
	.word	_Label_2033
	.word	-64
	.word	4
	.word	0
_Label_2017:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2018:
	.ascii	"Pself\0"
	.align
_Label_2019:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2029:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
_Label_2030:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
_Label_2031:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2032:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2033:
	.byte	'I'
	.ascii	"numOfWaitingThreads\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2034
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
_Label_2034:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2035
	.word	_sourceFileName
	.word	328		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2035:
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
_Label_3492:
	push	r0
	sub	r1,1,r1
	bne	_Label_3492
	mov	1684,r13		! source line 1684
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1688,r13		! source line 1688
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1689,r13		! source line 1689
	mov	"\0\0AS",r10
!   _temp_2036 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2038 = &_temp_2037
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2038 = _temp_2038 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2040:
!   Data Move: *_temp_2038 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2038 = _temp_2038 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2039 = _temp_2039 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2039) then goto _Label_2040
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2040
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2041 = &_temp_2037
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3493
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3493:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2036 = *_temp_2041  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3494:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3494
! RETURN STATEMENT...
	mov	1689,r13		! source line 1689
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
	.word	_Label_2042
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2043
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2044
	.word	-12
	.word	4
	.word	_Label_2045
	.word	-16
	.word	4
	.word	_Label_2046
	.word	-20
	.word	4
	.word	_Label_2047
	.word	-104
	.word	84
	.word	_Label_2048
	.word	-108
	.word	4
	.word	0
_Label_2042:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2043:
	.ascii	"Pself\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2047:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2048:
	.byte	'?'
	.ascii	"_temp_2036\0"
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
_Label_3495:
	push	r0
	sub	r1,1,r1
	bne	_Label_3495
	mov	1694,r13		! source line 1694
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2049 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2049  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1699,r13		! source line 1699
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2050 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2050  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1700,r13		! source line 1700
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1701,r13		! source line 1701
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2055 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2056 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2055  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2051:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2056 then goto _Label_2054		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2054
_Label_2052:
	mov	1701,r13		! source line 1701
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2057 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2057  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1702,r13		! source line 1702
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2059 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2059 [i ] into _temp_2060
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
!   _temp_2058 = _temp_2060		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2058  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1703,r13		! source line 1703
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2061 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2061  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1704,r13		! source line 1704
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2063 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2063 [i ] into _temp_2064
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
!   Data Move: _temp_2062 = *_temp_2064  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2062  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1705,r13		! source line 1705
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2065 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2065  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1706,r13		! source line 1706
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2066 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2066  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1707,r13		! source line 1707
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2067 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2067  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1708,r13		! source line 1708
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1709,r13		! source line 1709
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2069) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2068  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2068  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1709,r13		! source line 1709
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2070 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2070  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1710,r13		! source line 1710
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1711,r13		! source line 1711
	mov	"\0\0IF",r10
	mov	1711,r13		! source line 1711
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2074) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2073  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2073) then goto _Label_2072
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2072
!	jmp	_Label_2071
_Label_2071:
! THEN...
	mov	1712,r13		! source line 1712
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1712,r13		! source line 1712
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2076) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2075  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2075  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1712,r13		! source line 1712
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2077
_Label_2072:
! ELSE...
	mov	1714,r13		! source line 1714
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2078 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2078  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1714,r13		! source line 1714
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2077:
! CALL STATEMENT...
!   _temp_2079 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2079  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1716,r13		! source line 1716
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1717,r13		! source line 1717
	mov	"\0\0IF",r10
	mov	1717,r13		! source line 1717
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2082) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2080 else goto _Label_2081
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2081
	jmp	_Label_2080
_Label_2080:
! THEN...
	mov	1718,r13		! source line 1718
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2083 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2083  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1718,r13		! source line 1718
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2084
_Label_2081:
! ELSE...
	mov	1720,r13		! source line 1720
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2085 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2085  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1720,r13		! source line 1720
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2084:
! CALL STATEMENT...
!   _temp_2086 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2086  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1722,r13		! source line 1722
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1723,r13		! source line 1723
	mov	"\0\0IF",r10
	mov	1723,r13		! source line 1723
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2089) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2087 else goto _Label_2088
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2088
	jmp	_Label_2087
_Label_2087:
! THEN...
	mov	1724,r13		! source line 1724
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2090 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2090  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1724,r13		! source line 1724
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2091
_Label_2088:
! ELSE...
	mov	1726,r13		! source line 1726
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2092 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2092  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1726,r13		! source line 1726
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2091:
! CALL STATEMENT...
!   _temp_2093 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2093  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1728,r13		! source line 1728
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1729,r13		! source line 1729
	mov	"\0\0IF",r10
	mov	1729,r13		! source line 1729
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2096) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2094 else goto _Label_2095
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2095
	jmp	_Label_2094
_Label_2094:
! THEN...
	mov	1730,r13		! source line 1730
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2097 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2097  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1730,r13		! source line 1730
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2098
_Label_2095:
! ELSE...
	mov	1732,r13		! source line 1732
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2099 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2099  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1732,r13		! source line 1732
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2098:
! CALL STATEMENT...
!   _temp_2100 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2100  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1734,r13		! source line 1734
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1735,r13		! source line 1735
	mov	"\0\0IF",r10
	mov	1735,r13		! source line 1735
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2103) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2101 else goto _Label_2102
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2102
	jmp	_Label_2101
_Label_2101:
! THEN...
	mov	1736,r13		! source line 1736
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2104 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2104  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1736,r13		! source line 1736
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2105
_Label_2102:
! ELSE...
	mov	1738,r13		! source line 1738
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2106 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2106  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1738,r13		! source line 1738
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2105:
! CALL STATEMENT...
!   Call the function
	mov	1740,r13		! source line 1740
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2053:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2051
! END FOR
_Label_2054:
! RETURN STATEMENT...
	mov	1701,r13		! source line 1701
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
	.word	_Label_2107
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2108
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2109
	.word	-12
	.word	4
	.word	_Label_2110
	.word	-16
	.word	4
	.word	_Label_2111
	.word	-20
	.word	4
	.word	_Label_2112
	.word	-24
	.word	4
	.word	_Label_2113
	.word	-28
	.word	4
	.word	_Label_2114
	.word	-32
	.word	4
	.word	_Label_2115
	.word	-36
	.word	4
	.word	_Label_2116
	.word	-40
	.word	4
	.word	_Label_2117
	.word	-44
	.word	4
	.word	_Label_2118
	.word	-48
	.word	4
	.word	_Label_2119
	.word	-52
	.word	4
	.word	_Label_2120
	.word	-56
	.word	4
	.word	_Label_2121
	.word	-60
	.word	4
	.word	_Label_2122
	.word	-64
	.word	4
	.word	_Label_2123
	.word	-68
	.word	4
	.word	_Label_2124
	.word	-72
	.word	4
	.word	_Label_2125
	.word	-76
	.word	4
	.word	_Label_2126
	.word	-80
	.word	4
	.word	_Label_2127
	.word	-84
	.word	4
	.word	_Label_2128
	.word	-88
	.word	4
	.word	_Label_2129
	.word	-92
	.word	4
	.word	_Label_2130
	.word	-96
	.word	4
	.word	_Label_2131
	.word	-100
	.word	4
	.word	_Label_2132
	.word	-104
	.word	4
	.word	_Label_2133
	.word	-108
	.word	4
	.word	_Label_2134
	.word	-112
	.word	4
	.word	_Label_2135
	.word	-116
	.word	4
	.word	_Label_2136
	.word	-120
	.word	4
	.word	_Label_2137
	.word	-124
	.word	4
	.word	_Label_2138
	.word	-128
	.word	4
	.word	_Label_2139
	.word	-132
	.word	4
	.word	_Label_2140
	.word	-136
	.word	4
	.word	_Label_2141
	.word	-140
	.word	4
	.word	_Label_2142
	.word	-144
	.word	4
	.word	_Label_2143
	.word	-148
	.word	4
	.word	_Label_2144
	.word	-152
	.word	4
	.word	_Label_2145
	.word	-156
	.word	4
	.word	_Label_2146
	.word	-160
	.word	4
	.word	_Label_2147
	.word	-164
	.word	4
	.word	_Label_2148
	.word	-168
	.word	4
	.word	0
_Label_2107:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2108:
	.ascii	"Pself\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2068\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2148:
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
_Label_3496:
	push	r0
	sub	r1,1,r1
	bne	_Label_3496
	mov	1746,r13		! source line 1746
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0RE",r10
!   _temp_2151 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2151 [entry ] into _temp_2152
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
!   Data Move: _temp_2150 = *_temp_2152  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2149 = _temp_2150 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2149  (sizeInBytes=4)
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
	.word	_Label_2153
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2154
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2155
	.word	12
	.word	4
	.word	_Label_2156
	.word	-12
	.word	4
	.word	_Label_2157
	.word	-16
	.word	4
	.word	_Label_2158
	.word	-20
	.word	4
	.word	_Label_2159
	.word	-24
	.word	4
	.word	0
_Label_2153:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2154:
	.ascii	"Pself\0"
	.align
_Label_2155:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2149\0"
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
_Label_3497:
	push	r0
	sub	r1,1,r1
	bne	_Label_3497
	mov	1756,r13		! source line 1756
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0RE",r10
!   _temp_2162 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2162 [entry ] into _temp_2163
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
!   Data Move: _temp_2161 = *_temp_2163  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2160 = _temp_2161 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2160  (sizeInBytes=4)
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
	.word	_Label_2164
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2165
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2166
	.word	12
	.word	4
	.word	_Label_2167
	.word	-12
	.word	4
	.word	_Label_2168
	.word	-16
	.word	4
	.word	_Label_2169
	.word	-20
	.word	4
	.word	_Label_2170
	.word	-24
	.word	4
	.word	0
_Label_2164:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2165:
	.ascii	"Pself\0"
	.align
_Label_2166:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2160\0"
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
_Label_3498:
	push	r0
	sub	r1,1,r1
	bne	_Label_3498
	mov	1765,r13		! source line 1765
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1770,r13		! source line 1770
	mov	"\0\0AS",r10
!   _temp_2171 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2171 [entry ] into _temp_2172
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
!   _temp_2176 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2176 [entry ] into _temp_2177
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
!   Data Move: _temp_2175 = *_temp_2177  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2174 = _temp_2175 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2173 = _temp_2174 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2172 = _temp_2173  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1770,r13		! source line 1770
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
	.word	_Label_2178
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2179
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2180
	.word	12
	.word	4
	.word	_Label_2181
	.word	16
	.word	4
	.word	_Label_2182
	.word	-12
	.word	4
	.word	_Label_2183
	.word	-16
	.word	4
	.word	_Label_2184
	.word	-20
	.word	4
	.word	_Label_2185
	.word	-24
	.word	4
	.word	_Label_2186
	.word	-28
	.word	4
	.word	_Label_2187
	.word	-32
	.word	4
	.word	_Label_2188
	.word	-36
	.word	4
	.word	0
_Label_2178:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2179:
	.ascii	"Pself\0"
	.align
_Label_2180:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2181:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2171\0"
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
_Label_3499:
	push	r0
	sub	r1,1,r1
	bne	_Label_3499
	mov	1775,r13		! source line 1775
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1779,r13		! source line 1779
	mov	"\0\0RE",r10
!   _temp_2192 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2192 [entry ] into _temp_2193
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
!   Data Move: _temp_2191 = *_temp_2193  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2190 = _temp_2191 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2190) then goto _Label_2194
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2194
!   _temp_2189 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2195
_Label_2194:
!   _temp_2189 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2195:
!   ReturnResult: _temp_2189  (sizeInBytes=1)
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
	.word	_Label_2196
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2197
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2198
	.word	12
	.word	4
	.word	_Label_2199
	.word	-16
	.word	4
	.word	_Label_2200
	.word	-20
	.word	4
	.word	_Label_2201
	.word	-24
	.word	4
	.word	_Label_2202
	.word	-28
	.word	4
	.word	_Label_2203
	.word	-9
	.word	1
	.word	0
_Label_2196:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2197:
	.ascii	"Pself\0"
	.align
_Label_2198:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2203:
	.byte	'C'
	.ascii	"_temp_2189\0"
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
_Label_3500:
	push	r0
	sub	r1,1,r1
	bne	_Label_3500
	mov	1784,r13		! source line 1784
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0RE",r10
!   _temp_2207 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2207 [entry ] into _temp_2208
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
!   Data Move: _temp_2206 = *_temp_2208  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2205 = _temp_2206 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2205) then goto _Label_2209
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2209
!   _temp_2204 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2210
_Label_2209:
!   _temp_2204 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2210:
!   ReturnResult: _temp_2204  (sizeInBytes=1)
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
	.word	_Label_2211
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2212
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2213
	.word	12
	.word	4
	.word	_Label_2214
	.word	-16
	.word	4
	.word	_Label_2215
	.word	-20
	.word	4
	.word	_Label_2216
	.word	-24
	.word	4
	.word	_Label_2217
	.word	-28
	.word	4
	.word	_Label_2218
	.word	-9
	.word	1
	.word	0
_Label_2211:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2212:
	.ascii	"Pself\0"
	.align
_Label_2213:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2214:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2215:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2218:
	.byte	'C'
	.ascii	"_temp_2204\0"
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
_Label_3501:
	push	r0
	sub	r1,1,r1
	bne	_Label_3501
	mov	1793,r13		! source line 1793
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1797,r13		! source line 1797
	mov	"\0\0RE",r10
!   _temp_2222 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2222 [entry ] into _temp_2223
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
!   Data Move: _temp_2221 = *_temp_2223  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2220 = _temp_2221 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2220) then goto _Label_2224
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2224
!   _temp_2219 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2225
_Label_2224:
!   _temp_2219 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2225:
!   ReturnResult: _temp_2219  (sizeInBytes=1)
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
	.word	_Label_2226
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2227
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2228
	.word	12
	.word	4
	.word	_Label_2229
	.word	-16
	.word	4
	.word	_Label_2230
	.word	-20
	.word	4
	.word	_Label_2231
	.word	-24
	.word	4
	.word	_Label_2232
	.word	-28
	.word	4
	.word	_Label_2233
	.word	-9
	.word	1
	.word	0
_Label_2226:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2227:
	.ascii	"Pself\0"
	.align
_Label_2228:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2233:
	.byte	'C'
	.ascii	"_temp_2219\0"
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
_Label_3502:
	push	r0
	sub	r1,1,r1
	bne	_Label_3502
	mov	1802,r13		! source line 1802
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1806,r13		! source line 1806
	mov	"\0\0RE",r10
!   _temp_2237 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2237 [entry ] into _temp_2238
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
!   Data Move: _temp_2236 = *_temp_2238  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2235 = _temp_2236 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2235) then goto _Label_2239
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2239
!   _temp_2234 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2240
_Label_2239:
!   _temp_2234 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2240:
!   ReturnResult: _temp_2234  (sizeInBytes=1)
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
	.word	_Label_2241
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2242
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2243
	.word	12
	.word	4
	.word	_Label_2244
	.word	-16
	.word	4
	.word	_Label_2245
	.word	-20
	.word	4
	.word	_Label_2246
	.word	-24
	.word	4
	.word	_Label_2247
	.word	-28
	.word	4
	.word	_Label_2248
	.word	-9
	.word	1
	.word	0
_Label_2241:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2242:
	.ascii	"Pself\0"
	.align
_Label_2243:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2248:
	.byte	'C'
	.ascii	"_temp_2234\0"
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
_Label_3503:
	push	r0
	sub	r1,1,r1
	bne	_Label_3503
	mov	1811,r13		! source line 1811
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0AS",r10
!   _temp_2249 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2249 [entry ] into _temp_2250
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
!   _temp_2253 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2253 [entry ] into _temp_2254
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
!   Data Move: _temp_2252 = *_temp_2254  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2251 = _temp_2252 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2250 = _temp_2251  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1815,r13		! source line 1815
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
	.word	_Label_2255
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2256
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2257
	.word	12
	.word	4
	.word	_Label_2258
	.word	-12
	.word	4
	.word	_Label_2259
	.word	-16
	.word	4
	.word	_Label_2260
	.word	-20
	.word	4
	.word	_Label_2261
	.word	-24
	.word	4
	.word	_Label_2262
	.word	-28
	.word	4
	.word	_Label_2263
	.word	-32
	.word	4
	.word	0
_Label_2255:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2256:
	.ascii	"Pself\0"
	.align
_Label_2257:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2249\0"
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
_Label_3504:
	push	r0
	sub	r1,1,r1
	bne	_Label_3504
	mov	1820,r13		! source line 1820
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1824,r13		! source line 1824
	mov	"\0\0AS",r10
!   _temp_2264 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2264 [entry ] into _temp_2265
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
!   _temp_2268 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2268 [entry ] into _temp_2269
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
!   Data Move: _temp_2267 = *_temp_2269  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2266 = _temp_2267 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2265 = _temp_2266  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1824,r13		! source line 1824
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
	.word	_Label_2270
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2271
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2272
	.word	12
	.word	4
	.word	_Label_2273
	.word	-12
	.word	4
	.word	_Label_2274
	.word	-16
	.word	4
	.word	_Label_2275
	.word	-20
	.word	4
	.word	_Label_2276
	.word	-24
	.word	4
	.word	_Label_2277
	.word	-28
	.word	4
	.word	_Label_2278
	.word	-32
	.word	4
	.word	0
_Label_2270:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2271:
	.ascii	"Pself\0"
	.align
_Label_2272:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2264\0"
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
_Label_3505:
	push	r0
	sub	r1,1,r1
	bne	_Label_3505
	mov	1829,r13		! source line 1829
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1833,r13		! source line 1833
	mov	"\0\0AS",r10
!   _temp_2279 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2279 [entry ] into _temp_2280
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
!   _temp_2283 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2283 [entry ] into _temp_2284
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
!   Data Move: _temp_2282 = *_temp_2284  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2281 = _temp_2282 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2280 = _temp_2281  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1833,r13		! source line 1833
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
	.word	_Label_2285
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2286
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2287
	.word	12
	.word	4
	.word	_Label_2288
	.word	-12
	.word	4
	.word	_Label_2289
	.word	-16
	.word	4
	.word	_Label_2290
	.word	-20
	.word	4
	.word	_Label_2291
	.word	-24
	.word	4
	.word	_Label_2292
	.word	-28
	.word	4
	.word	_Label_2293
	.word	-32
	.word	4
	.word	0
_Label_2285:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2286:
	.ascii	"Pself\0"
	.align
_Label_2287:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2279\0"
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
_Label_3506:
	push	r0
	sub	r1,1,r1
	bne	_Label_3506
	mov	1838,r13		! source line 1838
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1842,r13		! source line 1842
	mov	"\0\0AS",r10
!   _temp_2294 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2294 [entry ] into _temp_2295
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
!   _temp_2298 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2298 [entry ] into _temp_2299
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
!   Data Move: _temp_2297 = *_temp_2299  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2296 = _temp_2297 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2295 = _temp_2296  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1842,r13		! source line 1842
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
	.word	_Label_2300
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2301
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2302
	.word	12
	.word	4
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
	.word	_Label_2308
	.word	-32
	.word	4
	.word	0
_Label_2300:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2301:
	.ascii	"Pself\0"
	.align
_Label_2302:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2294\0"
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
_Label_3507:
	push	r0
	sub	r1,1,r1
	bne	_Label_3507
	mov	1847,r13		! source line 1847
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1851,r13		! source line 1851
	mov	"\0\0AS",r10
!   _temp_2309 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2309 [entry ] into _temp_2310
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
!   _temp_2313 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2313 [entry ] into _temp_2314
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
!   Data Move: _temp_2312 = *_temp_2314  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2311 = _temp_2312 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2310 = _temp_2311  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1851,r13		! source line 1851
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
	.word	_Label_2315
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2316
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2317
	.word	12
	.word	4
	.word	_Label_2318
	.word	-12
	.word	4
	.word	_Label_2319
	.word	-16
	.word	4
	.word	_Label_2320
	.word	-20
	.word	4
	.word	_Label_2321
	.word	-24
	.word	4
	.word	_Label_2322
	.word	-28
	.word	4
	.word	_Label_2323
	.word	-32
	.word	4
	.word	0
_Label_2315:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2316:
	.ascii	"Pself\0"
	.align
_Label_2317:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2309\0"
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
_Label_3508:
	push	r0
	sub	r1,1,r1
	bne	_Label_3508
	mov	1856,r13		! source line 1856
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0AS",r10
!   _temp_2324 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2324 [entry ] into _temp_2325
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
!   _temp_2328 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2328 [entry ] into _temp_2329
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
!   Data Move: _temp_2327 = *_temp_2329  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2326 = _temp_2327 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2325 = _temp_2326  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1860,r13		! source line 1860
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
	.word	_Label_2330
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2331
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2332
	.word	12
	.word	4
	.word	_Label_2333
	.word	-12
	.word	4
	.word	_Label_2334
	.word	-16
	.word	4
	.word	_Label_2335
	.word	-20
	.word	4
	.word	_Label_2336
	.word	-24
	.word	4
	.word	_Label_2337
	.word	-28
	.word	4
	.word	_Label_2338
	.word	-32
	.word	4
	.word	0
_Label_2330:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2331:
	.ascii	"Pself\0"
	.align
_Label_2332:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2324\0"
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
_Label_3509:
	push	r0
	sub	r1,1,r1
	bne	_Label_3509
	mov	1865,r13		! source line 1865
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1869,r13		! source line 1869
	mov	"\0\0AS",r10
!   _temp_2339 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2339 [entry ] into _temp_2340
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
!   _temp_2343 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2343 [entry ] into _temp_2344
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
!   Data Move: _temp_2342 = *_temp_2344  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2341 = _temp_2342 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2340 = _temp_2341  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1869,r13		! source line 1869
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
	.word	_Label_2345
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2346
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2347
	.word	12
	.word	4
	.word	_Label_2348
	.word	-12
	.word	4
	.word	_Label_2349
	.word	-16
	.word	4
	.word	_Label_2350
	.word	-20
	.word	4
	.word	_Label_2351
	.word	-24
	.word	4
	.word	_Label_2352
	.word	-28
	.word	4
	.word	_Label_2353
	.word	-32
	.word	4
	.word	0
_Label_2345:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2346:
	.ascii	"Pself\0"
	.align
_Label_2347:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2339\0"
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
_Label_3510:
	push	r0
	sub	r1,1,r1
	bne	_Label_3510
	mov	1874,r13		! source line 1874
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0AS",r10
!   _temp_2354 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2354 [entry ] into _temp_2355
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
!   _temp_2358 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2358 [entry ] into _temp_2359
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
!   Data Move: _temp_2357 = *_temp_2359  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2356 = _temp_2357 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2355 = _temp_2356  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1878,r13		! source line 1878
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
	.word	_Label_2360
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2361
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2362
	.word	12
	.word	4
	.word	_Label_2363
	.word	-12
	.word	4
	.word	_Label_2364
	.word	-16
	.word	4
	.word	_Label_2365
	.word	-20
	.word	4
	.word	_Label_2366
	.word	-24
	.word	4
	.word	_Label_2367
	.word	-28
	.word	4
	.word	_Label_2368
	.word	-32
	.word	4
	.word	0
_Label_2360:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2361:
	.ascii	"Pself\0"
	.align
_Label_2362:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2354\0"
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
_Label_3511:
	push	r0
	sub	r1,1,r1
	bne	_Label_3511
	mov	1883,r13		! source line 1883
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2370 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2370 [0 ] into _temp_2371
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
!   _temp_2369 = _temp_2371		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2372 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2369  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2372  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1889,r13		! source line 1889
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1889,r13		! source line 1889
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
	.word	_Label_2373
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2374
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2375
	.word	-12
	.word	4
	.word	_Label_2376
	.word	-16
	.word	4
	.word	_Label_2377
	.word	-20
	.word	4
	.word	_Label_2378
	.word	-24
	.word	4
	.word	0
_Label_2373:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2374:
	.ascii	"Pself\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2369\0"
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
_Label_3512:
	push	r0
	sub	r1,1,r1
	bne	_Label_3512
	mov	1894,r13		! source line 1894
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1909,r13		! source line 1909
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2379
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2379
	jmp	_Label_2380
_Label_2379:
! THEN...
	mov	1910,r13		! source line 1910
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1910,r13		! source line 1910
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2381
_Label_2380:
! ELSE...
	mov	1911,r13		! source line 1911
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1911,r13		! source line 1911
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2383		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2383
!	jmp	_Label_2382
_Label_2382:
! THEN...
	mov	1912,r13		! source line 1912
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1912,r13		! source line 1912
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2383:
! END IF...
_Label_2381:
! ASSIGNMENT STATEMENT...
	mov	1914,r13		! source line 1914
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
	mov	1915,r13		! source line 1915
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
	mov	1918,r13		! source line 1918
	mov	"\0\0WH",r10
_Label_2384:
!	jmp	_Label_2385
_Label_2385:
	mov	1918,r13		! source line 1918
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1919,r13		! source line 1919
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2388		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2388
!	jmp	_Label_2387
_Label_2387:
! THEN...
	mov	1920,r13		! source line 1920
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2389 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2389  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1920,r13		! source line 1920
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2388:
! IF STATEMENT...
	mov	1923,r13		! source line 1923
	mov	"\0\0IF",r10
	mov	1923,r13		! source line 1923
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2393) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2392  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2392 then goto _Label_2391 else goto _Label_2390
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2390
	jmp	_Label_2391
_Label_2390:
! THEN...
	mov	1924,r13		! source line 1924
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2394 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2394  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1924,r13		! source line 1924
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2391:
! ASSIGNMENT STATEMENT...
	mov	1927,r13		! source line 1927
	mov	"\0\0AS",r10
	mov	1927,r13		! source line 1927
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2396) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2395  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2395 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1929,r13		! source line 1929
	mov	"\0\0WH",r10
_Label_2397:
!   if offset >= 8192 then goto _Label_2399		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2399
!	jmp	_Label_2398
_Label_2398:
	mov	1929,r13		! source line 1929
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1932,r13		! source line 1932
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2400 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2400  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1933,r13		! source line 1933
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1934,r13		! source line 1934
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1935,r13		! source line 1935
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1936,r13		! source line 1936
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1937,r13		! source line 1937
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2402		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2402
!	jmp	_Label_2401
_Label_2401:
! THEN...
	mov	1938,r13		! source line 1938
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1938,r13		! source line 1938
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2402:
! END WHILE...
	jmp	_Label_2397
_Label_2399:
! ASSIGNMENT STATEMENT...
	mov	1941,r13		! source line 1941
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1942,r13		! source line 1942
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2384
_Label_2386:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2403
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2404
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2405
	.word	12
	.word	4
	.word	_Label_2406
	.word	16
	.word	4
	.word	_Label_2407
	.word	20
	.word	4
	.word	_Label_2408
	.word	-9
	.word	1
	.word	_Label_2409
	.word	-16
	.word	4
	.word	_Label_2410
	.word	-20
	.word	4
	.word	_Label_2411
	.word	-24
	.word	4
	.word	_Label_2412
	.word	-28
	.word	4
	.word	_Label_2413
	.word	-10
	.word	1
	.word	_Label_2414
	.word	-32
	.word	4
	.word	_Label_2415
	.word	-36
	.word	4
	.word	_Label_2416
	.word	-40
	.word	4
	.word	_Label_2417
	.word	-44
	.word	4
	.word	_Label_2418
	.word	-48
	.word	4
	.word	0
_Label_2403:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2404:
	.ascii	"Pself\0"
	.align
_Label_2405:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2406:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2407:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2408:
	.byte	'C'
	.ascii	"_temp_2400\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2393\0"
	.align
_Label_2413:
	.byte	'C'
	.ascii	"_temp_2392\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2415:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2416:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2417:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2418:
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
_Label_3513:
	push	r0
	sub	r1,1,r1
	bne	_Label_3513
	mov	1948,r13		! source line 1948
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1959,r13		! source line 1959
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2419
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2419
	jmp	_Label_2420
_Label_2419:
! THEN...
	mov	1960,r13		! source line 1960
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1960,r13		! source line 1960
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2421
_Label_2420:
! ELSE...
	mov	1961,r13		! source line 1961
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1961,r13		! source line 1961
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2423		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2423
!	jmp	_Label_2422
_Label_2422:
! THEN...
	mov	1962,r13		! source line 1962
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1962,r13		! source line 1962
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2423:
! END IF...
_Label_2421:
! ASSIGNMENT STATEMENT...
	mov	1964,r13		! source line 1964
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
	mov	1965,r13		! source line 1965
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
	mov	1966,r13		! source line 1966
	mov	"\0\0WH",r10
_Label_2424:
!	jmp	_Label_2425
_Label_2425:
	mov	1966,r13		! source line 1966
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2430		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2430
	jmp	_Label_2427
_Label_2430:
	mov	1968,r13		! source line 1968
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2432) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2431  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2431 then goto _Label_2429 else goto _Label_2427
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2427
	jmp	_Label_2429
_Label_2429:
	mov	1969,r13		! source line 1969
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2434) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2433  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2433 then goto _Label_2428 else goto _Label_2427
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2427
	jmp	_Label_2428
_Label_2427:
! THEN...
	mov	1970,r13		! source line 1970
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1970,r13		! source line 1970
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2428:
! ASSIGNMENT STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0AS",r10
	mov	1972,r13		! source line 1972
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2436) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2435  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2435 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0WH",r10
_Label_2437:
!   if offset >= 8192 then goto _Label_2439		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2439
!	jmp	_Label_2438
_Label_2438:
	mov	1973,r13		! source line 1973
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2440 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2440  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1975,r13		! source line 1975
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1977,r13		! source line 1977
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1978,r13		! source line 1978
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1979,r13		! source line 1979
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2442		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2442
!	jmp	_Label_2441
_Label_2441:
! THEN...
	mov	1980,r13		! source line 1980
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1980,r13		! source line 1980
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2442:
! END WHILE...
	jmp	_Label_2437
_Label_2439:
! ASSIGNMENT STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2424
_Label_2426:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2443
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2444
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2445
	.word	12
	.word	4
	.word	_Label_2446
	.word	16
	.word	4
	.word	_Label_2447
	.word	20
	.word	4
	.word	_Label_2448
	.word	-9
	.word	1
	.word	_Label_2449
	.word	-16
	.word	4
	.word	_Label_2450
	.word	-20
	.word	4
	.word	_Label_2451
	.word	-24
	.word	4
	.word	_Label_2452
	.word	-10
	.word	1
	.word	_Label_2453
	.word	-28
	.word	4
	.word	_Label_2454
	.word	-11
	.word	1
	.word	_Label_2455
	.word	-32
	.word	4
	.word	_Label_2456
	.word	-36
	.word	4
	.word	_Label_2457
	.word	-40
	.word	4
	.word	_Label_2458
	.word	-44
	.word	4
	.word	0
_Label_2443:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2444:
	.ascii	"Pself\0"
	.align
_Label_2445:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2446:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2447:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2448:
	.byte	'C'
	.ascii	"_temp_2440\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2452:
	.byte	'C'
	.ascii	"_temp_2433\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2454:
	.byte	'C'
	.ascii	"_temp_2431\0"
	.align
_Label_2455:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2456:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2457:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2458:
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
_Label_3514:
	push	r0
	sub	r1,1,r1
	bne	_Label_3514
	mov	1990,r13		! source line 1990
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2014,r13		! source line 2014
	mov	"\0\0IF",r10
	mov	2014,r13		! source line 2014
	mov	"\0\0SE",r10
!   _temp_2462 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2463) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2462  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2461  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2461 >= 4 then goto _Label_2460		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2460
!	jmp	_Label_2459
_Label_2459:
! THEN...
	mov	2017,r13		! source line 2017
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2017,r13		! source line 2017
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2460:
! IF STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2465		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2465
!	jmp	_Label_2464
_Label_2464:
! THEN...
	mov	2022,r13		! source line 2022
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2022,r13		! source line 2022
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2465:
! ASSIGNMENT STATEMENT...
	mov	2025,r13		! source line 2025
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
	mov	2027,r13		! source line 2027
	mov	"\0\0RE",r10
	mov	2027,r13		! source line 2027
	mov	"\0\0SE",r10
!   _temp_2468 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2467 = _temp_2468 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2469 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2470) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2467  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2469  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2466  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2466  (sizeInBytes=4)
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
	.word	_Label_2471
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2472
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2473
	.word	12
	.word	4
	.word	_Label_2474
	.word	16
	.word	4
	.word	_Label_2475
	.word	20
	.word	4
	.word	_Label_2476
	.word	-12
	.word	4
	.word	_Label_2477
	.word	-16
	.word	4
	.word	_Label_2478
	.word	-20
	.word	4
	.word	_Label_2479
	.word	-24
	.word	4
	.word	_Label_2480
	.word	-28
	.word	4
	.word	_Label_2481
	.word	-32
	.word	4
	.word	_Label_2482
	.word	-36
	.word	4
	.word	_Label_2483
	.word	-40
	.word	4
	.word	_Label_2484
	.word	-44
	.word	4
	.word	0
_Label_2471:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2472:
	.ascii	"Pself\0"
	.align
_Label_2473:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2474:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2475:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2462\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2484:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2485
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2485:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2486
	.word	_sourceFileName
	.word	361		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2486:
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
_Label_3515:
	push	r0
	sub	r1,1,r1
	bne	_Label_3515
	mov	2556,r13		! source line 2556
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2487 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2487  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2557,r13		! source line 2557
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2560,r13		! source line 2560
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2561,r13		! source line 2561
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2562,r13		! source line 2562
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2564,r13		! source line 2564
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
	mov	2565,r13		! source line 2565
	mov	"\0\0SE",r10
!   _temp_2489 = &semUsedInSynchMethods
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
	mov	2566,r13		! source line 2566
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
	mov	2567,r13		! source line 2567
	mov	"\0\0SE",r10
!   _temp_2491 = &diskBusy
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
	mov	2567,r13		! source line 2567
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
	.word	_Label_2492
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2493
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2494
	.word	-12
	.word	4
	.word	_Label_2495
	.word	-16
	.word	4
	.word	_Label_2496
	.word	-20
	.word	4
	.word	_Label_2497
	.word	-24
	.word	4
	.word	_Label_2498
	.word	-28
	.word	4
	.word	0
_Label_2492:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2493:
	.ascii	"Pself\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2487\0"
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
_Label_3516:
	push	r0
	sub	r1,1,r1
	bne	_Label_3516
	mov	2572,r13		! source line 2572
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0SE",r10
!   _temp_2499 = &diskBusy
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
	mov	2586,r13		! source line 2586
	mov	"\0\0WH",r10
_Label_2500:
!	jmp	_Label_2501
_Label_2501:
	mov	2586,r13		! source line 2586
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0SE",r10
!   _temp_2503 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2504) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2503  sizeInBytes=4
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
	mov	2590,r13		! source line 2590
	mov	"\0\0SE",r10
!   _temp_2505 = &semUsedInSynchMethods
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
	mov	2593,r13		! source line 2593
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2514 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2508
	cmp	r1,2
	be	_Label_2509
	cmp	r1,3
	be	_Label_2510
	cmp	r1,4
	be	_Label_2511
	cmp	r1,5
	be	_Label_2512
	cmp	r1,6
	be	_Label_2513
	jmp	_Label_2506
! CASE 1...
_Label_2508:
! SEND STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0SE",r10
!   _temp_2515 = &diskBusy
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
	mov	2596,r13		! source line 2596
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2509:
! CALL STATEMENT...
!   _temp_2516 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2516  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2598,r13		! source line 2598
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2510:
! CALL STATEMENT...
!   _temp_2517 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2517  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2600,r13		! source line 2600
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2511:
! CALL STATEMENT...
!   _temp_2518 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2518  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2602,r13		! source line 2602
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2512:
! BREAK STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0BR",r10
	jmp	_Label_2507
! CASE 6...
_Label_2513:
! CALL STATEMENT...
!   _temp_2519 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2519  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2608,r13		! source line 2608
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2506:
! CALL STATEMENT...
!   _temp_2520 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2520  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2610,r13		! source line 2610
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2507:
! END WHILE...
	jmp	_Label_2500
_Label_2502:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2521
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2522
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2523
	.word	12
	.word	4
	.word	_Label_2524
	.word	16
	.word	4
	.word	_Label_2525
	.word	20
	.word	4
	.word	_Label_2526
	.word	-12
	.word	4
	.word	_Label_2527
	.word	-16
	.word	4
	.word	_Label_2528
	.word	-20
	.word	4
	.word	_Label_2529
	.word	-24
	.word	4
	.word	_Label_2530
	.word	-28
	.word	4
	.word	_Label_2531
	.word	-32
	.word	4
	.word	_Label_2532
	.word	-36
	.word	4
	.word	_Label_2533
	.word	-40
	.word	4
	.word	_Label_2534
	.word	-44
	.word	4
	.word	_Label_2535
	.word	-48
	.word	4
	.word	_Label_2536
	.word	-52
	.word	4
	.word	0
_Label_2521:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2522:
	.ascii	"Pself\0"
	.align
_Label_2523:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2524:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2525:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2499\0"
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
	mov	2619,r13		! source line 2619
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2637,r13		! source line 2637
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
	mov	2638,r13		! source line 2638
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
	mov	2639,r13		! source line 2639
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
	mov	2640,r13		! source line 2640
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
	mov	2640,r13		! source line 2640
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
	.word	_Label_2537
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2538
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2539
	.word	12
	.word	4
	.word	_Label_2540
	.word	16
	.word	4
	.word	_Label_2541
	.word	20
	.word	4
	.word	_Label_2542
	.word	24
	.word	4
	.word	0
_Label_2537:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2538:
	.ascii	"Pself\0"
	.align
_Label_2539:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2540:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2541:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2542:
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
_Label_3517:
	push	r0
	sub	r1,1,r1
	bne	_Label_3517
	mov	2645,r13		! source line 2645
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0SE",r10
!   _temp_2543 = &diskBusy
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
	mov	2658,r13		! source line 2658
	mov	"\0\0WH",r10
_Label_2544:
!	jmp	_Label_2545
_Label_2545:
	mov	2658,r13		! source line 2658
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2659,r13		! source line 2659
	mov	"\0\0SE",r10
!   _temp_2547 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2548) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2547  sizeInBytes=4
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
	mov	2661,r13		! source line 2661
	mov	"\0\0SE",r10
!   _temp_2549 = &semUsedInSynchMethods
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
	mov	2664,r13		! source line 2664
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2558 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2552
	cmp	r1,2
	be	_Label_2553
	cmp	r1,3
	be	_Label_2554
	cmp	r1,4
	be	_Label_2555
	cmp	r1,5
	be	_Label_2556
	cmp	r1,6
	be	_Label_2557
	jmp	_Label_2550
! CASE 1...
_Label_2552:
! SEND STATEMENT...
	mov	2666,r13		! source line 2666
	mov	"\0\0SE",r10
!   _temp_2559 = &diskBusy
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
	mov	2667,r13		! source line 2667
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2553:
! CALL STATEMENT...
!   _temp_2560 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2560  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2669,r13		! source line 2669
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2554:
! CALL STATEMENT...
!   _temp_2561 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2561  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2671,r13		! source line 2671
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2555:
! CALL STATEMENT...
!   _temp_2562 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2562  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2673,r13		! source line 2673
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2556:
! BREAK STATEMENT...
	mov	2677,r13		! source line 2677
	mov	"\0\0BR",r10
	jmp	_Label_2551
! CASE 6...
_Label_2557:
! CALL STATEMENT...
!   _temp_2563 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2563  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2679,r13		! source line 2679
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2550:
! CALL STATEMENT...
!   _temp_2564 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2564  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2681,r13		! source line 2681
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2551:
! END WHILE...
	jmp	_Label_2544
_Label_2546:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2565
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2566
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2567
	.word	12
	.word	4
	.word	_Label_2568
	.word	16
	.word	4
	.word	_Label_2569
	.word	20
	.word	4
	.word	_Label_2570
	.word	-12
	.word	4
	.word	_Label_2571
	.word	-16
	.word	4
	.word	_Label_2572
	.word	-20
	.word	4
	.word	_Label_2573
	.word	-24
	.word	4
	.word	_Label_2574
	.word	-28
	.word	4
	.word	_Label_2575
	.word	-32
	.word	4
	.word	_Label_2576
	.word	-36
	.word	4
	.word	_Label_2577
	.word	-40
	.word	4
	.word	_Label_2578
	.word	-44
	.word	4
	.word	_Label_2579
	.word	-48
	.word	4
	.word	_Label_2580
	.word	-52
	.word	4
	.word	0
_Label_2565:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2566:
	.ascii	"Pself\0"
	.align
_Label_2567:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2568:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2569:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2543\0"
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
	mov	2690,r13		! source line 2690
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2705,r13		! source line 2705
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2707,r13		! source line 2707
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
	mov	2708,r13		! source line 2708
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
	mov	2709,r13		! source line 2709
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
	mov	2710,r13		! source line 2710
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
	mov	2710,r13		! source line 2710
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
	.word	_Label_2581
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2582
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2583
	.word	12
	.word	4
	.word	_Label_2584
	.word	16
	.word	4
	.word	_Label_2585
	.word	20
	.word	4
	.word	_Label_2586
	.word	24
	.word	4
	.word	0
_Label_2581:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2582:
	.ascii	"Pself\0"
	.align
_Label_2583:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2584:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2585:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2586:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2587
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
_Label_2587:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2588
	.word	_sourceFileName
	.word	384		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2588:
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
_Label_3518:
	push	r0
	sub	r1,1,r1
	bne	_Label_3518
	mov	2721,r13		! source line 2721
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2589 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2589  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2728,r13		! source line 2728
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2729,r13		! source line 2729
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
	mov	2730,r13		! source line 2730
	mov	"\0\0SE",r10
!   _temp_2591 = &fileManagerLock
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
	mov	2733,r13		! source line 2733
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
	mov	2734,r13		! source line 2734
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
	mov	2735,r13		! source line 2735
	mov	"\0\0SE",r10
!   _temp_2594 = &anFCBBecameFree
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
	mov	2736,r13		! source line 2736
	mov	"\0\0AS",r10
!   _temp_2595 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2597 = &_temp_2596
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2597 = _temp_2597 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2599 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3519:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3519
!   _temp_2599 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2601:
!   Data Move: *_temp_2597 = _temp_2599  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3520:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3520
!   _temp_2597 = _temp_2597 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2598 = _temp_2598 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2598) then goto _Label_2601
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2601
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2602 = &_temp_2596
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3521
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3521:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2595 = *_temp_2602  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3522:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3522
! FOR STATEMENT...
	mov	2738,r13		! source line 2738
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2607 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2608 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2607  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2603:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2608 then goto _Label_2606		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2606
_Label_2604:
	mov	2738,r13		! source line 2738
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2739,r13		! source line 2739
	mov	"\0\0AS",r10
!   _temp_2609 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2609 [i ] into _temp_2610
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
!   _temp_2611 = _temp_2610 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2611 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2740,r13		! source line 2740
	mov	"\0\0SE",r10
!   _temp_2612 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2612 [i ] into _temp_2613
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
	mov	2741,r13		! source line 2741
	mov	"\0\0SE",r10
!   _temp_2615 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2615 [i ] into _temp_2616
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
!   _temp_2614 = _temp_2616		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2617 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2614  sizeInBytes=4
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
_Label_2605:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2603
! END FOR
_Label_2606:
! ASSIGNMENT STATEMENT...
	mov	2745,r13		! source line 2745
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
	mov	2746,r13		! source line 2746
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
	mov	2747,r13		! source line 2747
	mov	"\0\0SE",r10
!   _temp_2620 = &anOpenFileBecameFree
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
	mov	2748,r13		! source line 2748
	mov	"\0\0AS",r10
!   _temp_2621 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2623 = &_temp_2622
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2623 = _temp_2623 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2625 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3523:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3523
!   _temp_2625 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2627:
!   Data Move: *_temp_2623 = _temp_2625  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3524:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3524
!   _temp_2623 = _temp_2623 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2624 = _temp_2624 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2624) then goto _Label_2627
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2627
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2628 = &_temp_2622
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3525
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3525:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2621 = *_temp_2628  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3526:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3526
! FOR STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2633 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2634 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2633  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2629:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2634 then goto _Label_2632		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2632
_Label_2630:
	mov	2750,r13		! source line 2750
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2751,r13		! source line 2751
	mov	"\0\0AS",r10
!   _temp_2635 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2635 [i ] into _temp_2636
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
!   _temp_2637 = _temp_2636 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2637 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2752,r13		! source line 2752
	mov	"\0\0SE",r10
!   _temp_2639 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2639 [i ] into _temp_2640
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
!   _temp_2638 = _temp_2640		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2641 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2638  sizeInBytes=4
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
_Label_2631:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2629
! END FOR
_Label_2632:
! ASSIGNMENT STATEMENT...
	mov	2756,r13		! source line 2756
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3527:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3527
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2757,r13		! source line 2757
	mov	"\0\0AS",r10
!   _temp_2643 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2644 = _temp_2643 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2644 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2762,r13		! source line 2762
	mov	"\0\0AS",r10
	mov	2762,r13		! source line 2762
	mov	"\0\0SE",r10
!   _temp_2645 = &_P_Kernel_frameManager
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
	mov	2763,r13		! source line 2763
	mov	"\0\0SE",r10
!   _temp_2646 = &_P_Kernel_diskDriver
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
	mov	2763,r13		! source line 2763
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
	.word	_Label_2647
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2648
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2649
	.word	-12
	.word	4
	.word	_Label_2650
	.word	-16
	.word	4
	.word	_Label_2651
	.word	-20
	.word	4
	.word	_Label_2652
	.word	-24
	.word	4
	.word	_Label_2653
	.word	-28
	.word	4
	.word	_Label_2654
	.word	-32
	.word	4
	.word	_Label_2655
	.word	-36
	.word	4
	.word	_Label_2656
	.word	-40
	.word	4
	.word	_Label_2657
	.word	-44
	.word	4
	.word	_Label_2658
	.word	-48
	.word	4
	.word	_Label_2659
	.word	-52
	.word	4
	.word	_Label_2660
	.word	-56
	.word	4
	.word	_Label_2661
	.word	-60
	.word	4
	.word	_Label_2662
	.word	-64
	.word	4
	.word	_Label_2663
	.word	-68
	.word	4
	.word	_Label_2664
	.word	-72
	.word	4
	.word	_Label_2665
	.word	-100
	.word	28
	.word	_Label_2666
	.word	-104
	.word	4
	.word	_Label_2667
	.word	-108
	.word	4
	.word	_Label_2668
	.word	-392
	.word	284
	.word	_Label_2669
	.word	-396
	.word	4
	.word	_Label_2670
	.word	-400
	.word	4
	.word	_Label_2671
	.word	-404
	.word	4
	.word	_Label_2672
	.word	-408
	.word	4
	.word	_Label_2673
	.word	-412
	.word	4
	.word	_Label_2674
	.word	-416
	.word	4
	.word	_Label_2675
	.word	-420
	.word	4
	.word	_Label_2676
	.word	-424
	.word	4
	.word	_Label_2677
	.word	-428
	.word	4
	.word	_Label_2678
	.word	-432
	.word	4
	.word	_Label_2679
	.word	-436
	.word	4
	.word	_Label_2680
	.word	-440
	.word	4
	.word	_Label_2681
	.word	-444
	.word	4
	.word	_Label_2682
	.word	-448
	.word	4
	.word	_Label_2683
	.word	-452
	.word	4
	.word	_Label_2684
	.word	-456
	.word	4
	.word	_Label_2685
	.word	-460
	.word	4
	.word	_Label_2686
	.word	-500
	.word	40
	.word	_Label_2687
	.word	-504
	.word	4
	.word	_Label_2688
	.word	-508
	.word	4
	.word	_Label_2689
	.word	-912
	.word	404
	.word	_Label_2690
	.word	-916
	.word	4
	.word	_Label_2691
	.word	-920
	.word	4
	.word	_Label_2692
	.word	-924
	.word	4
	.word	_Label_2693
	.word	-928
	.word	4
	.word	_Label_2694
	.word	-932
	.word	4
	.word	_Label_2695
	.word	-936
	.word	4
	.word	_Label_2696
	.word	-940
	.word	4
	.word	_Label_2697
	.word	-944
	.word	4
	.word	0
_Label_2647:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2648:
	.ascii	"Pself\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2697:
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
_Label_3528:
	push	r0
	sub	r1,1,r1
	bne	_Label_3528
	mov	2770,r13		! source line 2770
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0SE",r10
!   _temp_2698 = &fileManagerLock
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
!   _temp_2699 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2699  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2773,r13		! source line 2773
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2774,r13		! source line 2774
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2704 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2705 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2704  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2700:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2705 then goto _Label_2703		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2703
_Label_2701:
	mov	2774,r13		! source line 2774
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2706 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2706  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2775,r13		! source line 2775
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2776,r13		! source line 2776
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2707 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2707  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2777,r13		! source line 2777
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0SE",r10
!   _temp_2708 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2708 [i ] into _temp_2709
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
_Label_2702:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2700
! END FOR
_Label_2703:
! CALL STATEMENT...
!   _temp_2710 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2710  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2780,r13		! source line 2780
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2781,r13		! source line 2781
	mov	"\0\0SE",r10
!   _temp_2711 = _function_237_printFCB
	set	_function_237_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2712 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2711  sizeInBytes=4
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
	mov	2782,r13		! source line 2782
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2713 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2713  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2783,r13		! source line 2783
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2784,r13		! source line 2784
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2718 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2719 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2718  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2714:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2719 then goto _Label_2717		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2717
_Label_2715:
	mov	2784,r13		! source line 2784
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2720 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2720  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2785,r13		! source line 2785
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2786,r13		! source line 2786
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2721 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2721  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2787,r13		! source line 2787
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2723 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2723 [i ] into _temp_2724
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
!   _temp_2722 = _temp_2724		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2722  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2788,r13		! source line 2788
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2725 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2725  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2789,r13		! source line 2789
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2790,r13		! source line 2790
	mov	"\0\0SE",r10
!   _temp_2726 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2726 [i ] into _temp_2727
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
_Label_2716:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2714
! END FOR
_Label_2717:
! CALL STATEMENT...
!   _temp_2728 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2728  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2792,r13		! source line 2792
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0SE",r10
!   _temp_2729 = _function_236_printOpen
	set	_function_236_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2730 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2729  sizeInBytes=4
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
	mov	2794,r13		! source line 2794
	mov	"\0\0SE",r10
!   _temp_2731 = &fileManagerLock
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
	mov	2794,r13		! source line 2794
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
	.word	_Label_2732
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2733
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2734
	.word	-12
	.word	4
	.word	_Label_2735
	.word	-16
	.word	4
	.word	_Label_2736
	.word	-20
	.word	4
	.word	_Label_2737
	.word	-24
	.word	4
	.word	_Label_2738
	.word	-28
	.word	4
	.word	_Label_2739
	.word	-32
	.word	4
	.word	_Label_2740
	.word	-36
	.word	4
	.word	_Label_2741
	.word	-40
	.word	4
	.word	_Label_2742
	.word	-44
	.word	4
	.word	_Label_2743
	.word	-48
	.word	4
	.word	_Label_2744
	.word	-52
	.word	4
	.word	_Label_2745
	.word	-56
	.word	4
	.word	_Label_2746
	.word	-60
	.word	4
	.word	_Label_2747
	.word	-64
	.word	4
	.word	_Label_2748
	.word	-68
	.word	4
	.word	_Label_2749
	.word	-72
	.word	4
	.word	_Label_2750
	.word	-76
	.word	4
	.word	_Label_2751
	.word	-80
	.word	4
	.word	_Label_2752
	.word	-84
	.word	4
	.word	_Label_2753
	.word	-88
	.word	4
	.word	_Label_2754
	.word	-92
	.word	4
	.word	_Label_2755
	.word	-96
	.word	4
	.word	_Label_2756
	.word	-100
	.word	4
	.word	_Label_2757
	.word	-104
	.word	4
	.word	_Label_2758
	.word	-108
	.word	4
	.word	_Label_2759
	.word	-112
	.word	4
	.word	_Label_2760
	.word	-116
	.word	4
	.word	0
_Label_2732:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2733:
	.ascii	"Pself\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2760:
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
_Label_3529:
	push	r0
	sub	r1,1,r1
	bne	_Label_3529
	mov	2799,r13		! source line 2799
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0AS",r10
	mov	2815,r13		! source line 2815
	mov	"\0\0SE",r10
!   _temp_2761 = &_P_Kernel_fileManager
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
	mov	2816,r13		! source line 2816
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2762
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2762
	jmp	_Label_2763
_Label_2762:
! THEN...
	mov	2817,r13		! source line 2817
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2817,r13		! source line 2817
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2763:
! SEND STATEMENT...
	mov	2821,r13		! source line 2821
	mov	"\0\0SE",r10
!   _temp_2764 = &fileManagerLock
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
	mov	2822,r13		! source line 2822
	mov	"\0\0WH",r10
_Label_2765:
	mov	2822,r13		! source line 2822
	mov	"\0\0SE",r10
!   _temp_2768 = &openFileFreeList
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
!   if result==true then goto _Label_2766 else goto _Label_2767
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2767
	jmp	_Label_2766
_Label_2766:
	mov	2822,r13		! source line 2822
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2823,r13		! source line 2823
	mov	"\0\0SE",r10
!   _temp_2769 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2770 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2769  sizeInBytes=4
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
	jmp	_Label_2765
_Label_2767:
! ASSIGNMENT STATEMENT...
	mov	2825,r13		! source line 2825
	mov	"\0\0AS",r10
	mov	2825,r13		! source line 2825
	mov	"\0\0SE",r10
!   _temp_2771 = &openFileFreeList
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
	mov	2828,r13		! source line 2828
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2772 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2772 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2773 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2773 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2774 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2774 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2834,r13		! source line 2834
	mov	"\0\0SE",r10
!   _temp_2775 = &fileManagerLock
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
	mov	2835,r13		! source line 2835
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
	.word	_Label_2776
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2777
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2778
	.word	12
	.word	4
	.word	_Label_2779
	.word	-12
	.word	4
	.word	_Label_2780
	.word	-16
	.word	4
	.word	_Label_2781
	.word	-20
	.word	4
	.word	_Label_2782
	.word	-24
	.word	4
	.word	_Label_2783
	.word	-28
	.word	4
	.word	_Label_2784
	.word	-32
	.word	4
	.word	_Label_2785
	.word	-36
	.word	4
	.word	_Label_2786
	.word	-40
	.word	4
	.word	_Label_2787
	.word	-44
	.word	4
	.word	_Label_2788
	.word	-48
	.word	4
	.word	_Label_2789
	.word	-52
	.word	4
	.word	_Label_2790
	.word	-56
	.word	4
	.word	0
_Label_2776:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2777:
	.ascii	"Pself\0"
	.align
_Label_2778:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2789:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2790:
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
_Label_3530:
	push	r0
	sub	r1,1,r1
	bne	_Label_3530
	mov	2840,r13		! source line 2840
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2868,r13		! source line 2868
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
	mov	2869,r13		! source line 2869
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2870,r13		! source line 2870
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2792		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2792
!	jmp	_Label_2791
_Label_2791:
! THEN...
	mov	2871,r13		! source line 2871
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2793 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2793  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2871,r13		! source line 2871
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2792:
! ASSIGNMENT STATEMENT...
	mov	2875,r13		! source line 2875
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
	mov	2876,r13		! source line 2876
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2877,r13		! source line 2877
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
	mov	2878,r13		! source line 2878
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2881,r13		! source line 2881
	mov	"\0\0WH",r10
_Label_2794:
!   if numFiles <= 0 then goto _Label_2796		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2796
!	jmp	_Label_2795
_Label_2795:
	mov	2881,r13		! source line 2881
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2797 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2797  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2882,r13		! source line 2882
	mov	"\0\0CA",r10
	call	_function_238_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2883,r13		! source line 2883
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2798 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2798  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2884,r13		! source line 2884
	mov	"\0\0CA",r10
	call	_function_238_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2885,r13		! source line 2885
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2799 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2799  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2886,r13		! source line 2886
	mov	"\0\0CA",r10
	call	_function_238_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2887,r13		! source line 2887
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2888,r13		! source line 2888
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2803 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2803 then goto _Label_2801		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2801
!	jmp	_Label_2802
_Label_2802:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2805
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
!   _temp_2804 = _temp_2805		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2804  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2889,r13		! source line 2889
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2800 else goto _Label_2801
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2801
	jmp	_Label_2800
_Label_2800:
! THEN...
	mov	2890,r13		! source line 2890
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2890,r13		! source line 2890
	mov	"\0\0BR",r10
	jmp	_Label_2796
! END IF...
_Label_2801:
! ASSIGNMENT STATEMENT...
	mov	2892,r13		! source line 2892
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2893,r13		! source line 2893
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2794
_Label_2796:
! IF STATEMENT...
	mov	2897,r13		! source line 2897
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2807		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2807
!	jmp	_Label_2806
_Label_2806:
! THEN...
	mov	2898,r13		! source line 2898
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2898,r13		! source line 2898
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2807:
! SEND STATEMENT...
	mov	2901,r13		! source line 2901
	mov	"\0\0SE",r10
!   _temp_2808 = &fileManagerLock
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
	mov	2903,r13		! source line 2903
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2813 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2814 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2813  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2809:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2814 then goto _Label_2812		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2812
_Label_2810:
	mov	2903,r13		! source line 2903
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2904,r13		! source line 2904
	mov	"\0\0AS",r10
!   _temp_2815 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2815 [i ] into _temp_2816
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
!   fcb = _temp_2816		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2905,r13		! source line 2905
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2820 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2819 = *_temp_2820  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2819 != start then goto _Label_2818		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2818
!	jmp	_Label_2817
_Label_2817:
! THEN...
	mov	2906,r13		! source line 2906
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2906,r13		! source line 2906
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2821 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2824 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2823 = *_temp_2824  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2822 = _temp_2823 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2821 = _temp_2822  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2907,r13		! source line 2907
	mov	"\0\0SE",r10
!   _temp_2825 = &fileManagerLock
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
	mov	2908,r13		! source line 2908
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2818:
!   Increment the FOR-LOOP index variable and jump back
_Label_2811:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2809
! END FOR
_Label_2812:
! WHILE STATEMENT...
	mov	2913,r13		! source line 2913
	mov	"\0\0WH",r10
_Label_2826:
	mov	2913,r13		! source line 2913
	mov	"\0\0SE",r10
!   _temp_2829 = &fcbFreeList
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
!   if result==true then goto _Label_2827 else goto _Label_2828
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2828
	jmp	_Label_2827
_Label_2827:
	mov	2913,r13		! source line 2913
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2914,r13		! source line 2914
	mov	"\0\0SE",r10
!   _temp_2830 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2831 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2830  sizeInBytes=4
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
	jmp	_Label_2826
_Label_2828:
! ASSIGNMENT STATEMENT...
	mov	2916,r13		! source line 2916
	mov	"\0\0AS",r10
	mov	2916,r13		! source line 2916
	mov	"\0\0SE",r10
!   _temp_2832 = &fcbFreeList
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
	mov	2919,r13		! source line 2919
	mov	"\0\0SE",r10
!   _temp_2833 = &fileManagerLock
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
	mov	2922,r13		! source line 2922
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2834 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2834 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2923,r13		! source line 2923
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2835 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2835 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2924,r13		! source line 2924
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2836 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2836 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2925,r13		! source line 2925
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2841 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2840 = *_temp_2841  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2840 < 0 then goto _Label_2839		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2839
	jmp	_Label_2837
_Label_2839:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2842 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2842 ) then goto _Label_2838		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2838
!	jmp	_Label_2837
_Label_2837:
! THEN...
	mov	2926,r13		! source line 2926
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2843 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2843  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2926,r13		! source line 2926
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2838:
! RETURN STATEMENT...
	mov	2928,r13		! source line 2928
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
	.word	_Label_2844
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2845
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2846
	.word	12
	.word	4
	.word	_Label_2847
	.word	-12
	.word	4
	.word	_Label_2848
	.word	-16
	.word	4
	.word	_Label_2849
	.word	-20
	.word	4
	.word	_Label_2850
	.word	-24
	.word	4
	.word	_Label_2851
	.word	-28
	.word	4
	.word	_Label_2852
	.word	-32
	.word	4
	.word	_Label_2853
	.word	-36
	.word	4
	.word	_Label_2854
	.word	-40
	.word	4
	.word	_Label_2855
	.word	-44
	.word	4
	.word	_Label_2856
	.word	-48
	.word	4
	.word	_Label_2857
	.word	-52
	.word	4
	.word	_Label_2858
	.word	-56
	.word	4
	.word	_Label_2859
	.word	-60
	.word	4
	.word	_Label_2860
	.word	-64
	.word	4
	.word	_Label_2861
	.word	-68
	.word	4
	.word	_Label_2862
	.word	-72
	.word	4
	.word	_Label_2863
	.word	-76
	.word	4
	.word	_Label_2864
	.word	-80
	.word	4
	.word	_Label_2865
	.word	-84
	.word	4
	.word	_Label_2866
	.word	-88
	.word	4
	.word	_Label_2867
	.word	-92
	.word	4
	.word	_Label_2868
	.word	-96
	.word	4
	.word	_Label_2869
	.word	-100
	.word	4
	.word	_Label_2870
	.word	-104
	.word	4
	.word	_Label_2871
	.word	-108
	.word	4
	.word	_Label_2872
	.word	-112
	.word	4
	.word	_Label_2873
	.word	-116
	.word	4
	.word	_Label_2874
	.word	-120
	.word	4
	.word	_Label_2875
	.word	-124
	.word	4
	.word	_Label_2876
	.word	-128
	.word	4
	.word	_Label_2877
	.word	-132
	.word	4
	.word	_Label_2878
	.word	-136
	.word	4
	.word	_Label_2879
	.word	-140
	.word	4
	.word	_Label_2880
	.word	-144
	.word	4
	.word	_Label_2881
	.word	-148
	.word	4
	.word	_Label_2882
	.word	-152
	.word	4
	.word	_Label_2883
	.word	-156
	.word	4
	.word	_Label_2884
	.word	-160
	.word	4
	.word	0
_Label_2844:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2845:
	.ascii	"Pself\0"
	.align
_Label_2846:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2816\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
_Label_2868:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2869:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2870:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2798\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2878:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2879:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2880:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2881:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2882:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2883:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2884:
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
_Label_3531:
	push	r0
	sub	r1,1,r1
	bne	_Label_3531
	mov	2941,r13		! source line 2941
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2943,r13		! source line 2943
	mov	"\0\0IF",r10
!   _temp_2887 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2887 then goto _Label_2886		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2886
!	jmp	_Label_2885
_Label_2885:
! THEN...
	mov	2944,r13		! source line 2944
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2944,r13		! source line 2944
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2886:
! SEND STATEMENT...
	mov	2946,r13		! source line 2946
	mov	"\0\0SE",r10
!   _temp_2888 = &fileManagerLock
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
	mov	2947,r13		! source line 2947
	mov	"\0\0SE",r10
!   _temp_2889 = &_P_Kernel_fileManager
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
	mov	2948,r13		! source line 2948
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2890 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2890  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2949,r13		! source line 2949
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2891 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2894 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2893 = *_temp_2894  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2892 = _temp_2893 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2891 = _temp_2892  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2950,r13		! source line 2950
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2898 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2897 = *_temp_2898  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2897 > 0 then goto _Label_2896		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2896
!	jmp	_Label_2895
_Label_2895:
! THEN...
	mov	2951,r13		! source line 2951
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2951,r13		! source line 2951
	mov	"\0\0SE",r10
!   _temp_2899 = &openFileFreeList
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
	mov	2952,r13		! source line 2952
	mov	"\0\0SE",r10
!   _temp_2900 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2901 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2900  sizeInBytes=4
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
	mov	2953,r13		! source line 2953
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2902 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2905 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2904 = *_temp_2905  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2903 = _temp_2904 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2902 = _temp_2903  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2954,r13		! source line 2954
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2909 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2908 = *_temp_2909  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2908 > 0 then goto _Label_2907		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2907
!	jmp	_Label_2906
_Label_2906:
! THEN...
	mov	2955,r13		! source line 2955
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2955,r13		! source line 2955
	mov	"\0\0SE",r10
!   _temp_2910 = &fcbFreeList
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
	mov	2956,r13		! source line 2956
	mov	"\0\0SE",r10
!   _temp_2911 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2912 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2911  sizeInBytes=4
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
_Label_2907:
! END IF...
_Label_2896:
! SEND STATEMENT...
	mov	2959,r13		! source line 2959
	mov	"\0\0SE",r10
!   _temp_2913 = &fileManagerLock
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
	mov	2959,r13		! source line 2959
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
	.word	_Label_2914
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2915
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2916
	.word	12
	.word	4
	.word	_Label_2917
	.word	-12
	.word	4
	.word	_Label_2918
	.word	-16
	.word	4
	.word	_Label_2919
	.word	-20
	.word	4
	.word	_Label_2920
	.word	-24
	.word	4
	.word	_Label_2921
	.word	-28
	.word	4
	.word	_Label_2922
	.word	-32
	.word	4
	.word	_Label_2923
	.word	-36
	.word	4
	.word	_Label_2924
	.word	-40
	.word	4
	.word	_Label_2925
	.word	-44
	.word	4
	.word	_Label_2926
	.word	-48
	.word	4
	.word	_Label_2927
	.word	-52
	.word	4
	.word	_Label_2928
	.word	-56
	.word	4
	.word	_Label_2929
	.word	-60
	.word	4
	.word	_Label_2930
	.word	-64
	.word	4
	.word	_Label_2931
	.word	-68
	.word	4
	.word	_Label_2932
	.word	-72
	.word	4
	.word	_Label_2933
	.word	-76
	.word	4
	.word	_Label_2934
	.word	-80
	.word	4
	.word	_Label_2935
	.word	-84
	.word	4
	.word	_Label_2936
	.word	-88
	.word	4
	.word	_Label_2937
	.word	-92
	.word	4
	.word	_Label_2938
	.word	-96
	.word	4
	.word	_Label_2939
	.word	-100
	.word	4
	.word	_Label_2940
	.word	-104
	.word	4
	.word	0
_Label_2914:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2915:
	.ascii	"Pself\0"
	.align
_Label_2916:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2919:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2940:
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
_Label_3532:
	push	r0
	sub	r1,1,r1
	bne	_Label_3532
	mov	2964,r13		! source line 2964
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2969,r13		! source line 2969
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2944 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2943 = *_temp_2944  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2943) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2945 = _temp_2943 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2945 ) then goto _Label_2942		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2942
!	jmp	_Label_2941
_Label_2941:
! THEN...
	mov	2970,r13		! source line 2970
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2970,r13		! source line 2970
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2950 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2949 = *_temp_2950  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2949) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2951 = _temp_2949 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2948 = *_temp_2951  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2948 >= 0 then goto _Label_2947		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2947
!	jmp	_Label_2946
_Label_2946:
! THEN...
	mov	2971,r13		! source line 2971
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2952 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2952  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2971,r13		! source line 2971
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2947:
! ASSIGNMENT STATEMENT...
	mov	2973,r13		! source line 2973
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2954 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2953 = *_temp_2954  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2953) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2955 = _temp_2953 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2955 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2974,r13		! source line 2974
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2959 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2958 = *_temp_2959  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2958) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2960 = _temp_2958 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2957 = *_temp_2960  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2963 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2962 = *_temp_2963  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2962) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2964 = _temp_2962 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2961 = *_temp_2964  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2956 = _temp_2957 + _temp_2961		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2967 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2966 = *_temp_2967  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2966) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2968 = _temp_2966 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2965 = *_temp_2968  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2969 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2956  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2965  sizeInBytes=4
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
_Label_2942:
! RETURN STATEMENT...
	mov	2969,r13		! source line 2969
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
	.word	_Label_2970
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2971
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2972
	.word	12
	.word	4
	.word	_Label_2973
	.word	-12
	.word	4
	.word	_Label_2974
	.word	-16
	.word	4
	.word	_Label_2975
	.word	-20
	.word	4
	.word	_Label_2976
	.word	-24
	.word	4
	.word	_Label_2977
	.word	-28
	.word	4
	.word	_Label_2978
	.word	-32
	.word	4
	.word	_Label_2979
	.word	-36
	.word	4
	.word	_Label_2980
	.word	-40
	.word	4
	.word	_Label_2981
	.word	-44
	.word	4
	.word	_Label_2982
	.word	-48
	.word	4
	.word	_Label_2983
	.word	-52
	.word	4
	.word	_Label_2984
	.word	-56
	.word	4
	.word	_Label_2985
	.word	-60
	.word	4
	.word	_Label_2986
	.word	-64
	.word	4
	.word	_Label_2987
	.word	-68
	.word	4
	.word	_Label_2988
	.word	-72
	.word	4
	.word	_Label_2989
	.word	-76
	.word	4
	.word	_Label_2990
	.word	-80
	.word	4
	.word	_Label_2991
	.word	-84
	.word	4
	.word	_Label_2992
	.word	-88
	.word	4
	.word	_Label_2993
	.word	-92
	.word	4
	.word	_Label_2994
	.word	-96
	.word	4
	.word	_Label_2995
	.word	-100
	.word	4
	.word	_Label_2996
	.word	-104
	.word	4
	.word	_Label_2997
	.word	-108
	.word	4
	.word	0
_Label_2970:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2971:
	.ascii	"Pself\0"
	.align
_Label_2972:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2968\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2967\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2966\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2962\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2961\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2960\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2959\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2958\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2957\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2956\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2955\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2954\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2948\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2943\0"
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
_Label_3533:
	push	r0
	sub	r1,1,r1
	bne	_Label_3533
	mov	2983,r13		! source line 2983
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2998,r13		! source line 2998
	mov	"\0\0SE",r10
!   _temp_2998 = &fileManagerLock
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
	mov	2999,r13		! source line 2999
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3004		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3004
!   _temp_3003 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3005
_Label_3004:
!   _temp_3003 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3005:
!   if _temp_3003 then goto _Label_3002 else goto _Label_2999
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2999
	jmp	_Label_3002
_Label_3002:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3008 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3007 = *_temp_3008  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3007 == 0 then goto _Label_3009		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3009
!   _temp_3006 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3010
_Label_3009:
!   _temp_3006 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3010:
!   if _temp_3006 then goto _Label_3001 else goto _Label_2999
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2999
	jmp	_Label_3001
_Label_3001:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3013 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3012 = *_temp_3013  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3012) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3014 = _temp_3012 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3011 = *_temp_3014  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3011 >= 0 then goto _Label_3000		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3000
!	jmp	_Label_2999
_Label_2999:
! THEN...
	mov	3000,r13		! source line 3000
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3015 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3015  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3000,r13		! source line 3000
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3000:
! ASSIGNMENT STATEMENT...
	mov	3002,r13		! source line 3002
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3016 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3016  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	3003,r13		! source line 3003
	mov	"\0\0WH",r10
_Label_3017:
!   if numBytes <= 0 then goto _Label_3019		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3019
!	jmp	_Label_3018
_Label_3018:
	mov	3003,r13		! source line 3003
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3012,r13		! source line 3012
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
	mov	3013,r13		! source line 3013
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
	mov	3017,r13		! source line 3017
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3023 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3022 = *_temp_3023  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3022 == sector then goto _Label_3021		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3021
!	jmp	_Label_3020
_Label_3020:
! THEN...
	mov	3018,r13		! source line 3018
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3018,r13		! source line 3018
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3024) then goto _runtimeErrorNullPointer
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
	mov	3020,r13		! source line 3020
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3027 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3026 = *_temp_3027  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3025 = sector + _temp_3026		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3029 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3028 = *_temp_3029  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3030 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3025  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3028  sizeInBytes=4
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
	mov	3023,r13		! source line 3023
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3031 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3031 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3024,r13		! source line 3024
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3032 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3032 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3021:
! ASSIGNMENT STATEMENT...
	mov	3026,r13		! source line 3026
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3034 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3033 = *_temp_3034  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3033 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	3027,r13		! source line 3027
	mov	"\0\0AS",r10
!   _temp_3035 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3035  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	3027,r13		! source line 3027
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
	mov	3031,r13		! source line 3031
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	3032,r13		! source line 3032
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	3033,r13		! source line 3033
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	3034,r13		! source line 3034
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3017
_Label_3019:
! SEND STATEMENT...
	mov	3041,r13		! source line 3041
	mov	"\0\0SE",r10
!   _temp_3036 = &fileManagerLock
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
	mov	3042,r13		! source line 3042
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
	.word	_Label_3037
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3038
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3039
	.word	12
	.word	4
	.word	_Label_3040
	.word	16
	.word	4
	.word	_Label_3041
	.word	20
	.word	4
	.word	_Label_3042
	.word	24
	.word	4
	.word	_Label_3043
	.word	-16
	.word	4
	.word	_Label_3044
	.word	-20
	.word	4
	.word	_Label_3045
	.word	-24
	.word	4
	.word	_Label_3046
	.word	-28
	.word	4
	.word	_Label_3047
	.word	-32
	.word	4
	.word	_Label_3048
	.word	-36
	.word	4
	.word	_Label_3049
	.word	-40
	.word	4
	.word	_Label_3050
	.word	-44
	.word	4
	.word	_Label_3051
	.word	-48
	.word	4
	.word	_Label_3052
	.word	-52
	.word	4
	.word	_Label_3053
	.word	-56
	.word	4
	.word	_Label_3054
	.word	-60
	.word	4
	.word	_Label_3055
	.word	-64
	.word	4
	.word	_Label_3056
	.word	-68
	.word	4
	.word	_Label_3057
	.word	-72
	.word	4
	.word	_Label_3058
	.word	-76
	.word	4
	.word	_Label_3059
	.word	-80
	.word	4
	.word	_Label_3060
	.word	-84
	.word	4
	.word	_Label_3061
	.word	-88
	.word	4
	.word	_Label_3062
	.word	-92
	.word	4
	.word	_Label_3063
	.word	-96
	.word	4
	.word	_Label_3064
	.word	-100
	.word	4
	.word	_Label_3065
	.word	-104
	.word	4
	.word	_Label_3066
	.word	-9
	.word	1
	.word	_Label_3067
	.word	-10
	.word	1
	.word	_Label_3068
	.word	-108
	.word	4
	.word	_Label_3069
	.word	-112
	.word	4
	.word	_Label_3070
	.word	-116
	.word	4
	.word	_Label_3071
	.word	-120
	.word	4
	.word	_Label_3072
	.word	-124
	.word	4
	.word	_Label_3073
	.word	-128
	.word	4
	.word	0
_Label_3037:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3038:
	.ascii	"Pself\0"
	.align
_Label_3039:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3040:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3041:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3042:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3043:
	.byte	'?'
	.ascii	"_temp_3036\0"
	.align
_Label_3044:
	.byte	'?'
	.ascii	"_temp_3035\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_3034\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_3033\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_3032\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_3030\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_3029\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_3028\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3053:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_3025\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_3024\0"
	.align
_Label_3056:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3057:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3058:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3059:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
_Label_3060:
	.byte	'?'
	.ascii	"_temp_3014\0"
	.align
_Label_3061:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3062:
	.byte	'?'
	.ascii	"_temp_3012\0"
	.align
_Label_3063:
	.byte	'?'
	.ascii	"_temp_3011\0"
	.align
_Label_3064:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3066:
	.byte	'C'
	.ascii	"_temp_3006\0"
	.align
_Label_3067:
	.byte	'C'
	.ascii	"_temp_3003\0"
	.align
_Label_3068:
	.byte	'?'
	.ascii	"_temp_2998\0"
	.align
_Label_3069:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3070:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3071:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3072:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3073:
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
_Label_3534:
	push	r0
	sub	r1,1,r1
	bne	_Label_3534
	mov	3047,r13		! source line 3047
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3063,r13		! source line 3063
	mov	"\0\0SE",r10
!   _temp_3074 = &fileManagerLock
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
	mov	3064,r13		! source line 3064
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3080		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3080
!   _temp_3079 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3081
_Label_3080:
!   _temp_3079 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3081:
!   if _temp_3079 then goto _Label_3078 else goto _Label_3075
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3075
	jmp	_Label_3078
_Label_3078:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3084 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3083 = *_temp_3084  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3083 == 0 then goto _Label_3085		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3085
!   _temp_3082 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3086
_Label_3085:
!   _temp_3082 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3086:
!   if _temp_3082 then goto _Label_3077 else goto _Label_3075
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3075
	jmp	_Label_3077
_Label_3077:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3089 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3088 = *_temp_3089  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3088) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3090 = _temp_3088 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3087 = *_temp_3090  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3087 >= 0 then goto _Label_3076		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3076
!	jmp	_Label_3075
_Label_3075:
! THEN...
	mov	3065,r13		! source line 3065
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3091 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3091  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3065,r13		! source line 3065
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3076:
! ASSIGNMENT STATEMENT...
	mov	3067,r13		! source line 3067
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3092 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3092  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	3068,r13		! source line 3068
	mov	"\0\0WH",r10
_Label_3093:
!   if numBytes <= 0 then goto _Label_3095		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3095
!	jmp	_Label_3094
_Label_3094:
	mov	3068,r13		! source line 3068
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3077,r13		! source line 3077
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
	mov	3078,r13		! source line 3078
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
	mov	3082,r13		! source line 3082
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3099 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3098 = *_temp_3099  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3098 == sector then goto _Label_3097		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3097
!	jmp	_Label_3096
_Label_3096:
! THEN...
	mov	3084,r13		! source line 3084
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3084,r13		! source line 3084
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3100) then goto _runtimeErrorNullPointer
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
_Label_3097:
! ASSIGNMENT STATEMENT...
	mov	3086,r13		! source line 3086
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3102 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3101 = *_temp_3102  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3101 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	3087,r13		! source line 3087
	mov	"\0\0AS",r10
!   _temp_3103 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3103  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	3087,r13		! source line 3087
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	3088,r13		! source line 3088
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3107 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3106 = *_temp_3107  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3106 != sector then goto _Label_3105		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3105
!	jmp	_Label_3104
_Label_3104:
	jmp	_Label_3108
_Label_3105:
! ELSE...
	mov	3090,r13		! source line 3090
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	3090,r13		! source line 3090
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3111
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3111
	jmp	_Label_3110
_Label_3111:
!   if bytesToMove != 8192 then goto _Label_3110		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3110
!	jmp	_Label_3109
_Label_3109:
	jmp	_Label_3112
_Label_3110:
! ELSE...
	mov	3094,r13		! source line 3094
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	3094,r13		! source line 3094
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3115 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3114 = *_temp_3115  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3113 = sector + _temp_3114		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3117 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3116 = *_temp_3117  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3118 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3113  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3116  sizeInBytes=4
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
_Label_3112:
! END IF...
_Label_3108:
! ASSIGNMENT STATEMENT...
	mov	3098,r13		! source line 3098
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3119 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3119 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3099,r13		! source line 3099
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3120 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3120 = 1  (sizeInBytes=1)
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
	mov	3103,r13		! source line 3103
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	3104,r13		! source line 3104
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	3105,r13		! source line 3105
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	3106,r13		! source line 3106
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3093
_Label_3095:
! SEND STATEMENT...
	mov	3113,r13		! source line 3113
	mov	"\0\0SE",r10
!   _temp_3121 = &fileManagerLock
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
	mov	3115,r13		! source line 3115
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
	.word	_Label_3122
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3123
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3124
	.word	12
	.word	4
	.word	_Label_3125
	.word	16
	.word	4
	.word	_Label_3126
	.word	20
	.word	4
	.word	_Label_3127
	.word	24
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
	.word	-44
	.word	4
	.word	_Label_3136
	.word	-48
	.word	4
	.word	_Label_3137
	.word	-52
	.word	4
	.word	_Label_3138
	.word	-56
	.word	4
	.word	_Label_3139
	.word	-60
	.word	4
	.word	_Label_3140
	.word	-64
	.word	4
	.word	_Label_3141
	.word	-68
	.word	4
	.word	_Label_3142
	.word	-72
	.word	4
	.word	_Label_3143
	.word	-76
	.word	4
	.word	_Label_3144
	.word	-80
	.word	4
	.word	_Label_3145
	.word	-84
	.word	4
	.word	_Label_3146
	.word	-88
	.word	4
	.word	_Label_3147
	.word	-92
	.word	4
	.word	_Label_3148
	.word	-96
	.word	4
	.word	_Label_3149
	.word	-100
	.word	4
	.word	_Label_3150
	.word	-104
	.word	4
	.word	_Label_3151
	.word	-108
	.word	4
	.word	_Label_3152
	.word	-112
	.word	4
	.word	_Label_3153
	.word	-9
	.word	1
	.word	_Label_3154
	.word	-10
	.word	1
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
	.word	0
_Label_3122:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3123:
	.ascii	"Pself\0"
	.align
_Label_3124:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3125:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3126:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3127:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3128:
	.byte	'?'
	.ascii	"_temp_3121\0"
	.align
_Label_3129:
	.byte	'?'
	.ascii	"_temp_3120\0"
	.align
_Label_3130:
	.byte	'?'
	.ascii	"_temp_3119\0"
	.align
_Label_3131:
	.byte	'?'
	.ascii	"_temp_3118\0"
	.align
_Label_3132:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3133:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3134:
	.byte	'?'
	.ascii	"_temp_3115\0"
	.align
_Label_3135:
	.byte	'?'
	.ascii	"_temp_3114\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3113\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3107\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3106\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3103\0"
	.align
_Label_3140:
	.byte	'?'
	.ascii	"_temp_3102\0"
	.align
_Label_3141:
	.byte	'?'
	.ascii	"_temp_3101\0"
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
	.byte	'?'
	.ascii	"_temp_3092\0"
	.align
_Label_3146:
	.byte	'?'
	.ascii	"_temp_3091\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3090\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3089\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3084\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3083\0"
	.align
_Label_3153:
	.byte	'C'
	.ascii	"_temp_3082\0"
	.align
_Label_3154:
	.byte	'C'
	.ascii	"_temp_3079\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3156:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3157:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3158:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3159:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3160:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3161
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3161:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3162
	.word	_sourceFileName
	.word	409		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3162:
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
_Label_3535:
	push	r0
	sub	r1,1,r1
	bne	_Label_3535
	mov	3151,r13		! source line 3151
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3152,r13		! source line 3152
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	3153,r13		! source line 3153
	mov	"\0\0AS",r10
	mov	3153,r13		! source line 3153
	mov	"\0\0SE",r10
!   _temp_3163 = &_P_Kernel_frameManager
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
	mov	3154,r13		! source line 3154
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	3155,r13		! source line 3155
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	3156,r13		! source line 3156
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	3156,r13		! source line 3156
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
	.word	_Label_3164
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3165
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3166
	.word	-12
	.word	4
	.word	0
_Label_3164:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3165:
	.ascii	"Pself\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3163\0"
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
_Label_3536:
	push	r0
	sub	r1,1,r1
	bne	_Label_3536
	mov	3161,r13		! source line 3161
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3167 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3167  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3162,r13		! source line 3162
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3163,r13		! source line 3163
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3168 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3168  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3164,r13		! source line 3164
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3165,r13		! source line 3165
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3169 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3169  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3166,r13		! source line 3166
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3167,r13		! source line 3167
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3170 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3170  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3168,r13		! source line 3168
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3169,r13		! source line 3169
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3171 = _StringConst_214
	set	_StringConst_214,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3171  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3170,r13		! source line 3170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3171,r13		! source line 3171
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3172 = _StringConst_215
	set	_StringConst_215,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3172  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3172,r13		! source line 3172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3173,r13		! source line 3173
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	3174,r13		! source line 3174
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	3174,r13		! source line 3174
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
	.word	_Label_3173
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3174
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3175
	.word	-12
	.word	4
	.word	_Label_3176
	.word	-16
	.word	4
	.word	_Label_3177
	.word	-20
	.word	4
	.word	_Label_3178
	.word	-24
	.word	4
	.word	_Label_3179
	.word	-28
	.word	4
	.word	_Label_3180
	.word	-32
	.word	4
	.word	0
_Label_3173:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3174:
	.ascii	"Pself\0"
	.align
_Label_3175:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3176:
	.byte	'?'
	.ascii	"_temp_3171\0"
	.align
_Label_3177:
	.byte	'?'
	.ascii	"_temp_3170\0"
	.align
_Label_3178:
	.byte	'?'
	.ascii	"_temp_3169\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3168\0"
	.align
_Label_3180:
	.byte	'?'
	.ascii	"_temp_3167\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3181
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3181:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3182
	.word	_sourceFileName
	.word	426		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3182:
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
_Label_3537:
	push	r0
	sub	r1,1,r1
	bne	_Label_3537
	mov	3185,r13		! source line 3185
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3183 = _StringConst_216
	set	_StringConst_216,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3183  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3186,r13		! source line 3186
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3187,r13		! source line 3187
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3184 = _StringConst_217
	set	_StringConst_217,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3184  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3188,r13		! source line 3188
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	3189,r13		! source line 3189
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3186		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3186
!	jmp	_Label_3185
_Label_3185:
! THEN...
	mov	3190,r13		! source line 3190
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3190,r13		! source line 3190
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
	jmp	_Label_3187
_Label_3186:
! ELSE...
	mov	3192,r13		! source line 3192
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3188 = _StringConst_218
	set	_StringConst_218,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3188  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3192,r13		! source line 3192
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3187:
! RETURN STATEMENT...
	mov	3189,r13		! source line 3189
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
	.word	_Label_3189
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3190
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3191
	.word	-12
	.word	4
	.word	_Label_3192
	.word	-16
	.word	4
	.word	_Label_3193
	.word	-20
	.word	4
	.word	0
_Label_3189:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3190:
	.ascii	"Pself\0"
	.align
_Label_3191:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3192:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3193:
	.byte	'?'
	.ascii	"_temp_3183\0"
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
_Label_3538:
	push	r0
	sub	r1,1,r1
	bne	_Label_3538
	mov	3198,r13		! source line 3198
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3208,r13		! source line 3208
	mov	"\0\0SE",r10
!   _temp_3194 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3195 = _temp_3194 + 4
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
	mov	3209,r13		! source line 3209
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3210,r13		! source line 3210
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
	mov	3211,r13		! source line 3211
	mov	"\0\0SE",r10
!   _temp_3196 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3197 = _temp_3196 + 4
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
	mov	3212,r13		! source line 3212
	mov	"\0\0RE",r10
	mov	3212,r13		! source line 3212
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3200 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3199  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3198  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3198  (sizeInBytes=1)
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
	.word	_Label_3201
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3202
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3203
	.word	12
	.word	4
	.word	_Label_3204
	.word	16
	.word	4
	.word	_Label_3205
	.word	-16
	.word	4
	.word	_Label_3206
	.word	-20
	.word	4
	.word	_Label_3207
	.word	-9
	.word	1
	.word	_Label_3208
	.word	-24
	.word	4
	.word	_Label_3209
	.word	-28
	.word	4
	.word	_Label_3210
	.word	-32
	.word	4
	.word	_Label_3211
	.word	-36
	.word	4
	.word	_Label_3212
	.word	-40
	.word	4
	.word	0
_Label_3201:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3202:
	.ascii	"Pself\0"
	.align
_Label_3203:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3204:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3205:
	.byte	'?'
	.ascii	"_temp_3200\0"
	.align
_Label_3206:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3207:
	.byte	'C'
	.ascii	"_temp_3198\0"
	.align
_Label_3208:
	.byte	'?'
	.ascii	"_temp_3197\0"
	.align
_Label_3209:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3210:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3211:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3212:
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
_Label_3539:
	push	r0
	sub	r1,1,r1
	bne	_Label_3539
	mov	3217,r13		! source line 3217
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3222,r13		! source line 3222
	mov	"\0\0IF",r10
	mov	3222,r13		! source line 3222
	mov	"\0\0SE",r10
!   _temp_3216 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3217) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3216  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3215  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3215 then goto _Label_3214 else goto _Label_3213
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3213
	jmp	_Label_3214
_Label_3213:
! THEN...
	mov	3223,r13		! source line 3223
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3218 = _StringConst_219
	set	_StringConst_219,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3218  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3223,r13		! source line 3223
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3214:
! RETURN STATEMENT...
	mov	3225,r13		! source line 3225
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
	.word	_Label_3219
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3220
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3221
	.word	-16
	.word	4
	.word	_Label_3222
	.word	-20
	.word	4
	.word	_Label_3223
	.word	-24
	.word	4
	.word	_Label_3224
	.word	-9
	.word	1
	.word	_Label_3225
	.word	-28
	.word	4
	.word	0
_Label_3219:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3220:
	.ascii	"Pself\0"
	.align
_Label_3221:
	.byte	'?'
	.ascii	"_temp_3218\0"
	.align
_Label_3222:
	.byte	'?'
	.ascii	"_temp_3217\0"
	.align
_Label_3223:
	.byte	'?'
	.ascii	"_temp_3216\0"
	.align
_Label_3224:
	.byte	'C'
	.ascii	"_temp_3215\0"
	.align
_Label_3225:
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
_Label_3540:
	push	r0
	sub	r1,1,r1
	bne	_Label_3540
	mov	3230,r13		! source line 3230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3256,r13		! source line 3256
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3229 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3228 = *_temp_3229  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3228) then goto _Label_3227
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3227
!	jmp	_Label_3226
_Label_3226:
! THEN...
	mov	3257,r13		! source line 3257
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3230 = _StringConst_220
	set	_StringConst_220,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3230  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3257,r13		! source line 3257
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3227:
! IF STATEMENT...
	mov	3261,r13		! source line 3261
	mov	"\0\0IF",r10
	mov	3261,r13		! source line 3261
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3234) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3233  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3233 == 1112300152 then goto _Label_3232		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3232
!	jmp	_Label_3231
_Label_3231:
! THEN...
	mov	3262,r13		! source line 3262
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3235 = _StringConst_221
	set	_StringConst_221,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3235  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3262,r13		! source line 3262
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3263,r13		! source line 3263
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3232:
! ASSIGNMENT STATEMENT...
	mov	3267,r13		! source line 3267
	mov	"\0\0AS",r10
	mov	3267,r13		! source line 3267
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3236) then goto _runtimeErrorNullPointer
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
	mov	3268,r13		! source line 3268
	mov	"\0\0AS",r10
	mov	3268,r13		! source line 3268
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3237) then goto _runtimeErrorNullPointer
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
	mov	3269,r13		! source line 3269
	mov	"\0\0AS",r10
	mov	3269,r13		! source line 3269
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3238) then goto _runtimeErrorNullPointer
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
	mov	3270,r13		! source line 3270
	mov	"\0\0AS",r10
	mov	3270,r13		! source line 3270
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3239) then goto _runtimeErrorNullPointer
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
	mov	3271,r13		! source line 3271
	mov	"\0\0AS",r10
	mov	3271,r13		! source line 3271
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3240) then goto _runtimeErrorNullPointer
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
	mov	3272,r13		! source line 3272
	mov	"\0\0AS",r10
	mov	3272,r13		! source line 3272
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3241) then goto _runtimeErrorNullPointer
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
	mov	3275,r13		! source line 3275
	mov	"\0\0IF",r10
!   _temp_3244 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3244) then goto _Label_3243
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3243
!	jmp	_Label_3242
_Label_3242:
! THEN...
	mov	3276,r13		! source line 3276
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3245 = _StringConst_222
	set	_StringConst_222,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3245  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3276,r13		! source line 3276
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3277,r13		! source line 3277
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3243:
! ASSIGNMENT STATEMENT...
	mov	3279,r13		! source line 3279
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
	mov	3283,r13		! source line 3283
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3247
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3247
!	jmp	_Label_3246
_Label_3246:
! THEN...
	mov	3284,r13		! source line 3284
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3248 = _StringConst_223
	set	_StringConst_223,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3248  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3284,r13		! source line 3284
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3285,r13		! source line 3285
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3247:
! IF STATEMENT...
	mov	3289,r13		! source line 3289
	mov	"\0\0IF",r10
!   _temp_3251 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3251) then goto _Label_3250
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3250
!	jmp	_Label_3249
_Label_3249:
! THEN...
	mov	3290,r13		! source line 3290
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3252 = _StringConst_224
	set	_StringConst_224,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3252  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3290,r13		! source line 3290
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3291,r13		! source line 3291
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3250:
! IF STATEMENT...
	mov	3293,r13		! source line 3293
	mov	"\0\0IF",r10
!   _temp_3255 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3255 then goto _Label_3254		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3254
!	jmp	_Label_3253
_Label_3253:
! THEN...
	mov	3294,r13		! source line 3294
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3256 = _StringConst_225
	set	_StringConst_225,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3256  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3294,r13		! source line 3294
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3295,r13		! source line 3295
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3254:
! ASSIGNMENT STATEMENT...
	mov	3297,r13		! source line 3297
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
	mov	3300,r13		! source line 3300
	mov	"\0\0IF",r10
!   _temp_3259 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3259) then goto _Label_3258
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3258
!	jmp	_Label_3257
_Label_3257:
! THEN...
	mov	3301,r13		! source line 3301
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3260 = _StringConst_226
	set	_StringConst_226,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3260  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3301,r13		! source line 3301
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3302,r13		! source line 3302
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3258:
! IF STATEMENT...
	mov	3304,r13		! source line 3304
	mov	"\0\0IF",r10
!   _temp_3263 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3263 then goto _Label_3262		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3262
!	jmp	_Label_3261
_Label_3261:
! THEN...
	mov	3305,r13		! source line 3305
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3264 = _StringConst_227
	set	_StringConst_227,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3264  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3305,r13		! source line 3305
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3306,r13		! source line 3306
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3262:
! ASSIGNMENT STATEMENT...
	mov	3308,r13		! source line 3308
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
	mov	3311,r13		! source line 3311
	mov	"\0\0AS",r10
!   _temp_3267 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3266 = _temp_3267 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3265 = _temp_3266 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3265 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3326,r13		! source line 3326
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3269		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3269
!	jmp	_Label_3268
_Label_3268:
! THEN...
	mov	3327,r13		! source line 3327
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3270 = _StringConst_228
	set	_StringConst_228,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3270  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3327,r13		! source line 3327
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3271 = _StringConst_229
	set	_StringConst_229,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3271  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3328,r13		! source line 3328
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3272 = _StringConst_230
	set	_StringConst_230,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3272  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3329,r13		! source line 3329
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3330,r13		! source line 3330
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3269:
! SEND STATEMENT...
	mov	3332,r13		! source line 3332
	mov	"\0\0SE",r10
!   _temp_3273 = &_P_Kernel_frameManager
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
	mov	3338,r13		! source line 3338
	mov	"\0\0IF",r10
	mov	3338,r13		! source line 3338
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3277) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3276  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3276 == 707406378 then goto _Label_3275		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3275
!	jmp	_Label_3274
_Label_3274:
! THEN...
	mov	3339,r13		! source line 3339
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3278 = _StringConst_231
	set	_StringConst_231,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3278  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3339,r13		! source line 3339
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3340,r13		! source line 3340
	mov	"\0\0SE",r10
!   _temp_3279 = &_P_Kernel_frameManager
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
	mov	3341,r13		! source line 3341
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3275:
! ASSIGNMENT STATEMENT...
	mov	3345,r13		! source line 3345
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
	mov	3346,r13		! source line 3346
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3284 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3285 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3284  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3280:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3285 then goto _Label_3283		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3283
_Label_3281:
	mov	3346,r13		! source line 3346
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3347,r13		! source line 3347
	mov	"\0\0AS",r10
	mov	3347,r13		! source line 3347
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
	mov	3350,r13		! source line 3350
	mov	"\0\0IF",r10
	mov	3350,r13		! source line 3350
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3289) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3288  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3288 then goto _Label_3287 else goto _Label_3286
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3286
	jmp	_Label_3287
_Label_3286:
! THEN...
	mov	3351,r13		! source line 3351
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3290 = _StringConst_232
	set	_StringConst_232,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3290  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3351,r13		! source line 3351
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3352,r13		! source line 3352
	mov	"\0\0SE",r10
!   _temp_3291 = &_P_Kernel_frameManager
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
	mov	3353,r13		! source line 3353
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3287:
! SEND STATEMENT...
	mov	3355,r13		! source line 3355
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
	mov	3356,r13		! source line 3356
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3282:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3280
! END FOR
_Label_3283:
! IF STATEMENT...
	mov	3360,r13		! source line 3360
	mov	"\0\0IF",r10
	mov	3360,r13		! source line 3360
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3295) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3294  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3294 == 707406378 then goto _Label_3293		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3293
!	jmp	_Label_3292
_Label_3292:
! THEN...
	mov	3361,r13		! source line 3361
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3296 = _StringConst_233
	set	_StringConst_233,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3296  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3361,r13		! source line 3361
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3362,r13		! source line 3362
	mov	"\0\0SE",r10
!   _temp_3297 = &_P_Kernel_frameManager
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
	mov	3363,r13		! source line 3363
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3293:
! FOR STATEMENT...
	mov	3367,r13		! source line 3367
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3302 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3303 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3302  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3298:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3303 then goto _Label_3301		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3301
_Label_3299:
	mov	3367,r13		! source line 3367
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3368,r13		! source line 3368
	mov	"\0\0AS",r10
	mov	3368,r13		! source line 3368
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
	mov	3371,r13		! source line 3371
	mov	"\0\0IF",r10
	mov	3371,r13		! source line 3371
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3307) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3306  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3306 then goto _Label_3305 else goto _Label_3304
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3304
	jmp	_Label_3305
_Label_3304:
! THEN...
	mov	3372,r13		! source line 3372
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3308 = _StringConst_234
	set	_StringConst_234,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3308  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3372,r13		! source line 3372
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3373,r13		! source line 3373
	mov	"\0\0SE",r10
!   _temp_3309 = &_P_Kernel_frameManager
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
	mov	3374,r13		! source line 3374
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3305:
! ASSIGNMENT STATEMENT...
	mov	3376,r13		! source line 3376
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3300:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3298
! END FOR
_Label_3301:
! IF STATEMENT...
	mov	3380,r13		! source line 3380
	mov	"\0\0IF",r10
	mov	3380,r13		! source line 3380
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3313) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3312  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3312 == 707406378 then goto _Label_3311		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3311
!	jmp	_Label_3310
_Label_3310:
! THEN...
	mov	3381,r13		! source line 3381
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3314 = _StringConst_235
	set	_StringConst_235,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3314  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3381,r13		! source line 3381
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3382,r13		! source line 3382
	mov	"\0\0SE",r10
!   _temp_3315 = &_P_Kernel_frameManager
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
	mov	3383,r13		! source line 3383
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3311:
! ASSIGNMENT STATEMENT...
	mov	3387,r13		! source line 3387
	mov	"\0\0AS",r10
	mov	3387,r13		! source line 3387
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
	mov	3391,r13		! source line 3391
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3394,r13		! source line 3394
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
	.word	_Label_3316
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3317
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3318
	.word	12
	.word	4
	.word	_Label_3319
	.word	-16
	.word	4
	.word	_Label_3320
	.word	-20
	.word	4
	.word	_Label_3321
	.word	-24
	.word	4
	.word	_Label_3322
	.word	-28
	.word	4
	.word	_Label_3323
	.word	-32
	.word	4
	.word	_Label_3324
	.word	-36
	.word	4
	.word	_Label_3325
	.word	-40
	.word	4
	.word	_Label_3326
	.word	-9
	.word	1
	.word	_Label_3327
	.word	-44
	.word	4
	.word	_Label_3328
	.word	-48
	.word	4
	.word	_Label_3329
	.word	-52
	.word	4
	.word	_Label_3330
	.word	-56
	.word	4
	.word	_Label_3331
	.word	-60
	.word	4
	.word	_Label_3332
	.word	-64
	.word	4
	.word	_Label_3333
	.word	-68
	.word	4
	.word	_Label_3334
	.word	-72
	.word	4
	.word	_Label_3335
	.word	-76
	.word	4
	.word	_Label_3336
	.word	-10
	.word	1
	.word	_Label_3337
	.word	-80
	.word	4
	.word	_Label_3338
	.word	-84
	.word	4
	.word	_Label_3339
	.word	-88
	.word	4
	.word	_Label_3340
	.word	-92
	.word	4
	.word	_Label_3341
	.word	-96
	.word	4
	.word	_Label_3342
	.word	-100
	.word	4
	.word	_Label_3343
	.word	-104
	.word	4
	.word	_Label_3344
	.word	-108
	.word	4
	.word	_Label_3345
	.word	-112
	.word	4
	.word	_Label_3346
	.word	-116
	.word	4
	.word	_Label_3347
	.word	-120
	.word	4
	.word	_Label_3348
	.word	-124
	.word	4
	.word	_Label_3349
	.word	-128
	.word	4
	.word	_Label_3350
	.word	-132
	.word	4
	.word	_Label_3351
	.word	-136
	.word	4
	.word	_Label_3352
	.word	-140
	.word	4
	.word	_Label_3353
	.word	-144
	.word	4
	.word	_Label_3354
	.word	-148
	.word	4
	.word	_Label_3355
	.word	-152
	.word	4
	.word	_Label_3356
	.word	-156
	.word	4
	.word	_Label_3357
	.word	-160
	.word	4
	.word	_Label_3358
	.word	-164
	.word	4
	.word	_Label_3359
	.word	-168
	.word	4
	.word	_Label_3360
	.word	-172
	.word	4
	.word	_Label_3361
	.word	-176
	.word	4
	.word	_Label_3362
	.word	-180
	.word	4
	.word	_Label_3363
	.word	-184
	.word	4
	.word	_Label_3364
	.word	-188
	.word	4
	.word	_Label_3365
	.word	-192
	.word	4
	.word	_Label_3366
	.word	-196
	.word	4
	.word	_Label_3367
	.word	-200
	.word	4
	.word	_Label_3368
	.word	-204
	.word	4
	.word	_Label_3369
	.word	-208
	.word	4
	.word	_Label_3370
	.word	-212
	.word	4
	.word	_Label_3371
	.word	-216
	.word	4
	.word	_Label_3372
	.word	-220
	.word	4
	.word	_Label_3373
	.word	-224
	.word	4
	.word	_Label_3374
	.word	-228
	.word	4
	.word	_Label_3375
	.word	-232
	.word	4
	.word	_Label_3376
	.word	-236
	.word	4
	.word	_Label_3377
	.word	-240
	.word	4
	.word	_Label_3378
	.word	-244
	.word	4
	.word	_Label_3379
	.word	-248
	.word	4
	.word	_Label_3380
	.word	-252
	.word	4
	.word	_Label_3381
	.word	-256
	.word	4
	.word	_Label_3382
	.word	-260
	.word	4
	.word	_Label_3383
	.word	-264
	.word	4
	.word	_Label_3384
	.word	-268
	.word	4
	.word	0
_Label_3316:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3317:
	.ascii	"Pself\0"
	.align
_Label_3318:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3315\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3314\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3313\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3312\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3309\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3308\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3307\0"
	.align
_Label_3326:
	.byte	'C'
	.ascii	"_temp_3306\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3303\0"
	.align
_Label_3328:
	.byte	'?'
	.ascii	"_temp_3302\0"
	.align
_Label_3329:
	.byte	'?'
	.ascii	"_temp_3297\0"
	.align
_Label_3330:
	.byte	'?'
	.ascii	"_temp_3296\0"
	.align
_Label_3331:
	.byte	'?'
	.ascii	"_temp_3295\0"
	.align
_Label_3332:
	.byte	'?'
	.ascii	"_temp_3294\0"
	.align
_Label_3333:
	.byte	'?'
	.ascii	"_temp_3291\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3290\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3289\0"
	.align
_Label_3336:
	.byte	'C'
	.ascii	"_temp_3288\0"
	.align
_Label_3337:
	.byte	'?'
	.ascii	"_temp_3285\0"
	.align
_Label_3338:
	.byte	'?'
	.ascii	"_temp_3284\0"
	.align
_Label_3339:
	.byte	'?'
	.ascii	"_temp_3279\0"
	.align
_Label_3340:
	.byte	'?'
	.ascii	"_temp_3278\0"
	.align
_Label_3341:
	.byte	'?'
	.ascii	"_temp_3277\0"
	.align
_Label_3342:
	.byte	'?'
	.ascii	"_temp_3276\0"
	.align
_Label_3343:
	.byte	'?'
	.ascii	"_temp_3273\0"
	.align
_Label_3344:
	.byte	'?'
	.ascii	"_temp_3272\0"
	.align
_Label_3345:
	.byte	'?'
	.ascii	"_temp_3271\0"
	.align
_Label_3346:
	.byte	'?'
	.ascii	"_temp_3270\0"
	.align
_Label_3347:
	.byte	'?'
	.ascii	"_temp_3267\0"
	.align
_Label_3348:
	.byte	'?'
	.ascii	"_temp_3266\0"
	.align
_Label_3349:
	.byte	'?'
	.ascii	"_temp_3265\0"
	.align
_Label_3350:
	.byte	'?'
	.ascii	"_temp_3264\0"
	.align
_Label_3351:
	.byte	'?'
	.ascii	"_temp_3263\0"
	.align
_Label_3352:
	.byte	'?'
	.ascii	"_temp_3260\0"
	.align
_Label_3353:
	.byte	'?'
	.ascii	"_temp_3259\0"
	.align
_Label_3354:
	.byte	'?'
	.ascii	"_temp_3256\0"
	.align
_Label_3355:
	.byte	'?'
	.ascii	"_temp_3255\0"
	.align
_Label_3356:
	.byte	'?'
	.ascii	"_temp_3252\0"
	.align
_Label_3357:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3358:
	.byte	'?'
	.ascii	"_temp_3248\0"
	.align
_Label_3359:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3360:
	.byte	'?'
	.ascii	"_temp_3244\0"
	.align
_Label_3361:
	.byte	'?'
	.ascii	"_temp_3241\0"
	.align
_Label_3362:
	.byte	'?'
	.ascii	"_temp_3240\0"
	.align
_Label_3363:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3364:
	.byte	'?'
	.ascii	"_temp_3238\0"
	.align
_Label_3365:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3366:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3367:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
_Label_3368:
	.byte	'?'
	.ascii	"_temp_3234\0"
	.align
_Label_3369:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3370:
	.byte	'?'
	.ascii	"_temp_3230\0"
	.align
_Label_3371:
	.byte	'?'
	.ascii	"_temp_3229\0"
	.align
_Label_3372:
	.byte	'?'
	.ascii	"_temp_3228\0"
	.align
_Label_3373:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3374:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3375:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3376:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3377:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3378:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3379:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3380:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3381:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3382:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3383:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3384:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
