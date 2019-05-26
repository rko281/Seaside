"Filed out from Dolphin Smalltalk 7"!

WACanvasWidget subclass: #WADateSelector
	instanceVariableNames: 'day month year startYear endYear'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADateSelector guid: (GUID fromString: '{3f61bf26-b761-480c-8b2e-1c5429719b18}')!
WADateSelector comment: 'WADateSelector displays dropdown menus (html select) allowing a user to delect a date within a range. "startYear" and "endYear" define the range of selectable dates. Date displayed in month, day, year format. WADateSelector>>date returns date user selected as a Date object.See WADateSelectorFunctionalTest for sample of usage.Select "Date Selector" tab of the Functional Seaside Test Suite to run an example  (http://127.0.0.1:xxxx/seaside/tests/alltests)Instance Variables:	day	<Integer 1-31> selected day	endYear	<Integer>	end of range of dates user is allowed to select, not required to use 4 digits	month	<Integer 1-12>	selected month	startYear	<Integer>	 start of range of dates user is allowed to select, not required to use 4 digits	year	<Integer>	selected year'!
!WADateSelector categoriesForClass!Seaside-Widgets-Components! !
!WADateSelector methodsFor!

date	(self privateIsValidDay: day monthNumber: month year: year)		ifFalse: [ self error: 'Invalid date' ].	^ self dateClass year: year month: month day: day!

date: aDate	day := aDate dayOfMonth.	month := aDate monthIndex.	year := aDate year!

dateClass	^ Date!

dateIsValid	[ self date ] on: Error do: [ :e | ^ false ].	^ true!

day	^ day!

day: anObject	day := anObject!

days	^ 1 to: 31!

endYear	^ endYear!

endYear: anInteger	endYear := anInteger!

initialize	super initialize.	startYear := Date today year - 1.	endYear := Date today year + 5.	self date: self dateClass today!

labelForDay: aNumber	^ aNumber!

labelForMonth: aNumber	^ Date nameOfMonth: aNumber!

labelForYear: aNumber	^ aNumber!

month	^ month!

month: anObject	month := anObject!

months	^ 1 to: 12!

privateIsValidDay: theDay monthNumber: theMonth year: theYear	| daysInMonth |	(theMonth between: 1 and: 12)		ifFalse: [ ^ false ].	daysInMonth := Date daysInMonth: (Date nameOfMonth: theMonth) forYear: theYear.	^ theDay between: 1 and: daysInMonth!

renderContentOn: html	html select		list: self months;		on: #month of: self;		labels: [ :each | self labelForMonth: each ].	html select		list: self days;		on: #day of: self;		labels: [ :each | self labelForDay: each ].	html select		list: self yearRange;		on: #year of: self;		labels: [ :each | self labelForYear: each ].	self dateIsValid ifFalse: [ self renderValidationErrorOn: html ]!

renderValidationErrorOn: html	html span		class: 'error';		with: 'invalid date'!

startYear	^ startYear!

startYear: anInteger	startYear := anInteger!

year	^ year!

year: anObject	year := anObject!

yearRange	^ self startYear to: self endYear! !
!WADateSelector categoriesFor: #date!accessing!public! !
!WADateSelector categoriesFor: #date:!accessing!public! !
!WADateSelector categoriesFor: #dateClass!private! !
!WADateSelector categoriesFor: #dateIsValid!public!testing! !
!WADateSelector categoriesFor: #day!accessing!public! !
!WADateSelector categoriesFor: #day:!accessing!public! !
!WADateSelector categoriesFor: #days!accessing!public! !
!WADateSelector categoriesFor: #endYear!accessing!public! !
!WADateSelector categoriesFor: #endYear:!accessing!public! !
!WADateSelector categoriesFor: #initialize!initialization!public! !
!WADateSelector categoriesFor: #labelForDay:!accessing!public! !
!WADateSelector categoriesFor: #labelForMonth:!accessing!public! !
!WADateSelector categoriesFor: #labelForYear:!accessing!public! !
!WADateSelector categoriesFor: #month!accessing!public! !
!WADateSelector categoriesFor: #month:!accessing!public! !
!WADateSelector categoriesFor: #months!accessing!public! !
!WADateSelector categoriesFor: #privateIsValidDay:monthNumber:year:!private! !
!WADateSelector categoriesFor: #renderContentOn:!public!rendering! !
!WADateSelector categoriesFor: #renderValidationErrorOn:!public!rendering! !
!WADateSelector categoriesFor: #startYear!accessing!public! !
!WADateSelector categoriesFor: #startYear:!accessing!public! !
!WADateSelector categoriesFor: #year!accessing!public! !
!WADateSelector categoriesFor: #year:!accessing!public! !
!WADateSelector categoriesFor: #yearRange!accessing!public! !

