"Filed out from Dolphin Smalltalk 7"!

WAPainterVisitor subclass: #WAUpdateUrlVisitor
	instanceVariableNames: 'url'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUpdateUrlVisitor guid: (GUID fromString: '{eadaacfd-e153-4dbb-8143-db06aaa4e4df}')!
WAUpdateUrlVisitor comment: 'A visitor which asks Painters to update a WAUrl subclass using #updateRoot:.This is used to update the base URL stored on a WARenderContext.'!
!WAUpdateUrlVisitor categoriesForClass!Seaside-Core-Rendering! !
!WAUpdateUrlVisitor methodsFor!

initializeWithUrl: aUrl	self initialize.	url := aUrl!

url	^ url!

visitPainter: aPainter	aPainter updateUrl: self url! !
!WAUpdateUrlVisitor categoriesFor: #initializeWithUrl:!initialization!public! !
!WAUpdateUrlVisitor categoriesFor: #url!accessing!public! !
!WAUpdateUrlVisitor categoriesFor: #visitPainter:!public!visiting! !

!WAUpdateUrlVisitor class methodsFor!

new	^ self url: WAUrl new!

url: aUrl	^ self basicNew initializeWithUrl: aUrl; yourself! !
!WAUpdateUrlVisitor class categoriesFor: #new!instance creation!public! !
!WAUpdateUrlVisitor class categoriesFor: #url:!instance creation!public! !

