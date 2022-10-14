Class {
	#name : #List,
	#superclass : #Object,
	#instVars : [
		'begin',
		'end',
		'size'
	],
	#category : #ListCentrale
}

{ #category : #adding }
List >> add: aValue [

	| node oldEnd |
	
	node := Node new.
	
	node value: aValue.
	(self isEmpty)
	ifTrue: [ begin := node ]
	ifFalse: [
		oldEnd := end. 
		node prevNode: oldEnd.
		oldEnd nextNode: node.
	].
	end := node.
	
	size := size + 1.
	
]

{ #category : #accessing }
List >> at: anIndex [
	| node |
	
	node := begin.

	1 to: anIndex-1 do: [ :i |
		 node := node nextNode ].
	
	^ node value
]

{ #category : #getting }
List >> begin [
	^ begin
]

{ #category : #getting }
List >> end [
	^ end
]

{ #category : #initialization }
List >> initialize [ 
	
	super initialize.
	size := 0.
	begin := Node new.
	end := Node new.
	
]

{ #category : #testing }
List >> isEmpty [
	^(size = 0)
]

{ #category : #testing }
List >> size [
	^size
]
