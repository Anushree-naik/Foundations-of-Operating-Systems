code Main

  -- OS Class: Project 3
  --
  -- Anushree Naik
  --

-----------------------------  Main  ---------------------------------

-- Sleeping Barber

  
var 
	semaphoreCustomer: Semaphore = new Semaphore 								 -- declaring the Customer semaphore
	semaphoreBarber: Semaphore = new Semaphore   								 -- declaring the Barber semaphore
	thBarber: Thread = new thread
	thCustomer: array [10] of Thread = new array of Thread { 10 of new Thread }  -- Thread array
	--semaphoreMutex: Semaphore = new semaphore 								 -- declaring the mutext semaphore
	waitLock: Mutex = new Mutext 						  						 --declaring the variable for waiting Lock

function SleepingBarber ()
	-- Initialize customer semaphore, barber semaphore and waiting Lock
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

function Barber (myId: Ini)
	var 
		c: char
	while true
	-- Perform synchronization
	
	semaphoreBarber.Down()
    waitLock.Down()
    






      FatalError ("Need to implement")
    endFunction

endCode
