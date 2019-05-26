"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAButtonFunctionalTest
	instanceVariableNames: 'input'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAButtonFunctionalTest guid: (GUID fromString: '{4008b8fe-f6d6-4f4a-9e94-854fd3ec30e6}')!
WAButtonFunctionalTest comment: ''!
!WAButtonFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WAButtonFunctionalTest methodsFor!

initialize	super initialize.	self input: 'a text'!

input	^ input!

input: aString	input := aString!

renderContentOn: html	html form: [		html div: [			self renderInputOn: html.			self renderSubmitOn: html.			self renderResetOn: html.			self renderPushOn: html ] ]!

renderInputOn: html	html table: [		html tableRow: [			html tableHeading: 'Value:'.			html tableData: self input ].		html tableRow: [			html tableHeading: 'Input:'.			html tableData: [				html textInput					on: #input of: self ] ] ]!

renderPushOn: html	html heading level2 with: 'Push'.	html paragraph: 'Clicking the button should not do anything.'.	html button bePush; with: 'Push'!

renderResetOn: html	html heading level2 with: 'Reset'.	html paragraph: 'Clicking the button should not submit the form and reset the value in "Input"'.	html button beReset; with: 'Reset'!

renderSubmitOn: html	html heading level2 with: 'Submit'.	html paragraph: 'Clicking the button should submit the form and update the value in "Value:" with the value in "Input"'.	html button with: 'Submit'! !
!WAButtonFunctionalTest categoriesFor: #initialize!initialization!public! !
!WAButtonFunctionalTest categoriesFor: #input!accessing!public! !
!WAButtonFunctionalTest categoriesFor: #input:!accessing!public! !
!WAButtonFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WAButtonFunctionalTest categoriesFor: #renderInputOn:!public!rendering! !
!WAButtonFunctionalTest categoriesFor: #renderPushOn:!public!rendering! !
!WAButtonFunctionalTest categoriesFor: #renderResetOn:!public!rendering! !
!WAButtonFunctionalTest categoriesFor: #renderSubmitOn:!public!rendering! !

