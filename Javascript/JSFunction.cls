"Filed out from Dolphin Smalltalk"!

JSScript subclass: #JSFunction
	instanceVariableNames: 'return arguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSFunction guid: (GUID fromString: '{d772580a-666e-4744-9266-e3a550d14dfc}')!

JSFunction comment: 'I represent an anonymous JavaScript function.'!

!JSFunction categoriesForClass!Javascript-Core-Base! !

!JSFunction methodsFor!

argument	^ arguments!

arguments	^ arguments!

arguments: aCollection	arguments := aCollection!

argumentsDo: aBlock	self arguments do: aBlock!

asFunction	^ self!

asFunction: aCollection	self arguments: aCollection!

initialize	super initialize.	arguments := #()!

javascriptContentOn: aRenderer	aRenderer defineFunction		arguments: self arguments;		with: [ 			statements isEmpty ifFalse: [				self return					ifTrue: [						1 to: statements size - 1 do: [:index | 							aRenderer render: (statements at: index).							aRenderer document separator ].						aRenderer return: statements last ]					ifFalse: [						statements							do: [ :each | aRenderer render: each ]							separatedBy: [ aRenderer document separator ] ] ] ]!

return	^ return ifNil: [ false ]!

return: aBoolean	return := aBoolean! !

!JSFunction categoriesForMethods!
argument!accessing!public! !
arguments!accessing!public! !
arguments:!accessing!public! !
argumentsDo:!accessing!public! !
asFunction!converting!public! !
asFunction:!converting!public! !
initialize!initialization!public! !
javascriptContentOn:!printing!public! !
return!accessing!public! !
return:!accessing!public! !
!

