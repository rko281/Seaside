"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WACallDuringRenderTestComponent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACallDuringRenderTestComponent guid: (GUID fromString: '{8324b447-4b0a-47af-b41a-883a28a6fa71}')!

WACallDuringRenderTestComponent comment: ''!

!WACallDuringRenderTestComponent categoriesForClass!Functional! !

!WACallDuringRenderTestComponent methodsFor!

renderContentOn: html	self call: WAMiniCalendar new! !

!WACallDuringRenderTestComponent categoriesForMethods!
renderContentOn:!public!rendering! !
!

