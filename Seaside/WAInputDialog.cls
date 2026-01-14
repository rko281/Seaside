"Filed out from Dolphin Smalltalk"!

WACanvasWidget subclass: #WAInputDialog
	instanceVariableNames: 'label value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAInputDialog guid: (GUID fromString: '{65c87c78-472a-4a8b-aec9-10b0942f0d63}')!

WAInputDialog comment: 'WAInputDialog generates a simple form with a text input field and a submit button. The instance variable "value" is used for initial value of the text field and hold the text entered by user. WAInputDialog answers with text entered by user (value of "value"). See WAComponent>>request:label:default: for sample use and easy way to use WAInputDialog.Instance Variables:	label	<String>	label of submit button	value	<Object | String>	'!

!WAInputDialog categoriesForClass!Seaside-Widgets-Components! !

!WAInputDialog methodsFor!

default: aString	value := aString!

label	^ label ifNil: [ label := 'OK' ]!

label: aString	label := aString!

renderContentOn: html	html form		defaultAction: [ self answer: value ];		with: [			html div: [				html textInput on: #value of: self.				html space.				html submitButton					callback: [ self answer: value ];					text: self label ] ]!

value	^ value!

value: aString	value := aString! !

!WAInputDialog categoriesForMethods!
default:!accessing!public! !
label!accessing!public! !
label:!accessing!public! !
renderContentOn:!public!rendering! !
value!accessing!public! !
value:!accessing!public! !
!

