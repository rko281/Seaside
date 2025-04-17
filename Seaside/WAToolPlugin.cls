"Filed out from Dolphin Smalltalk"!

WAPlugin subclass: #WAToolPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAToolPlugin guid: (GUID fromString: '{400a5975-5242-47f2-a158-e9f51d9b7970}')!

WAToolPlugin comment: 'Abstract root class for all development tool bar tools.'!

!WAToolPlugin categoriesForClass!Plugins! !

!WAToolPlugin methodsFor!

open: aComponent onAnswer: aBlock	| component |	component := self requestor decoratedComponent.	component removeDecoration: self requestor.	super open: aComponent onAnswer: [ :value |		component addDecoration: self requestor.		aBlock value: value ]! !

!WAToolPlugin categoriesForMethods!
open:onAnswer:!actions!public! !
!

!WAToolPlugin class methodsFor!

allSubclassesFor: aRequestorObject	| plugins |	plugins := self allSubclasses		collect: [ :each | each for: aRequestorObject ].	^ plugins sorted!

for: aRequestorObject	^ self basicNew initializeRequestor: aRequestorObject!

isAbstract 	^ self == WAToolPlugin! !

!WAToolPlugin class categoriesForMethods!
allSubclassesFor:!instance creation!public! !
for:!instance creation!public! !
isAbstract!public!testing! !
!

