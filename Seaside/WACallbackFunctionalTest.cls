"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WACallbackFunctionalTest
	instanceVariableNames: 'transcript'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACallbackFunctionalTest guid: (GUID fromString: '{b28bd9c0-1e6d-43e0-aa8d-e7e9b98f44a1}')!

WACallbackFunctionalTest comment: ''!

!WACallbackFunctionalTest categoriesForClass!Unclassified! !

!WACallbackFunctionalTest methodsFor!

append: aString	transcript nextPutAll: aString; nextPut: Character cr!

initialize	super initialize.	transcript := WriteStream on: String new!

renderContentOn: html 	html paragraph: 'Depending on the way the form is submitted the following actions should be triggered and logged:'.	html orderedList list: #( 		'Default: Text, Default'		'Before: Text'		'Before Submit: Text, Before Submit'		'Before Cancel: Before Cancel'		'After: Text'		'After Submit: Text, After Submit'		'After Cancel: After Cancel'	).	html form		defaultAction: [ self append: 'Default' ] ;		with: [			html div: [				"div for validation"				html submitButton					text: 'Before'.				html submitButton					callback:  [ self append: 'Before Submit' ];					text: 'Before Submit'.				html cancelButton					callback:  [ self append: 'Before Cancel' ];					text: 'Before Cancel'.				html break.				html textInput					value: 'Some Text';					callback: [ :value | self append: 'Text: ' , value ].				html break.				html submitButton					text: 'After'.				html submitButton					callback:  [ self append: 'After Submit' ];					text: 'After Submit'.				html cancelButton					callback:  [ self append: 'After Cancel' ];					text: 'After Cancel' ] ].	html preformatted: transcript contents.	transcript reset! !

!WACallbackFunctionalTest categoriesForMethods!
append:!accessing!public! !
initialize!initialization!public! !
renderContentOn:!public!rendering! !
!

