"Filed out from Dolphin Smalltalk"!

WAPlugin subclass: #WAToolPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAToolPlugin guid: (GUID fromString: '{06ccda85-788d-453b-9c5e-3667bd8d5be5}')!

WAToolPlugin comment: 'Abstract root class for all development tool bar tools.'!

!WAToolPlugin categoriesForClass!Seaside-Development-Plugins! !

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

