"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WAParameterTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAParameterTag guid: (GUID fromString: '{63537774-4264-462e-bba0-3c27d7822bcd}')!

WAParameterTag comment: 'The param element allows you to specify the run-time settings for an object inserted into XHTML documents.'!

!WAParameterTag categoriesForClass!Seaside-Canvas-Tags! !

!WAParameterTag methodsFor!

name: aString 	self attributes 		at: 'name'		put: aString!

tag	^ 'param'!

type: aString 	self attributes 		at: 'type'		put: aString!

value: aString 	self attributes 		at: 'value'		put: aString! !

!WAParameterTag categoriesForMethods!
name:!attributes!public! !
tag!accessing!public! !
type:!attributes!public! !
value:!attributes!public! !
!

