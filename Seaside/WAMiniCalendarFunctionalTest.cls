"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAMiniCalendarFunctionalTest
	instanceVariableNames: 'calendar'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMiniCalendarFunctionalTest guid: (GUID fromString: '{bb3cae51-fb2a-4007-8f4d-ed602661a4ae}')!

WAMiniCalendarFunctionalTest comment: ''!

!WAMiniCalendarFunctionalTest categoriesForClass!Unclassified! !

!WAMiniCalendarFunctionalTest methodsFor!

children	^ Array with: calendar!

initialize	super initialize.	calendar := WAMiniCalendar new!

renderContentOn: html	html render: calendar.	html div: [		html strong: 'selected:'.		html space.		html render: calendar date ]! !

!WAMiniCalendarFunctionalTest categoriesForMethods!
children!hooks!public! !
initialize!initialization!public! !
renderContentOn:!public!rendering! !
!

