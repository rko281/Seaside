"Filed out from Dolphin Smalltalk 7"!

WAPlugin subclass: #WAToolPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAToolPlugin guid: (GUID fromString: '{bfc325d8-1afa-4700-b3da-09552c22d8ad}')!
WAToolPlugin comment: 'Abstract root class for all development tool bar tools.'!
!WAToolPlugin categoriesForClass!Seaside-Development-Plugins! !
!WAToolPlugin methodsFor!

open: aComponent onAnswer: aBlock	| component |	component := self requestor decoratedComponent.	component removeDecoration: self requestor.	super open: aComponent onAnswer: [ :value |		component addDecoration: self requestor.		aBlock value: value ]! !
!WAToolPlugin categoriesFor: #open:onAnswer:!actions!public! !

!WAToolPlugin class methodsFor!

allSubclassesFor: aRequestorObject	| plugins |	plugins := self allSubclasses		collect: [ :each | each for: aRequestorObject ].	^ plugins sorted!

for: aRequestorObject	^ self basicNew initializeRequestor: aRequestorObject! !
!WAToolPlugin class categoriesFor: #allSubclassesFor:!instance creation!public! !
!WAToolPlugin class categoriesFor: #for:!instance creation!public! !

