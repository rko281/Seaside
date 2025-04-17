"Filed out from Dolphin Smalltalk"!

WAAbstractTextAreaTag subclass: #WATextAreaTag
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATextAreaTag guid: (GUID fromString: '{6aaa365c-e51c-4cd4-9483-f1628a4aa067}')!

WATextAreaTag comment: 'I am a multi line text input widget. See WAInputTest >> #renderTextAreaWithExampleOn: for examples.'!

!WATextAreaTag categoriesForClass!Tags! !

!WATextAreaTag methodsFor!

columns: anInteger 	"This attribute specifies the visible width in average character widths. User agents may wrap visible text lines to keep long lines visible without the need for scrolling."	self attributes 		at: 'cols'		put: anInteger!

initialize	super initialize.	self rows: 'auto'; columns: 'auto'!

isClosed	^ false!

rows: anInteger 	"This attribute specifies the number of visible text lines. If more are entered, the widget scrolls."	self attributes 		at: 'rows'		put: anInteger!

tag	^ 'textarea'!

value	^ value!

value: aString	value := aString!

with: aBlock	super with: (value ifNil: [ aBlock ])! !

!WATextAreaTag categoriesForMethods!
columns:!attributes!public! !
initialize!initialization!public! !
isClosed!public!testing! !
rows:!attributes!public! !
tag!accessing!public! !
value!attributes!public! !
value:!attributes!public! !
with:!public! !
!

