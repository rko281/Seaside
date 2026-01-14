"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WACallDuringRenderTestComponent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACallDuringRenderTestComponent guid: (GUID fromString: '{f84d2cfb-a634-4151-943a-7196f3062b19}')!

WACallDuringRenderTestComponent comment: ''!

!WACallDuringRenderTestComponent categoriesForClass!Seaside-Tests-Flow-Functional! !

!WACallDuringRenderTestComponent methodsFor!

renderContentOn: html	self call: WAMiniCalendar new! !

!WACallDuringRenderTestComponent categoriesForMethods!
renderContentOn:!public!rendering! !
!

