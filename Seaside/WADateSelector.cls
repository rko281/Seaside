"Filed out from Dolphin Smalltalk"!

WACanvasWidget subclass: #WADateSelector
	instanceVariableNames: 'day month year startYear endYear'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADateSelector guid: (GUID fromString: '{fad3acb8-5af9-4b1b-9130-60376f0ab32b}')!

WADateSelector comment: 'WADateSelector displays dropdown menus (html select) allowing a user to delect a date within a range. "startYear" and "endYear" define the range of selectable dates. Date displayed in month, day, year format. WADateSelector>>date returns date user selected as a Date object.See WADateSelectorFunctionalTest for sample of usage.Select "Date Selector" tab of the Functional Seaside Test Suite to run an example  (http://127.0.0.1:xxxx/seaside/tests/alltests)Instance Variables:	day	<Integer 1-31> selected day	endYear	<Integer>	end of range of dates user is allowed to select, not required to use 4 digits	month	<Integer 1-12>	selected month	startYear	<Integer>	 start of range of dates user is allowed to select, not required to use 4 digits	year	<Integer>	selected year'!

!WADateSelector categoriesForClass!Components! !

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

!WADateSelector categoriesForMethods!
date!accessing!public! !
date:!accessing!public! !
dateClass!private! !
dateIsValid!public!testing! !
day!accessing!public! !
day:!accessing!public! !
days!accessing!public! !
endYear!accessing!public! !
endYear:!accessing!public! !
initialize!initialization!public! !
labelForDay:!accessing!public! !
labelForMonth:!accessing!public! !
labelForYear:!accessing!public! !
month!accessing!public! !
month:!accessing!public! !
months!accessing!public! !
privateIsValidDay:monthNumber:year:!private! !
renderContentOn:!public!rendering! !
renderValidationErrorOn:!public!rendering! !
startYear!accessing!public! !
startYear:!accessing!public! !
year!accessing!public! !
year:!accessing!public! !
yearRange!accessing!public! !
!

