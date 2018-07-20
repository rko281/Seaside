﻿"Filed out from Dolphin Smalltalk 7"!

WACanvasWidget subclass: #WATimeSelector
	instanceVariableNames: 'second hour minute startHour endHour'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATimeSelector guid: (GUID fromString: '{95d35591-051c-4209-9eff-f70e1d768605}')!
WATimeSelector comment: 'WATimeSelector displays dropdown menus (html select) allowing a user to delect a time within a range. "startHour" and "endHour" define the range of selectable times. Time is displayed in 24 hour format. WATimeSelector>>time returns time user selected as a Time object.
!WATimeSelector categoriesForClass!Seaside-Widgets-Components! !
!WATimeSelector methodsFor!

date: aDate

days

endHour

endHour: anInteger

hour

hour: anObject

initialize

minute

minute: anObject

privateIsValidSecond: theSecond hourNumber: theHour minuteNumber: theMinute

renderContentOn: html

renderValidationErrorOn: html

second

second: anObject

startHour

startHour: anInteger

time

time: aTime

timeClass

timeIsValid
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
