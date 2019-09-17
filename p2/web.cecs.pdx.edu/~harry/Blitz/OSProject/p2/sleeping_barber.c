----------------------------- Sleeping Barber  ---------------------------------

  
var 
  semaphoreCustomer: Semaphore = new Semaphore                                 -- declaring the Customer semaphore
  semaphoreBarber: Semaphore = new Semaphore                                   -- declaring the Barber semaphore
  thBarber: Thread = new thread
  thCustomer: array [10] of Thread = new array of Thread { 10 of new Thread }  -- Thread array
  waitLock: Mutex = new Mutext                                                 -- declaring the variable for waiting Lock
  waiting: int = 0
  chairs: int = 5
  i: int = 0

function SleepingBarber ()
  -- Initialize customer semaphore, barber semaphore and waiting Lock

  print(" Barber\t1\t2\t3\t4\t5\t6\t7\t8\t9\t10")

  semaphoreCustomer.Init()
  semaphoreBarber.Init()
  waitLock.Init()
  

  print ("    ")

  -- Initialise all the threads in the array for Customers and Barber.
  -- Every thread is passing different value. 
  
    thBarber.Init (" ")
    thBarber.Fork (Barber, 1)

    thCustomer[0].Init ("Customer1")
    thCustomer[0].Fork (Customer, 1)

    thCustomer[1].Init ("Customer2")
    thCustomer[1].Fork (Customer, 2)

    thCustomer[2].Init ("Customer3")
    thCustomer[2].Fork (Customer, 3)

    thCustomer[3].Init ("Customer4")
    thCustomer[3].Fork (Customer, 4)

    thCustomer[4].Init ("Customer5")
    thCustomer[4].Fork (Customer, 5)

    thCustomer[5].Init ("Customer6")
    thCustomer[5].Fork (Customer, 6)

    thCustomer[6].Init ("Customer7")
    thCustomer[6].Fork (Customer, 7)

    thCustomer[7].Init ("Customer8")
    thCustomer[7].Fork (Customer, 8)

    thCustomer[8].Init ("Customer9")
    thCustomer[8].Fork (Customer, 9)

    thCustomer[9].Init ("Customer10")
    thCustomer[9].Fork (Customer, 10)

    ThreadFinish()
endFunction

function Barber ()
   
   print(currentThread.name)

  while(true)

    semaphoreBarber.Down()-- waiting for customers to come. so go to sleep 
    waitLock.lock()       -- new customer is there. lock te mutex
    waiting = waiting -1  -- one less customer waiting than before
    semaphoreBarber.Up()  -- signal all the customers that we are ready
    waitLock.unlock()     -- unlock Mutex
    cut_hair()            -- cut the hair of the customer who is awake 
  endWhile  
endFunction

function Customer ()
  
  while(true)
    waitLock.lock()           -- lock the mutex
    print(currentThread.name) -- customer that entered the shop
    if(waiting < chairs)      -- if chairs are empty
      waiting = waiting +1    -- customer aquires the chair and now one more customer is waiting
      Print(currentThread.name) -- print the customer that just sat down
      print(" customer is waiting") 
      semaphoreCustomer.Up()    -- signal barber that customer is there
      for i = 0 to 200  
      endFor  
      waitLock.Unlock()         
      semaphoreBarber.Down()
      get_haircut()
      Print(currentThread.name)
      Print(" customer is leaving")

    else 
      -- if there is no place to sit 
      Print(currentThread.name)
      Print(" customer is leaving")
      waitLock.Up()
    endIf
  endWhile  
endFunction    

function cut_hair()

  waitLock.Lock()
  for i = 1 to waiting
  --  Print(" X ")
  endFor
  
  for i =  1 to chairs-waiting
  --  Print(" - ")
  endFor

  for i = 1 to 100
    currentThread.Yield()
  endFor
  print(currentThread.name)
  Print(" cutting the haircut") 

endFunction

function get_haircute()

  waitLock.Lock()
  Print(currentThread.name)  
  print("getting the haircut")
  for i = 1 to 100
    currentThread.Yield()
  endFor
  Print(currentThread.name)
  Print(" done with haircut")
  waitLock.Unlock()
endFunction  
