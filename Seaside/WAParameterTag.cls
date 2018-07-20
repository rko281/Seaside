"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WAParameterTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAParameterTag guid: (GUID fromString: '{9f6a5f5c-a6cc-4151-b337-4e047162cf7a}')!
WAParameterTag comment: 'The param element allows you to specify the run-time settings for an object inserted into XHTML documents.'!
!WAParameterTag categoriesForClass!Seaside-Canvas-Tags! !
!WAParameterTag methodsFor!

name: aString 	self attributes 		at: 'name'		put: aString!

tag	^ 'param'!

type: aString 	self attributes 		at: 'type'		put: aString!

value: aString 	self attributes 		at: 'value'		put: aString! !
!WAParameterTag categoriesFor: #name:!attributes!public! !
!WAParameterTag categoriesFor: #tag!accessing!public! !
!WAParameterTag categoriesFor: #type:!attributes!public! !
!WAParameterTag categoriesFor: #value:!attributes!public! !

