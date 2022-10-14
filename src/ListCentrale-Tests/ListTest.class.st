Class {
	#name : #ListTest,
	#superclass : #TestCase,
	#category : #'ListCentrale-Tests'
}

{ #category : #tests }
ListTest >> testAdd [

	| list |
	list := List new.
	list add: 'hello'.
	list add: 'world'.
	self assert: list size equals: 2.
	
]

{ #category : #tests }
ListTest >> testAddSetNextNode [

	| list |
	list := List new.
	list add: 'hello'.
	list add: 'world'.
	self assert: list begin nextNode value equals: 'world'.
	
]

{ #category : #tests }
ListTest >> testAddSetPreviousNode [

	| list |
	list := List new.
	list add: 'hello'.
	list add: 'world'.
	self assert: list end prevNode value equals: 'hello'.
	
]

{ #category : #tests }
ListTest >> testAt [

	| list |
	list := List new.
	list add: 3.
	list add: 2.
	self assert: (list at: 2) equals: 2.
	
]

{ #category : #tests }
ListTest >> testIsEmpty [

	| list |
	list := List new.
	self assert: list isEmpty.
]

{ #category : #tests }
ListTest >> testSizeNotEmpty [

	| list |
	list := List new.
	list add: 3.
	list add: 2.
	list add: 1.
	self assert: list size equals: 3.
	
]

{ #category : #tests }
ListTest >> testSizeOfEmpty [

	| list |
	list := List new.
	self assert: list size equals: 0.
	
]
