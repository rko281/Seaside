"Filed out from Dolphin Smalltalk"!

JSScript subclass: #JSFunction
	instanceVariableNames: 'return arguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSFunction guid: (GUID fromString: '{766c4cce-1487-43c5-981c-a00ca2116fe0}')!

JSFunction comment: 'I represent an anonymous JavaScript function.'!

!JSFunction categoriesForClass!Base! !

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

!JSFunction categoriesForMethods!
argument!accessing!public! !
arguments!accessing!public! !
arguments:!accessing!public! !
asFunction!converting!public! !
asFunction:!converting!public! !
initialize!initialization!public! !
javascriptContentOn:!printing!public! !
return!accessing!public! !
return:!accessing!public! !
!

