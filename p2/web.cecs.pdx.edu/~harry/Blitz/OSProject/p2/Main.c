code Main

  -- OS Class: Project 2,3
  -- Anushree Naik

  --     SimpleThreadExample
  --     MoreThreadExamples
  --     Produl=cerConsumer
  --     TestMutex
  --     Dining Philospohers
  --     Sleeping Barber
  --     Gaming Parlour




-----------------------------  SynchTest  ---------------------------------

  function main ()
      print ("Example Thread-based Programs...\n")

      InitializeScheduler ()

      -----  Uncomment any one of the following to perform the desired test  -----

      -- SimpleThreadExample ()
      -- MoreThreadExamples ()
      -- TestMutex ()
      -- ProducerConsumer ()
      -- DiningPhilosophers ()
      -- SleepingBarber ()
      -- GamingParlour()

      ThreadFinish ()

    endFunction



-----------------------------  SimpleThreadExample  ---------------------------------

  var aThread: Thread     -- Dont put Thread objects on the stack, since the
                          -- routine that contains them may return!

  function SimpleThreadExample ()
    -- This code illustrates the basics of thread usage.
    --
    -- This code uses 2 threads.  Each thread loops a few times.
    -- Each loop iteration prints a message and executes a "Yield".
    -- This code illustrates the following operations:
    --     Thread creation
    --     Fork
    --     Yield
    --     Thread termination
    -- This code creates only one new thread; the currrent ("main") thread, which
    -- already exists, is the other thread.  Both the main thread and the newly
    -- created thread will call function "SimpleThreadFunction" to perform the looping.
    --
    -- Notice that timer interrupts will also cause "Yields" to be inserted at
    -- unpredictable places.  Thus, the threads will not simply alternate.
    --
    -- Things to experiment with:
    --    In TimerInterruptHandler (in Thread.c), uncomment "print ('_')".
    --    In TimerInterruptHandler (in Thread.c), comment out the call to
    --            Yield, which will suspend timeslicing.
    --    Edit .blitzrc (see "sim" command) and change TIME_SLICE value.
    --    In this function, comment out the call to "Yield".
    --    

      print ("Simple Thread Example...\n")
      aThread = new Thread
      aThread.Init ("Second-Thread")   -- Initialize, giving thread a name
      aThread.Fork (SimpleThreadFunction, 4)  -- Pass "4" as argument to the thread
      SimpleThreadFunction (7)                -- The main thread will loop 7 times
    endFunction

  function SimpleThreadFunction (cnt: int)
    -- This function will loop "cnt" times.  Each iteration will print a
    -- message and execute a "Yield", which will give the other thread a
    -- chance to run.
      var i: int
      for i = 1 to cnt
        print (currentThread.name) -- Print the name cnt times
        nl ()                      -- Line numbering filter 
        currentThread.Yield ()     -- Execute Yield function, giving up the CPU volunterily 
      endFor
      ThreadFinish ()
    endFunction



-----------------------------  MoreThreadExamples  ---------------------------------

  var th1, th2, th3, th4, th5, th6: Thread

  function MoreThreadExamples ()
      var j: int
          oldStatus: int

      print ("Thread Example...\n")

      -- Create some thread objects (not on the heap).

      th1 = new Thread
      th2 = new Thread
      th3 = new Thread
      th4 = new Thread
      th5 = new Thread
      th6 = new Thread

      -- Initialize them.
      th1.Init ("thread-a")
      th2.Init ("thread-b")
      th3.Init ("thread-c")
      th4.Init ("thread-d")
      th5.Init ("thread-e")
      th6.Init ("thread-f")

      -- Start all threads running.  Each thread will execute the "foo"
      -- function, but each will be passed a different argument. 
      th1.Fork (foo, 1)
      th2.Fork (foo, 2)
      th3.Fork (foo, 3)
      th4.Fork (foo, 4)
      th5.Fork (foo, 5)
      th6.Fork (foo, 6)

      -- Print this threads name.  Note that we temporarily disable
      -- interrupts so that all printing will happen together.  Without
      -- this, the other threads might print in the middle, causing a mess.
      oldStatus = SetInterruptsTo (DISABLED)
        print ("\nThe currently running thread is ")
        print (currentThread.name)
        print ("\n")
        PrintReadyList ()
      oldStatus = SetInterruptsTo (oldStatus)

      for j = 1 to 10
        currentThread.Yield ()
        print ("\n..Main..\n")
      endFor

      -- Print the readyList at this point...
      PrintReadyList ()
      currentThread.Print()

  /*    
      -- Put this thread to sleep...
      oldStatus = SetInterruptsTo (DISABLED)
      print ("About to Sleep main thread...\n")
      currentThread.Sleep ()
      FatalError ("BACK FROM SLEEP !?!?!")
      -- Execution will never reach this point, since the current thread
      -- was not placed on any list of waiting threads.  Nothing in this
      -- code could ever move this thread back to the ready list.

  */
      ThreadFinish ()

    endFunction


  function foo (i: int)
      var j: int
 
      for j = 1 to 30
        printInt (i)

        if j == 20
          -- Next is an example of aborting all threads and shutting down...
          --   FatalError ("Whoops...(SAMPLE ERROR MESSAGE)")

          -- Next is an example of just quietly shutting down...
          --   RuntimeExit ()

          -- Next is an example of what happens if execution errors occur...
          --   i = j / 0         -- Generate an error
        endIf

        -- Call Yield so other threads can run.  This is not necessary,
        -- but it will cause more interleaving of the various threads,
        -- making this program''s output more interesting.
        currentThread.Yield ()
      endFor
    endFunction



-----------------------------  Test Mutex  ---------------------------------

  -- This code illustrates the ideas behind "critical sections" and "mutual
  -- exclusion".  This code creates several threads.  Each thread accesses
  -- some shared data (an integer) in a critical section.  A single lock
  -- is used to control access to the shared variable.  Each thread locks
  -- the mutex, computes a while, increments the integer, prints the new value,
  -- updates the shared copy, and unlocks the mutex.  Then it does some
  -- non-critical computation and repeats.

  var
    muLock: Mutex = new Mutex      -- Could also use "Mutex2" instead
    sharedInt: int = 0
    thArr: array [7] of Thread = new array of Thread {7 of new Thread }

  function TestMutex ()
      muLock.Init ()  -- Initialize mutex lock "muLOck"

      print ("\n-- You should see 70 lines, each consecutively numbered. --\n\n")

      -- Initialize threads and start all of them to run.
      -- Each thread is passing different value.
      thArr[0].Init ("LockTester-A")
      thArr[0].Fork (LockTester, 100)

      thArr[1].Init ("LockTester-B")
      thArr[1].Fork (LockTester, 200)

      thArr[2].Init ("LockTester-C")
      thArr[2].Fork (LockTester, 1)

      thArr[3].Init ("LockTester-D")
      thArr[3].Fork (LockTester, 50)

      thArr[4].Init ("LockTester-E")
      thArr[4].Fork (LockTester, 300)

      thArr[5].Init ("LockTester-F")
      thArr[5].Fork (LockTester, 1)

      thArr[6].Init ("LockTester-G")
      thArr[6].Fork (LockTester, 1)

      ThreadFinish ()
    endFunction

  function LockTester (waitTime: int)
    -- This function will do the following actions, several times in a loop:
    --     Lock the mutex
    --     Get the current value of the "sharedInt" variable
    --     Compute a new value by adding 1
    --     Wait a while (determined by parameter "waitTime") to simulate
    --        actions done within the critical section
    --     Print the threads name and the new value
    --     Update the "sharedInt" variable
    --     Unlock the mutex
    --     Wait a while (determined by parameter "waitTime") to simulate
    --        actions done outside of the critical section
      var
        i, j, k: int
      for i = 1 to 10

        -- Lock the mutext
        muLock.Lock()

        -- Critical Section
        j = sharedInt + 1                    -- Read shared data
        for k = 1 to waitTime                -- Do some computation
        endFor                               
        printIntVar (currentThread.name, j)  -- Print new data value
        sharedInt = j                        -- Update shared data

        -- Unlock the mutex
        muLock.Unlock()

        -- Perform non-critical work
        for k = 1 to waitTime
        endFor

      endFor
    endFunction



-----------------------------  ProducerConsumer  ---------------------------------

  -- This code implements the consumer-producer task.  There are several
  -- "producers", several "consumers", and a single shared buffer.
  --
  -- The producers are named "A", "B", "C", etc.  Each producer is a thread which
  -- will loop 5 times.  For each iteration, the producer thread will add its
  -- character to a shared buffer.  For example, "Producer-B" will add 5 "B"s to
  -- the shared buffer.  Since the 5 producer threads will run concurrently, the
  -- characters will be added in an unpredictable order.  Regardless of the order,
  -- however, there will be five "A"s, five "B"s, five "C"s, etc.
  --
  -- There are several consumers.  Each consumer is a thread which executes an
  -- inifinite loop.  During each iteration of its loop, a consumer will remove
  -- whatever character is next in the buffer and will print it.
  --
  -- The shared buffer is a FIFO queue of characters.  The producers put characters
  -- in one end and the consumers take characters out the other end.  Think of a
  -- section of steel pipe.  The capacity of the buffer is limited to BUFFER_SIZE
  -- characters.
  --
  -- This code illustrates the mechanisms required to synchronize the producers,
  -- consumers, and the shared buffer.  Consumers must wait if the buffer is empty.
  -- Producers must wait if the buffer is full.  Furthermore, the buffer is a shared
  -- data structure.  (The buffer is implemented as an array with pointers to the
  -- next position to add or remove characters.)  No two threads are allowed to
  -- access these pointers simultaneously, or else errors may result.
  --
  -- To document what is happening, each producer will print a line when it adds
  -- a character to the buffer.  The line printed will include the buffer contents
  -- along with the name of the poducer.  Also, each time a consumer removes a
  -- character from the buffer, it will print a line, showing the buffer contents
  -- after the removal, along with the name of the consumer thread.  Each line of
  -- output is formated so that you can see the buffer growing and shrinking.  By
  -- reading the output vertically, you can also see what each thread does.
  --
  const
    BUFFER_SIZE = 5

  var
    buff: array [BUFFER_SIZE] of char = new array of char {BUFFER_SIZE of '?'} -- Buffer Array
    buffSize: int = 0  
    buffNextIn: int = 0      -- Buffer in pointer
    buffNextOut: int = 0     -- Buffer out pointer 
    thArray: array [8] of Thread = new array of Thread { 8 of new Thread }  -- Thread array
    semaEmpty: Semaphore = new Semaphore  -- declare new Semaphore variable semaphore-empty
    semaFull: Semaphore = new Semaphore   -- declare new Semaphore variable for semaphore-full
    proLock: Mutex = new Mutex            -- declare the variable for prducer Lock
    conLock: Mutex = new Mutex            -- declare the variable for consumer Lock
    printMutex: Mutex = new Mutex         -- declare the variable for print Lock

  function ProducerConsumer ()

      -- Initialise producer lock, consumer lock, print lock, mutext lock, semaphore variables
      proLock.Init()
      conLock.Init()
      printMutex.Init()
      muLock.Init()
      semaFull.Init(0)
      semaEmpty.Init(BUFFER_SIZE)
      
      print ("     ")

      -- Initialise all the threads in the array for consumer and producer. 
      -- Every thread is passing different value. 
      thArray[0].Init ("Consumer-1                               |      ")
      thArray[0].Fork (Consumer, 1)

      thArray[1].Init ("Consumer-2                               |          ")
      thArray[1].Fork (Consumer, 2)

      thArray[2].Init ("Consumer-3                               |              ")
      thArray[2].Fork (Consumer, 3)

      thArray[3].Init ("Producer-A         ")
      thArray[3].Fork (Producer, 1)

      thArray[4].Init ("Producer-B             ")
      thArray[4].Fork (Producer, 2)

      thArray[5].Init ("Producer-C                 ")
      thArray[5].Fork (Producer, 3)

      thArray[6].Init ("Producer-D                     ")
      thArray[6].Fork (Producer, 4)

      thArray[7].Init ("Producer-E                         ")
      thArray[7].Fork (Producer, 5)

      ThreadFinish ()
    endFunction

  function Producer (myId: int)
      var
        i: int
        c: char = intToChar ('A' + myId - 1)
      for i = 1 to 5
        -- Perform synchroniztion
        semaEmpty.Down()  -- perform Down operation for empty semaphore 
        proLock.Lock()    -- Lock the producer 
        
        -- Add c to the buffer
        buff [buffNextIn] = c
        buffNextIn = (buffNextIn + 1) % BUFFER_SIZE
        printMutex.Lock()   -- Lock the print.

        buffSize = buffSize + 1

        
        -- Print a line showing the state
        
        PrintBuffer (c)
        printMutex.Unlock()  -- Unlock the print.

        
        

        -- Perform synchronization...
        semaFull.Up()   -- Perform Up operation for full Semaphore
         proLock.Unlock()  -- unlock the producer

      endFor
    endFunction

  function Consumer (myId: int)
      var
        c: char
      while true
        -- Perform synchroniztion...
        semaFull.Down()  -- perform Down operation for full semaphore 
        conLock.Lock()   -- Lock the consumer

        -- Remove next character from the buffer
        c = buff [buffNextOut]
        
        printMutex.Lock()  -- Lock the print.
        buffNextOut = (buffNextOut + 1) % BUFFER_SIZE
        buffSize = buffSize - 1

        -- Print a line showing the state
        
        PrintBuffer (c)
        printMutex.Unlock()  -- Unlock the print.

        -- Perform synchronization...
        semaEmpty.Up()  -- Perform Up operation for empty Semaphore
        conLock.Unlock()  -- unlock the consumer
        
      endWhile
    endFunction

  function PrintBuffer (c: char)
    --
    -- This method prints the buffer and what we are doing to it.  Each
    -- line should have
    --        <buffer>  <threadname> <character involved>
    -- We want to print the buffer as it was *before* the operation;
    -- however, this method is called *after* the buffer has been modified.
    -- To achieve the right order, we print the operation first, skip to
    -- the next line, and then print the buffer.  Assuming we start by
    -- printing an empty buffer first, and we are willing to end the output
    -- in the middle of a line, this prints things in the desired order.
    --
      var
        i, j: int

      -- Print the thread name, which tells what we are doing.
      print ("   ")
      print (currentThread.name)  -- this will include right number of spaces after name
      printChar (c)
      nl ()

      -- Print the contents of the buffer.
      j = buffNextOut
      for i = 1 to buffSize
        printChar (buff[j])
        j = (j + 1) % BUFFER_SIZE
      endFor

      -- Use blanks to make things line up.
      for i = 1 to BUFFER_SIZE - buffSize
        printChar (' ')
      endFor
    endFunction



-----------------------------  Dining Philosophers  ---------------------------------

  -- This code is an implementation of the Dining Philosophers problem.  Each
  -- philosopher is simulated with a thread.  Each philosopher thinks for a while
  -- and then wants to eat.  Before eating, he must pick up both his forks.
  -- After eating, he puts down his forks.  Each fork is shared between
  -- two philosophers and there are 5 philosophers and 5 forks arranged in a
  -- circle.
  --
  -- Since the forks are shared, access to them is controlled by a monitor
  -- called "ForkMonitor".  The monitor is an object with two "entry" methods:
  --     PickupForks (phil)
  --     PutDownForks (phil)
  -- The philsophers are numbered 0 to 4 and each of these methods is passed an integer
  -- indicating which philospher wants to pickup (or put down) the forks.
  -- The call to "PickUpForks" will wait until both of his forks are
  -- available.  The call to "PutDownForks" will never wait and may also
  -- wake up threads (i.e., philosophers) who are waiting.
  --
  -- Each philospher is in exactly one state: HUNGRY, EATING, or THINKING.  Each time
  -- a philosophers state changes, a line of output is printed.  The output is organized
  -- so that each philosopher has column of output with the following code letters:
  --           E    --  eating
  --           .    --  thinking
  --         blank  --  hungry (i.e., waiting for forks)
  -- By reading down a column, you can see the history of a philosopher.
  --
  -- The forks are not modeled explicitly.  A fork is only picked up
  -- by a philospher if he can pick up both forks at the same time and begin
  -- eating.  To know whether a fork is available, it is sufficient to simply
  -- look at the status of the two adjacent philosophers.  (Another way to state
  -- the problem is to forget about the forks altogether and stipulate that a
  -- philosopher may only eat when his two neighbors are not eating.)

  enum HUNGRY, EATING, THINKING
  var
    monitor: ForkMonitor
    philospher: array [5] of Thread = new array of Thread {5 of new Thread }

  function DiningPhilosophers ()

      -- Philosophers
      print ("Plato\n")
      print ("    Sartre\n")
      print ("        Kant\n")
      print ("            Nietzsche\n")
      print ("                Aristotle\n")

      -- declare and initialise monitor
      monitor = new ForkMonitor
      monitor.Init ()
      monitor.PrintAllStatus ()

      -- Initialize and start the run for philospher threads. 
      -- Each thread passing different value.
      philospher[0].Init ("Plato")
      philospher[0].Fork (PhilosphizeAndEat, 0)

      philospher[1].Init ("Sartre")
      philospher[1].Fork (PhilosphizeAndEat, 1)

      philospher[2].Init ("Kant")
      philospher[2].Fork (PhilosphizeAndEat, 2)

      philospher[3].Init ("Nietzsche")
      philospher[3].Fork (PhilosphizeAndEat, 3)

      philospher[4].Init ("Aristotle")
      philospher[4].Fork (PhilosphizeAndEat, 4)

     endFunction

  function PhilosphizeAndEat (p: int)
    -- The parameter "p" identifies which philosopher this is.
    -- In a loop, he will think, acquire his forks, eat, and
    -- put down his forks.
      var
        i: int
      for i = 1 to 7
        -- Now philospher is thinking
        monitor. PickupForks (p)
        -- Now philospher is eating
        monitor. PutDownForks (p)
      endFor
    endFunction

  class ForkMonitor
    superclass Object
    fields
      status: array [5] of int             -- For each philosopher: HUNGRY, EATING, or THINKING
      monitorMutex: Mutex
      condVariable: array [5] of Condition
    methods
      Init ()
      PickupForks (p: int)
      PutDownForks (p: int)
      testStatus (i: int)
      PrintAllStatus ()
  endClass

  behavior ForkMonitor

    method Init ()
      -- Initialize so that all philosophers are THINKING.
      var i: int
      status = new array of int {5 of THINKING}

      -- Initialize the conditionvariables for each philospher
      condVariable = new array [5] of Condition {5 of new Condition}
      for i = 0 to 4
        condVariable[i].Init ()
      endFor

      --Initialize mutex for the monitor
      monitorMutex = new Mutex
      monitorMutex.Init ()

      endMethod

    method PickupForks (p: int)
      -- This method is called when philosopher 'p' is wants to eat.
      -- lock the monitor mutex first.

      -- Lock the monitor
      monitorMutex.Lock()
      -- change the status of the philospher to HUNGRY, print status
      status[p] = HUNGRY

      monitor.PrintAllStatus()

      monitor.testStatus(p)

      -- if the status is not equal to  eating, "Wait" function is called
      if(status[p] !=EATING)
        condVariable[p].Wait(&monitorMutex)
      endIf

      -- Unlock monitor
      monitorMutex.Unlock()
      endMethod

    method PutDownForks (p: int)

      -- Lock the monitor 
      monitorMutex.Lock()

      -- This method is called when the philosopher 'p' is done eating.
      -- change the status of the philospher to thinking, print status
      status[p] = THINKING

      monitor.PrintAllStatus()
      
      -- Test status
      monitor.testStatus((p+1) % 5)
      monitor.testStatus((p-1) % 5)
      
      -- Unlock the monitor 
      monitorMutex.Unlock()
      endMethod

    method testStatus(i: int)

      if status[(i+1) % 5] != EATING && status[(i-1) % 5] != EATING && status[i] == HUNGRY 
        status[i] =EATING
        monitor.PrintAllStatus()
        condVariable[i].Signal(&monitorMutex)
      endIf
    endMethod     

    method PrintAllStatus ()
      -- Print a single line showing the status of all philosophers.
      --      '.' means thinking
      --      ' ' means hungry
      --      'E' means eating
      -- Note that this method is internal to the monitor.  Thus, when
      -- it is called, the monitor lock will already have been acquired
      -- by the thread.  Therefore, this method can never be re-entered,
      -- since only one thread at a time may execute within the monitor.
      -- Consequently, printing is safe.  This method calls the "print"
      -- routine several times to print a single line, but these will all
      -- happen without interuption.
        var
          p: int
        for p = 0 to 4
          switch status [p]
            case HUNGRY:
              print ("    ")
              break
            case EATING:
              print ("E   ")
              break
            case THINKING:
              print (".   ")
              break
          endSwitch
        endFor
        nl ()
      endMethod

  endBehavior


----------------------------- Sleeping Barber  ---------------------------------

var
  sleepB : SleepingBarberClass
  thSleepingBarber: array [21] of Thread = new array of Thread { 21 of new Thread }  -- Thread array
  
function SleepingBarber()

  sleepB = new SleepingBarberClass
  sleepB.Init()

endFunction  

-- Wrapper function for Barber
function Barber()

  sleepB.Barber()

endFunction  

-- Wrapper function for Customer
function Customer(wait: int)
  
  sleepB.Customer(wait)

endFunction

-- Includes all methods
behavior SleepingBarberClass

  method Init()

    -- Global variable waiting
    waiting = 0
    -- Barber shop has five chairs 
    chairs = 5

    -- Initialize synchronization primitives
    sleepB.semaphoreCustomer = new Semaphore                                 
    sleepB.semaphoreBarber = new Semaphore 

    sleepB.semaphoreCustomer.Init(0)
    sleepB.semaphoreBarber.Init(0)

    sleepB.waitLock = new Mutex
    sleepB.waitLock.Init()

    thSleepingBarber[0].Init("Barber")
    thSleepingBarber[0].Fork(Barber, 1)

    thSleepingBarber[1].Init ("Customer1")
    thSleepingBarber[1].Fork (Customer, 2)

    thSleepingBarber[2].Init ("Customer2")
    thSleepingBarber[2].Fork (Customer, 3)

    thSleepingBarber[3].Init ("Customer3")
    thSleepingBarber[3].Fork (Customer, 4)

    thSleepingBarber[4].Init ("Customer4")
    thSleepingBarber[4].Fork (Customer, 5)

    thSleepingBarber[5].Init ("Customer5")
    thSleepingBarber[5].Fork (Customer, 6)

    thSleepingBarber[6].Init ("Customer6")
    thSleepingBarber[6].Fork (Customer, 7)

    thSleepingBarber[7].Init ("Customer7")
    thSleepingBarber[7].Fork (Customer, 8)

    thSleepingBarber[8].Init ("Customer8")
    thSleepingBarber[8].Fork (Customer, 9)

    thSleepingBarber[9].Init ("Customer9")
    thSleepingBarber[9].Fork (Customer, 10)

    thSleepingBarber[10].Init ("Customer10")
    thSleepingBarber[10].Fork (Customer, 11)

    thSleepingBarber[11].Init ("Customer11")
    thSleepingBarber[11].Fork (Customer, 12)

    thSleepingBarber[12].Init ("Customer12")
    thSleepingBarber[12].Fork (Customer, 13)

    thSleepingBarber[13].Init ("Customer13")
    thSleepingBarber[13].Fork (Customer, 14)

    thSleepingBarber[14].Init ("Customer14")
    thSleepingBarber[14].Fork (Customer, 15)

    thSleepingBarber[15].Init ("Customer15")
    thSleepingBarber[15].Fork (Customer, 16)

    thSleepingBarber[16].Init ("Customer16")
    thSleepingBarber[16].Fork (Customer, 17)

    thSleepingBarber[17].Init ("Customer17")
    thSleepingBarber[17].Fork (Customer, 18)

    thSleepingBarber[18].Init ("Customer18")
    thSleepingBarber[18].Fork (Customer, 19)

    thSleepingBarber[19].Init ("Customer19")
    thSleepingBarber[19].Fork (Customer, 20)

    thSleepingBarber[20].Init ("Customer20")
    thSleepingBarber[20].Fork (Customer, 21)



  ThreadFinish()
  endMethod 

method Barber ()
  
  while true

    -- waiting for customers to come. so go to sleep 
    semaphoreCustomer.Down()
    waitLock.Lock()   

    -- new customer is there. lock the mutex
    
    waiting = waiting -1  -- one less customer waiting than before
    semaphoreBarber.Up()  -- signal all the customers that barber is ready
    waitLock.Unlock()     -- unlock Mutex

    -- call cut_hair method for all the customers who are ready 
    sleepB.cut_hair()            
  
  endWhile  
endMethod

method Customer (wait: int)

  -- Adding wait time and yeilding so other that other threads will get the chance 
  var i: int = 0
    for i = 0 to 300
         currentThread.Yield()
    endFor
 
    waitLock.Lock()           
    print("space = ")
    printInt(chairs - waiting)
    print("   ")
    print(currentThread.name)
    print(" is entering") 
    print("   ")

    if(waiting < chairs)      -- if chairs are empty
      waiting = waiting +1    -- customer aquires the chair and now one more customer is waiting
      
      print(currentThread.name) -- print the customer that just sat down
      print(" is Seated\n") 

      nl()
      
      -- signal barber that customer is there
      semaphoreCustomer.Up()    
      waitLock.Unlock()         
      semaphoreBarber.Down()
      -- wake up barber and get the haircut
      sleepB.get_haircut()

    else 
      -- if there is no place to sit, customer leaves
      print(currentThread.name)
      print(" customer is leaving\n")
      nl()
      waitLock.Unlock()
    endIf
   
endMethod   

method get_haircut()

  var i: int = 0

  -- Show the total available seats   
  print("space = ")
  -- decrement the value of available chairs by the value of waiting customers who have aquired the chair
  printInt(chairs - waiting)
  print("     ")


  print(currentThread.name)
  print(" getting a haircut\n\n")

  -- current thread yeilds so other threads get the chance 
  for i = 1 to 1000
    currentThread.Yield()
  endFor

  -- Show the total available seats  
  print("space = ")
  -- decrement the value of available chairs by the value of waiting customers who have aquired the chair
  printInt(chairs - waiting)
  print("     ")

  -- print the name of the customer who is done with the haircut
  print(currentThread.name)
  print(" done with haircut\n\n")
  
endMethod  


method cut_hair()
  var i: int = 0

  -- current thread yeilds so other threads get the chance 
  for i = 1 to 100
    currentThread.Yield()
  endFor

  -- Show the total available seats
  print("space = ")
  -- decrement the value of available chairs by the value of waiting customers who have aquired the chair
  printInt(chairs - waiting)
  print("     ")

  -- print the name of the customer who is donw cutting the hair
  print(currentThread.name)
  print(" done cutting the hair\n\n") 

endMethod

endBehavior


------------------------------------------- Gaming Parlour ----------------------------------------------------

var
    Desk: ForkMonitor1
    Players: array [8] of Thread = new array of Thread{8 of new Thread}

  function GamingParlour()

      -- declare and initialise monitor
      Desk = new ForkMonitor1
      Desk.Init ()

      -- each thread represents the game name
      -- Each thread takes a parameter as a number of dice it requires to play the game
      Players[0].Init ("A:Backgammon")
      Players[0].Fork (frontDesk, 4)

      Players[1].Init ("B:Backgammon")
      Players[1].Fork (frontDesk,4)

      Players[2].Init ("C:Risk")
      Players[2].Fork (frontDesk,5)

      Players[3].Init ("D:Risk")
      Players[3].Fork (frontDesk,5)

      Players[4].Init ("E:Monopoly")
      Players[4].Fork (frontDesk,2)

      Players[5].Init ("F:Monopoly")
      Players[5].Fork (frontDesk,2)

      Players[6].Init ("G:Pictionary")
      Players[6].Fork (frontDesk,1)

      Players[7].Init ("H:Pictionary")
      Players[7].Fork (frontDesk,1)

  endFunction

  class ForkMonitor1
    superclass Object
    fields
        -- all class fields.
        frontDesk_mutex: Mutex
        printingMutex: Mutex
        deskCond: Condition
        groupCond: Condition
        available_dice: int
        waiting_groups: int
    methods
        -- all monitor methods
        Init()
        Request(num_of_dice: int)
        Return(num_of_dice: int)
        Print(str: String, count: int)
   
  endClass

  function frontDesk(num_of_dice: int)

    var i : int
    for i = 0 to 4

      -- Wrapper function to request and return the dice before and after playing
      Desk.Request (num_of_dice)
      currentThread.Yield ()
      Desk.Return (num_of_dice)

    endFor  

  endFunction

behavior ForkMonitor1

-- All methods

  method Init()
    
    -- Initialise Condition variables
    deskCond = new Condition
    deskCond.Init()
    groupCond = new Condition
    groupCond.Init()

    -- Initialize number of resources and groups 
    available_dice = 8
    waiting_groups = 0

    -- Initialize mutex
    frontDesk_mutex = new Mutex
    frontDesk_mutex.Init()

  endMethod 

  method Request(num_of_dice: int)

    -- group is requesting for the dice

    frontDesk_mutex.Lock()
    self.Print("Requests" ,num_of_dice)

    waiting_groups = waiting_groups + 1       -- check if the group is start of the queue
    if waiting_groups > 1
      deskCond.Wait(&frontDesk_mutex)         -- wait for its turn to come
    endIf

    while available_dice < num_of_dice        --  check if the sufficient resources are available
      groupCond.Wait(&frontDesk_mutex)        --  wait for sufficient resources to get available
    endWhile

    available_dice = available_dice - num_of_dice   -- allocate dices

    waiting_groups = waiting_groups - 1             -- the groups which used the resources, take them out of the queue  

    deskCond.Signal(&frontDesk_mutex)               -- signal next group who are waiting.

    self.Print("proceeds with ", num_of_dice)
    frontDesk_mutex.Unlock()

  endMethod

  method Return(num_of_dice: int)

     -- group is returning the dice after using 
     frontDesk_mutex.Lock()       
       
     available_dice = available_dice + num_of_dice     -- add the returned resources to the available resources
     self.Print("releases and adds back", num_of_dice)

     groupCond.Signal(&frontDesk_mutex)                -- Signal the waiting threads
 
     frontDesk_mutex.Unlock()

  endMethod

  method Print (str: String, count: int) 
  --
  -- This method prints the current threads name and the arguments. 
  -- It also prints the current number of dice available.
  --

    print (currentThread.name)
    print (" ")
    print (str)
    print (" ")
    printInt (count)
    nl ()
    print ("------------------------------Number of dice now avail = ") 
    printInt (available_dice)
    nl ()
  endMethod
  
endBehavior
endCode