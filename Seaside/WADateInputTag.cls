﻿"Filed out from Dolphin Smalltalk"!

WASteppedTag subclass: #WADateInputTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADateInputTag guid: (GUID fromString: '{8291cf8a-1664-40e2-988e-befe9cd96440}')!

WADateInputTag comment: 'supported on:- Opera 9graceful degeneration to text inputA date (year, month, day) encoded according to ISO 8601 [ISO8601]: four or more digits (0 to 9) representing the year, a hyphen (U+002D), two digits for the month, a hyphen, and two digits for the day. All the numbers must be in base ten and zero padded if necessary. For instance: 1995-12-31. The step attribute specifies the precision in days, defaulting to 1. User agents are expected to show an appropriate widget, such as a datepicker.'!

!WADateInputTag categoriesForClass!Tags! !

!WADateInputTag methodsFor!

type	^ 'date'! !

!WADateInputTag categoriesForMethods!
type!accessing!public! !
!

