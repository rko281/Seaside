"Filed out from Dolphin Smalltalk"!

JSObject subclass: #JSStream
	instanceVariableNames: 'fragments'
	classVariableNames: 'Arguments This'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSStream guid: (GUID fromString: '{8ec44f04-14f9-4c1d-9ffa-1507feb33fa4}')!

JSStream comment: 'I represent a verbatim JavaScript string. I support streaming facilities to efficiently encode JavaScript input.'!

!JSStream categoriesForClass!Javascript-Core-Base! !

!JSStream methodsFor!

add: anObject	fragments add: anObject!

argument: anObject	self add: (JSArgument with: anObject)!

arguments: aCollection	self add: (JSArguments withAll: aCollection)!

copy	^ self class withFragments: fragments copy!

initialize	super initialize.	renderContext := WARenderContext new.	fragments := OrderedCollection new: 2!

initializeWithFragments: anObject	super initialize.	renderContext := WARenderContext new.	fragments := anObject!

javascript: anObject	self add: anObject!

javascriptContentOn: aRenderer	fragments do: [ :each |		aRenderer render: each ]!

json: anObject	self nextPutAll: anObject asJson!

nextPut: aCharacter	"quite inefficient, ideally rare"	self add: (JSCode on: aCharacter greaseString)!

nextPutAll: aString	self add: (JSCode on: aString)! !

!JSStream categoriesForMethods!
add:!private! !
argument:!convenience!public! !
arguments:!convenience!public! !
copy!copying!public! !
initialize!initialization!public! !
initializeWithFragments:!initialization!public! !
javascript:!public!streaming! !
javascriptContentOn:!printing!public! !
json:!public!streaming! !
nextPut:!public!streaming! !
nextPutAll:!public!streaming! !
!

!JSStream class methodsFor!

argument: anInteger	^ (Arguments at: anInteger + 1) copy!

argumentAt: anInteger	^ (Arguments at: anInteger) copy!

initialize	self initializeSnippets!

initializeSnippets	This := self on: 'this'.	Arguments := (0 to: 25)		collect: [ :each | self on: 'arguments[' , each printString , ']' ]!

on: aString	^ self new nextPutAll: aString!

this	^ This copy!

withFragments: anObject	^ self basicNew initializeWithFragments: anObject! !

!JSStream class categoriesForMethods!
argument:!instance creation!public! !
argumentAt:!instance creation!public! !
initialize!initialization!public! !
initializeSnippets!initialization!public! !
on:!instance creation!public! !
this!instance creation!public! !
withFragments:!instance creation!public! !
!

