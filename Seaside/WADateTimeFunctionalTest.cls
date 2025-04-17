"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WADateTimeFunctionalTest
	instanceVariableNames: 'date time message'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADateTimeFunctionalTest guid: (GUID fromString: '{2a20cfc3-2224-4010-8dde-f48f62a18e9e}')!

WADateTimeFunctionalTest comment: ''!

!WADateTimeFunctionalTest categoriesForClass!Unclassified! !

!WADateTimeFunctionalTest methodsFor!

date	^ date!

date: aDate	date := aDate!

renderContentOn: html	self renderDateTimeOn: html.	self renderDeadDateTimeOn: html!

renderDateTimeOn: html 	html heading		level3;		with: 'Form with #dateInput and #timeInput'.	html form		defaultAction: [ message := 'Default action: ' , date greaseString , ' ' , time greaseString ];		with: [			html div				id: #inputs;				with: [					" use #callback: and #with: "					html dateInput						callback: [ :value | self date: value ];						with: self date.					html space: 10.					" use #on:of: "					html timeInput						withSeconds;						on: #time of: self.					html break.					html text: message.					html break.					html submitButton 						callback: [ message := 'Button action: ' , date greaseString , ' ' , time greaseString ] ] ]!

renderDeadDateTimeOn: html	html heading		level: 3;		with: 'Div with #dateInput and #timeInput, no callback'.	html form: [		html div			id: #deadInputs;			with: [				html dateInput value: Date today.				html space: 10.				html timeInput withSeconds; with: Time now.				html break.				html withLineBreaks: 'The year portion of the date should be visible.					The seconds portion of the time should be visible.					Exactly one date and one time selector should be visible.' ] ]!

time	^ time!

time: aTime	time := aTime! !

!WADateTimeFunctionalTest categoriesForMethods!
date!accessing!public! !
date:!accessing!public! !
renderContentOn:!public!rendering! !
renderDateTimeOn:!public!rendering! !
renderDeadDateTimeOn:!public!rendering! !
time!accessing!public! !
time:!accessing!public! !
!

