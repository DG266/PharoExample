"
Counter is a simple concrete class which supports incrementing and
decrementing a counter.
Its API is
- decrement, increment
- count
Its creation API is message startingAt:
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter >> count [
	^ count
]

{ #category : #accessing }
Counter >> count: myInteger [
	count := myInteger
	
]

{ #category : #operations }
Counter >> decrement [
	count := count - 1
]

{ #category : #operations }
Counter >> increment [
	count := count + 1
]

{ #category : #initialization }
Counter >> initialize [
"set the initial value of count to 0"
	count := 0
]
