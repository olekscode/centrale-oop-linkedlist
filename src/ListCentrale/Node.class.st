Class {
	#name : #Node,
	#superclass : #Object,
	#instVars : [
		'value',
		'nextNode',
		'prevNode'
	],
	#category : #ListCentrale
}

{ #category : #accessing }
Node >> nextNode [

	^ nextNode
]

{ #category : #accessing }
Node >> nextNode: aNode [
	nextNode := aNode
]

{ #category : #accessing }
Node >> prevNode [

	^ prevNode
]

{ #category : #accessing }
Node >> prevNode: aNode [
	prevNode := aNode
]

{ #category : #accessing }
Node >> value [

	^ value
]

{ #category : #accessing }
Node >> value: aValue [
	
	value := aValue
]
