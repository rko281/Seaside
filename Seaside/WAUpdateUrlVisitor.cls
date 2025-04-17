"Filed out from Dolphin Smalltalk"!

WAPainterVisitor subclass: #WAUpdateUrlVisitor
	instanceVariableNames: 'url'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUpdateUrlVisitor guid: (GUID fromString: '{4ff8410c-e1ee-4aec-897e-8d1ebcecd7d1}')!

WAUpdateUrlVisitor comment: 'A visitor which asks Painters to update a WAUrl subclass using #updateRoot:.This is used to update the base URL stored on a WARenderContext.'!

!WAUpdateUrlVisitor categoriesForClass!Rendering! !

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

