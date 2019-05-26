"Filed out from Dolphin Smalltalk 7"!

WACanvasWidget subclass: #WAInputDialog
	instanceVariableNames: 'label value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAInputDialog guid: (GUID fromString: '{adef7c8e-ef5a-4f94-8688-99266f93d0d5}')!
WAInputDialog comment: 'WAInputDialog generates a simple form with a text input field and a submit button. The instance variable "value" is used for initial value of the text field and hold the text entered by user. WAInputDialog answers with text entered by user (value of "value"). See WAComponent>>request:label:default: for sample use and easy way to use WAInputDialog.Instance Variables:	label	<String>	label of submit button	value	<Object | String>	'!
!WAInputDialog categoriesForClass!Seaside-Widgets-Components! !
!WAInputDialog methodsFor!

default: aString	value := aString!

label	^ label ifNil: [ label := 'OK' ]!

label: aString	label := aString!

renderContentOn: html	html form		defaultAction: [ self answer: value ];		with: [			html div: [				html textInput on: #value of: self.				html space.				html submitButton					callback: [ self answer: value ];					text: self label ] ]!

value	^ value!

value: aString	value := aString! !
!WAInputDialog categoriesFor: #default:!accessing!public! !
!WAInputDialog categoriesFor: #label!accessing!public! !
!WAInputDialog categoriesFor: #label:!accessing!public! !
!WAInputDialog categoriesFor: #renderContentOn:!public!rendering! !
!WAInputDialog categoriesFor: #value!accessing!public! !
!WAInputDialog categoriesFor: #value:!accessing!public! !

