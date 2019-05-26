"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAMiniCalendarFunctionalTest
	instanceVariableNames: 'calendar'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMiniCalendarFunctionalTest guid: (GUID fromString: '{d2505106-ea4e-4c0e-b98a-3ef041e666c4}')!
WAMiniCalendarFunctionalTest comment: ''!
!WAMiniCalendarFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WAMiniCalendarFunctionalTest methodsFor!

children	^ Array with: calendar!

initialize	super initialize.	calendar := WAMiniCalendar new!

renderContentOn: html	html render: calendar.	html div: [		html strong: 'selected:'.		html space.		html render: calendar date ]! !
!WAMiniCalendarFunctionalTest categoriesFor: #children!hooks!public! !
!WAMiniCalendarFunctionalTest categoriesFor: #initialize!initialization!public! !
!WAMiniCalendarFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !

