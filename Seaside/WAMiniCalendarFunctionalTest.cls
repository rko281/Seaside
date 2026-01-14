"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAMiniCalendarFunctionalTest
	instanceVariableNames: 'calendar'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMiniCalendarFunctionalTest guid: (GUID fromString: '{b333b83f-a7cd-45cc-b50b-93ae0b62bfdb}')!

WAMiniCalendarFunctionalTest comment: ''!

!WAMiniCalendarFunctionalTest categoriesForClass!Seaside-Tests-Functional! !

!WAMiniCalendarFunctionalTest methodsFor!

children	^ Array with: calendar!

initialize	super initialize.	calendar := WAMiniCalendar new!

renderContentOn: html	html render: calendar.	html div: [		html strong: 'selected:'.		html space.		html render: calendar date ]! !

!WAMiniCalendarFunctionalTest categoriesForMethods!
children!hooks!public! !
initialize!initialization!public! !
renderContentOn:!public!rendering! !
!

