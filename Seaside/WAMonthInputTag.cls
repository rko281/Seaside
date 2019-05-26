"Filed out from Dolphin Smalltalk 7"!

WASteppedTag subclass: #WAMonthInputTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMonthInputTag guid: (GUID fromString: '{56b1efca-a7f0-4a46-8c88-ba5694ebed70}')!
WAMonthInputTag comment: 'supported on:- Opera 9graceful degeneration to text inputA date consisting of a year and a month encoded according to ISO 8601 [ISO8601]: four or more digits (0 to 9) representing the year, a hyphen (U+002D), and two digits for the month, zero-padded if necessary. All the numbers must be in base ten. For instance: 1995-12. The step  attribute specifies the precision in months, defaulting to 1. This type is used most frequently for credit card expiry dates.'!
!WAMonthInputTag categoriesForClass!Seaside-Canvas-Tags! !
!WAMonthInputTag methodsFor!

type	^ 'month'! !
!WAMonthInputTag categoriesFor: #type!accessing!public! !

