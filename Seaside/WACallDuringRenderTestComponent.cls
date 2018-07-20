"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WACallDuringRenderTestComponent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACallDuringRenderTestComponent guid: (GUID fromString: '{a610e074-485c-41aa-858e-1650135a6f14}')!
WACallDuringRenderTestComponent comment: ''!
!WACallDuringRenderTestComponent categoriesForClass!Seaside-Tests-Flow-Functional! !
!WACallDuringRenderTestComponent methodsFor!

renderContentOn: html	self call: WAMiniCalendar new! !
!WACallDuringRenderTestComponent categoriesFor: #renderContentOn:!public!rendering! !

