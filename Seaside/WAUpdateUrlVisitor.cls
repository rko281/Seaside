"Filed out from Dolphin Smalltalk"!

WAPainterVisitor subclass: #WAUpdateUrlVisitor
	instanceVariableNames: 'url'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUpdateUrlVisitor guid: (GUID fromString: '{ee552b69-8e08-4573-a163-643e680aaa6b}')!

WAUpdateUrlVisitor comment: 'A visitor which asks Painters to update a WAUrl subclass using #updateRoot:.This is used to update the base URL stored on a WARenderContext.'!

!WAUpdateUrlVisitor categoriesForClass!Seaside-Core-Rendering! !

!WAUpdateUrlVisitor methodsFor!

initializeWithUrl: aUrl	self initialize.	url := aUrl!

url	^ url!

visitPainter: aPainter	aPainter updateUrl: self url! !

!WAUpdateUrlVisitor categoriesForMethods!
initializeWithUrl:!initialization!public! !
url!accessing!public! !
visitPainter:!public!visiting! !
!

!WAUpdateUrlVisitor class methodsFor!

new	^ self url: WAUrl new!

url: aUrl	^ self basicNew initializeWithUrl: aUrl; yourself! !

!WAUpdateUrlVisitor class categoriesForMethods!
new!instance creation!public! !
url:!instance creation!public! !
!

