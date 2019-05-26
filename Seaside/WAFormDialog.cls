"Filed out from Dolphin Smalltalk 7"!

WACanvasWidget subclass: #WAFormDialog
	instanceVariableNames: 'validationError form'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFormDialog guid: (GUID fromString: '{ed80b7eb-6cef-4e1e-ba7f-02816e6142c5}')!
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
!WAFormDialog categoriesFor: #addForm!actions!public! !
!WAFormDialog categoriesFor: #addFormByDefault!public!testing! !
!WAFormDialog categoriesFor: #buttons!accessing!public! !
!WAFormDialog categoriesFor: #defaultButton!accessing!public! !
!WAFormDialog categoriesFor: #divClass!accessing!public! !
!WAFormDialog categoriesFor: #initialize!initialization!public! !
!WAFormDialog categoriesFor: #isValid!public!testing! !
!WAFormDialog categoriesFor: #model!accessing!public! !
!WAFormDialog categoriesFor: #ok!actions!public! !
!WAFormDialog categoriesFor: #removeForm!actions!public! !
!WAFormDialog categoriesFor: #renderContentOn:!public!rendering! !
!WAFormDialog categoriesFor: #renderDialogOn:!public!rendering! !
!WAFormDialog categoriesFor: #renderSpacerRowOn:!public!rendering! !
!WAFormDialog categoriesFor: #renderValidationError:on:!public!rendering! !
!WAFormDialog categoriesFor: #validationError:!public!validation! !

