"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAModelFunctionalTest
	instanceVariableNames: 'state user pass test'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAModelFunctionalTest guid: (GUID fromString: '{f4bf7744-23a1-4db9-849f-a5088cb11446}')!

WAModelFunctionalTest comment: ''!

!WAModelFunctionalTest categoriesForClass!Unclassified! !

!WAModelFunctionalTest methodsFor!

logoff	state := #OFF.	test ifTrue: [ self inform: 'Logged off' onAnswer: [ ] ]!

logon	user isEmptyOrNil		ifTrue:			[ self inform: 'Nope !!' onAnswer: [ ] ]		ifFalse:			[ state := #ON.			test ifTrue: [ self inform: 'Logged on' onAnswer: [ ] ] ]!

pass	"Answer the value of pass"	^ pass!

pass: anObject	"Set the value of pass"	pass := anObject!

renderButtonOn: html	| action |	action := state == #ON ifTrue: [ #logoff ] ifFalse: [ #logon ].	html div: [		"div for validation"		html submitButton			on: action of: self ]!

renderContentOn: html	html form		id: 'myform';		with: [			html table: [				self renderUsernameOn: html.				self renderPasswordOn: html.				self renderFeedbackOn: html ].			html div: [				self renderButtonOn: html ] ]!

renderFeedbackOn: html	html tableRow: [		html tableData: [			html label				for: #withFeedback;				with: 'With Feedback:' ].		html tableData: [			html checkbox				id: #withFeedback;				on: #test of: self ] ]!

renderPasswordOn: html	html tableRow: [		html tableData: [			html label				for: #pass;				with: 'Password:' ].		html tableData: [			html passwordInput				id: #pass;				on: #pass of: self ] ]!

renderUsernameOn: html	html tableRow: [		html tableData: [			html label				for: #userid;				with: 'Username:' ].		html tableData: [			html textInput				id: #userid;				on: #user of: self ] ]!

test	"Answer the value of test"	^ test!

test: anObject	"Set the value of test"	test := anObject!

user	"Answer the value of user"	^ user!

user: anObject	"Set the value of user"	user := anObject! !

!WAModelFunctionalTest categoriesForMethods!
logoff!actions!public! !
logon!actions!public! !
pass!accessing!public! !
pass:!accessing!public! !
renderButtonOn:!public!rendering! !
renderContentOn:!public!rendering! !
renderFeedbackOn:!public!rendering! !
renderPasswordOn:!public!rendering! !
renderUsernameOn:!public!rendering! !
test!accessing!public! !
test:!accessing!public! !
user!accessing!public! !
user:!accessing!public! !
!

