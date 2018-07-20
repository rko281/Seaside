"Filed out from Dolphin Smalltalk 7"!

JSScript subclass: #JSFunction
	instanceVariableNames: 'return arguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSFunction guid: (GUID fromString: '{eb263041-5d42-4556-a58b-a80b2b84dab1}')!
JSFunction comment: 'I represent an anonymous JavaScript function.'!
!JSFunction categoriesForClass!Javascript-Core! !
!JSFunction methodsFor!

argument	^ arguments!

arguments	^ arguments!

arguments: aCollection	arguments := aCollection!

asFunction	^ self!

asFunction: aCollection	self arguments: aCollection!

initialize	super initialize.	arguments := #()!

javascriptContentOn: aStream	aStream nextPutAll: 'function('.	self arguments do: [ :each | aStream nextPutAll: each ] separatedBy: [ aStream nextPut: $, ].	aStream nextPutAll: '){'.	statements isEmpty ifFalse:			[ statements allButLast do:					[ :each | 					aStream						javascript: each;						nextPut: $; ].			self return ifTrue: [ aStream nextPutAll: 'return ' ].			aStream javascript: statements last ].	aStream nextPut: $}!

return	^ return ifNil: [ false ]!

return: aBoolean	return := aBoolean! !
!JSFunction categoriesFor: #argument!accessing!public! !
!JSFunction categoriesFor: #arguments!accessing!public! !
!JSFunction categoriesFor: #arguments:!accessing!public! !
!JSFunction categoriesFor: #asFunction!converting!public! !
!JSFunction categoriesFor: #asFunction:!converting!public! !
!JSFunction categoriesFor: #initialize!initialization!public! !
!JSFunction categoriesFor: #javascriptContentOn:!printing!public! !
!JSFunction categoriesFor: #return!accessing!public! !
!JSFunction categoriesFor: #return:!accessing!public! !

