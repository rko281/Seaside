"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WADateTimeFunctionalTest
	instanceVariableNames: 'date time message'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADateTimeFunctionalTest guid: (GUID fromString: '{de20399c-3cc7-4ef5-aa93-2ac9ee8df422}')!
WADateTimeFunctionalTest comment: ''!
!WADateTimeFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WADateTimeFunctionalTest methodsFor!

date	^ date!

date: aDate	date := aDate!

renderContentOn: html	self renderDateTimeOn: html.	self renderDeadDateTimeOn: html!

renderDateTimeOn: html 	html heading		level3;		with: 'Form with #dateInput and #timeInput'.	html form		defaultAction: [ message := 'Default action: ' , date greaseString , ' ' , time greaseString ];		with: [			html div: [				" use #callback: and #with: "				html dateInput					callback: [ :value | self date: value ];					with: self date.				html space: 10.				" use #on:of: "				html timeInput					withSeconds;					on: #time of: self.				html break.				html text: message.				html break.				html submitButton 					callback: [ message := 'Button action: ' , date greaseString , ' ' , time greaseString ] ] ]!

renderDeadDateTimeOn: html	html heading		level: 3;		with: 'Div with #dateInput and #timeInput, no callback'.	html form: [		html div: [			html dateInput value: Date today.			html space: 10.			html timeInput withSeconds; with: Time now.			html break.			html withLineBreaks: 'The year portion of the date should be visible.				The seconds portion of the time should be visible.				Exactly one date and one time selector should be visible.' ] ]!

time	^ time!

time: aTime	time := aTime! !
!WADateTimeFunctionalTest categoriesFor: #date!accessing!public! !
!WADateTimeFunctionalTest categoriesFor: #date:!accessing!public! !
!WADateTimeFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WADateTimeFunctionalTest categoriesFor: #renderDateTimeOn:!public!rendering! !
!WADateTimeFunctionalTest categoriesFor: #renderDeadDateTimeOn:!public!rendering! !
!WADateTimeFunctionalTest categoriesFor: #time!accessing!public! !
!WADateTimeFunctionalTest categoriesFor: #time:!accessing!public! !

