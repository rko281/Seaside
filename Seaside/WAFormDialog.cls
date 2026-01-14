"Filed out from Dolphin Smalltalk"!

WACanvasWidget subclass: #WAFormDialog
	instanceVariableNames: 'validationError form'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFormDialog guid: (GUID fromString: '{8d2ca4f4-6583-42df-b81b-7eb40fe3b0e7}')!

WAFormDialog comment: 'WAFormDialog is an empty html form. Used in WAComponent>>inform: to create a dialog component that displays text and an "Ok" button to close the component. See subclasses for sample usage & more functionality.Instance Variables:	form	<WAFormDecoration> Decorator that generates form tags	validationError	<String>	Text descriping invalid data entered by user. Displayed when not nil. Set to nil when user submits form.'!

!WAFormDialog categoriesForClass!Seaside-Widgets-Components! !

!WAFormDialog methodsFor!

addForm	form := WAFormDecoration new buttons: self buttons.	self addDecoration: form!

addFormByDefault	^ true!

buttons	^ #(ok)!

defaultButton	^ self buttons first!

divClass	^ self class name!

initialize	super initialize.	self addFormByDefault		ifTrue: [ self addForm ]!

isValid	^ validationError isNil!

model	^ self!

ok	self answer!

removeForm	form isNil		ifFalse: [ self removeDecoration: form ]!

renderContentOn: html	html hiddenInput 		callback: [ validationError := nil ].	validationError isNil		ifFalse: [ self renderValidationError: validationError on: html ].	html div		class: self divClass;		with: [ self renderDialogOn: html ]!

renderDialogOn: html!

renderSpacerRowOn: html	html div class: 'dialog-spacer'; with: [ html space ]!

renderValidationError: aString on: html	html span class: 'dialog-validation'; with: aString!

validationError: aString	validationError := aString! !

!WAFormDialog categoriesForMethods!
addForm!actions!public! !
addFormByDefault!public!testing! !
buttons!accessing!public! !
defaultButton!accessing!public! !
divClass!accessing!public! !
initialize!initialization!public! !
isValid!public!testing! !
model!accessing!public! !
ok!actions!public! !
removeForm!actions!public! !
renderContentOn:!public!rendering! !
renderDialogOn:!public!rendering! !
renderSpacerRowOn:!public!rendering! !
renderValidationError:on:!public!rendering! !
validationError:!public!validation! !
!

