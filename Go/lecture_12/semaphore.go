package sync

type Empty interface{}
type semaphore chan Empty

// acquire n resources
func (s semaphore) Acquire(n int) {
	e := new(Empty)
	for i := 0; i < n; i++ {
		s <- e
	}
}

// release n resources
func (s semaphore) Release(n int) {
	for i := 0; i < n; i++ {
		<-s
	}
}

/* mutexes */
func (s semaphore) Lock() {
	s.Acquire(1)
}

func (s semaphore) Unlock() {
	s.Release(1)
}

/* signal-wait */
func (s semaphore) Wait(n int) {
	s.Acquire(n)
}

func (s semaphore) Signal() {
	s.Release(1)
}
