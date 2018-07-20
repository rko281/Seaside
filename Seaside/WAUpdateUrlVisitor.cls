﻿"Filed out from Dolphin Smalltalk 7"!

WAPainterVisitor subclass: #WAUpdateUrlVisitor
	instanceVariableNames: 'url'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUpdateUrlVisitor guid: (GUID fromString: '{db8523c2-b75d-4ebd-bc20-4ad72510b15b}')!
WAUpdateUrlVisitor comment: 'A visitor which asks Painters to update a WAUrl subclass using #updateRoot:.
!WAUpdateUrlVisitor categoriesForClass!Seaside-Core-Rendering! !
!WAUpdateUrlVisitor methodsFor!

initializeWithUrl: aUrl

url

visitPainter: aPainter
!WAUpdateUrlVisitor categoriesFor: #initializeWithUrl:!initialization!public! !
!WAUpdateUrlVisitor categoriesFor: #url!accessing!public! !
!WAUpdateUrlVisitor categoriesFor: #visitPainter:!public!visiting! !

!WAUpdateUrlVisitor class methodsFor!

new

url: aUrl
!WAUpdateUrlVisitor class categoriesFor: #new!instance creation!public! !
!WAUpdateUrlVisitor class categoriesFor: #url:!instance creation!public! !
