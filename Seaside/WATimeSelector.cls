"Filed out from Dolphin Smalltalk 7"!

WACanvasWidget subclass: #WATimeSelector
	instanceVariableNames: 'second hour minute startHour endHour'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATimeSelector guid: (GUID fromString: '{95d35591-051c-4209-9eff-f70e1d768605}')!
WATimeSelector comment: 'WATimeSelector displays dropdown menus (html select) allowing a user to delect a time within a range. "startHour" and "endHour" define the range of selectable times. Time is displayed in 24 hour format. WATimeSelector>>time returns time user selected as a Time object.See WADateSelectorFunctionalTest for sample of usage.Select "Date Selector" tab of the Functional Seaside Test Suite to run an example  (http://127.0.0.1:xxxx/seaside/tests/alltests)Instance Variables:	endHour	<Integer 0-23>	end of time interval for selectable times	hour	<Integer 0-23>	selected hour	minute	<Integer 0-59>	selected minute	second	<Integer 0-59>	selected second	startHour	<Integer 0-23>	start of time interval for selectable times'!
!WATimeSelector categoriesForClass!Seaside-Widgets-Components! !
!WATimeSelector methodsFor!

date: aDate	second := aDate dayOfMonth.	hour := aDate monthIndex.	minute := aDate year!

days	^ 1 to: 31!

endHour	^ endHour!

endHour: anInteger	endHour := anInteger!

hour	^ hour!

hour: anObject	hour := anObject!

initialize	super initialize.	startHour := 0.	endHour := 23.	self time: Time midnight!

minute	^ minute!

minute: anObject	minute := anObject!

privateIsValidSecond: theSecond hourNumber: theHour minuteNumber: theMinute	^ (theHour between: 0 and: 23)		and: [ (theMinute between: 0 and: 59)		and: [ theSecond between: 0 and: 59 ] ]!

renderContentOn: html	html select		list: (0 to: 23);		on: #hour of: self.	html select		list: (0 to: 59);		on: #minute of: self.	html select		list: (0 to: 59);		on: #second of: self.	self timeIsValid		ifFalse: [ self renderValidationErrorOn: html ]!

renderValidationErrorOn: html	html span		class: 'error';		with: 'invalid time'!

second	^ second!

second: anObject	second := anObject!

startHour	^ startHour!

startHour: anInteger	startHour := anInteger!

time	(self privateIsValidSecond: second hourNumber: hour minuteNumber: minute)		ifFalse: [ self error: 'Invalid time' ].	^ self timeClass hour: hour minute: minute second: second!

time: aTime	second := aTime second.	hour := aTime hour.	minute := aTime minute!

timeClass	^ Time!

timeIsValid	[ self time ] on: Error do: [ :e | ^ false ].	^ true! !
!WATimeSelector categoriesFor: #date:!accessing!public! !
!WATimeSelector categoriesFor: #days!accessing!public! !
!WATimeSelector categoriesFor: #endHour!accessing!public! !
!WATimeSelector categoriesFor: #endHour:!accessing!public! !
!WATimeSelector categoriesFor: #hour!accessing!public! !
!WATimeSelector categoriesFor: #hour:!accessing!public! !
!WATimeSelector categoriesFor: #initialize!initialization!public! !
!WATimeSelector categoriesFor: #minute!accessing!public! !
!WATimeSelector categoriesFor: #minute:!accessing!public! !
!WATimeSelector categoriesFor: #privateIsValidSecond:hourNumber:minuteNumber:!private! !
!WATimeSelector categoriesFor: #renderContentOn:!public!rendering! !
!WATimeSelector categoriesFor: #renderValidationErrorOn:!public!rendering! !
!WATimeSelector categoriesFor: #second!accessing!public! !
!WATimeSelector categoriesFor: #second:!accessing!public! !
!WATimeSelector categoriesFor: #startHour!accessing!public! !
!WATimeSelector categoriesFor: #startHour:!accessing!public! !
!WATimeSelector categoriesFor: #time!accessing!public! !
!WATimeSelector categoriesFor: #time:!accessing!public! !
!WATimeSelector categoriesFor: #timeClass!private! !
!WATimeSelector categoriesFor: #timeIsValid!public!testing! !

