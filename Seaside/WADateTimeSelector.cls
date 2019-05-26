"Filed out from Dolphin Smalltalk 7"!

WACanvasWidget subclass: #WADateTimeSelector
	instanceVariableNames: 'dateSelector timeSelector'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADateTimeSelector guid: (GUID fromString: '{3a1388c3-e408-4772-9d37-55a9c2aed330}')!
WADateTimeSelector comment: 'WADateTimeSelector allows the user to select a date and time in a given range dropdown menus (html select). Actual work done by WADateSelector and WATimeSelector. Date range is default range of WADateSelector.See WADateSelectorFunctionalTest for sample of usage.Select "Date Selector" tab of the Functional Seaside Test Suite to run an example  (http://127.0.0.1:xxxx/seaside/tests/alltests)Instance Variables:	dateSelector	<WADateSelector>	presents date selection to user	timeSelector	<WATimeSelector>	presents time selection to user'!
!WADateTimeSelector categoriesForClass!Seaside-Widgets-Components! !
!WADateTimeSelector methodsFor!

children	^ Array with: dateSelector with: timeSelector!

dateAndTime	^ DateAndTime date: dateSelector date time: timeSelector time!

dateAndTime: anObject	dateSelector date: anObject asDate.	timeSelector time: anObject asTime!

initialize	super initialize.	dateSelector := WADateSelector new.	timeSelector := WATimeSelector new!

renderContentOn: html	html span: dateSelector.	html span: [ html strong: ' : ' ].	html span: timeSelector! !
!WADateTimeSelector categoriesFor: #children!hooks!public! !
!WADateTimeSelector categoriesFor: #dateAndTime!accessing!public! !
!WADateTimeSelector categoriesFor: #dateAndTime:!accessing!public! !
!WADateTimeSelector categoriesFor: #initialize!initialization!public! !
!WADateTimeSelector categoriesFor: #renderContentOn:!public!rendering! !

