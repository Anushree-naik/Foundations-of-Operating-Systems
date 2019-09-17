header Main

  uses System, Thread, Synch

  functions
    main ()

    class SleepingBarberClass
  	superclass Object
  	fields
  		waiting: int
  		chairs: int
  		semaphoreCustomer: Semaphore
  		semaphoreBarber: Semaphore
  		waitLock: Mutex
  		
  	methods
  		Init()
  		Barber()
  		Customer(wait: int)
  		get_haircut()
  		cut_hair()
  	endClass

endHeader
