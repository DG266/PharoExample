Class {
	#name : #CounterFailingTest,
	#superclass : #TestCase,
	#category : #'MyCounter-Failing-Tests'
}

{ #category : #tests }
CounterFailingTest >> testDecrement [
	| c |
	c := Counter new.
	c count: 0 ; decrement; decrement; decrement.
	self assert: c count equals: -2  "WARNING: it will fail on purpose!"
]
