"Filed out from Dolphin Smalltalk 7"!

WAAbstractTextAreaTag subclass: #WATextAreaTag
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATextAreaTag guid: (GUID fromString: '{4bed8bc6-f38c-4283-ba36-0e2fc98a5781}')!
WATextAreaTag comment: 'I am a multi line text input widget. See WAInputTest >> #renderTextAreaWithExampleOn: for examples.'!
!WATextAreaTag categoriesForClass!Seaside-Canvas-Tags! !
!WATextAreaTag methodsFor!

columns: anInteger 	"This attribute specifies the visible width in average character widths. User agents may wrap visible text lines to keep long lines visible without the need for scrolling."	self attributes 		at: 'cols'		put: anInteger!

initialize	super initialize.	self rows: 'auto'; columns: 'auto'!

isClosed	^ false!

rows: anInteger 	"This attribute specifies the number of visible text lines. If more are entered, the widget scrolls."	self attributes 		at: 'rows'		put: anInteger!

tag	^ 'textarea'!

value	^ value!

value: aString	value := aString!

with: aBlock	super with: (value ifNil: [ aBlock ])! !
!WATextAreaTag categoriesFor: #columns:!attributes!public! !
!WATextAreaTag categoriesFor: #initialize!initialization!public! !
!WATextAreaTag categoriesFor: #isClosed!public!testing! !
!WATextAreaTag categoriesFor: #rows:!attributes!public! !
!WATextAreaTag categoriesFor: #tag!accessing!public! !
!WATextAreaTag categoriesFor: #value!attributes!public! !
!WATextAreaTag categoriesFor: #value:!attributes!public! !
!WATextAreaTag categoriesFor: #with:!public! !

