"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WACallDuringRenderTestComponent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACallDuringRenderTestComponent guid: (GUID fromString: '{65e14de4-44f2-46a3-b7e9-2c11de62fff8}')!
WACallDuringRenderTestComponent comment: ''!
!WACallDuringRenderTestComponent categoriesForClass!Seaside-Tests-Flow-Functional! !
!WACallDuringRenderTestComponent methodsFor!

renderContentOn: html	self call: WAMiniCalendar new! !
!WACallDuringRenderTestComponent categoriesFor: #renderContentOn:!public!rendering! !

