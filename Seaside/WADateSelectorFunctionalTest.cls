"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WADateSelectorFunctionalTest
	instanceVariableNames: 'beginDate endDate beginTime endTime beginDAT endDAT'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADateSelectorFunctionalTest guid: (GUID fromString: '{9ead05dc-9fe3-4365-81f2-3a2ea5819934}')!
WADateSelectorFunctionalTest comment: ''!
!WADateSelectorFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WADateSelectorFunctionalTest methodsFor!

children	^ OrderedCollection new		add: beginDate;		add: endDate;		add: beginTime;		add: endTime;		add: beginDAT;		add: endDAT;		yourself!

computeDuration	| dateDiff |	dateDiff := (endDAT dateAndTime asDate - beginDAT dateAndTime asDate) days.	dateDiff isZero 		ifFalse: [			self 				inform: dateDiff greaseString , ' day(s)'				onAnswer: [ ] ]		ifTrue: [			self 				inform: (endDAT dateAndTime asTime subtractTime: beginDAT dateAndTime asTime) asSeconds greaseString , ' second(s)'				onAnswer: [ ] ]!

initialize	super initialize.	beginDate := WADateSelector new.	endDate := WADateSelector new.	endDate date: (Date today addDays: 1).	beginTime := WATimeSelector new.	beginTime time: Time now.	endTime := WATimeSelector new.	endTime time: (beginTime time addSeconds: 3600).	beginDAT := WADateTimeSelector new.	endDAT := WADateTimeSelector new.	endDAT dateAndTime: beginDAT dateAndTime + 1 days + 1 hours!

renderContentOn: html	self renderDateSelectorsOn: html.	html horizontalRule.	self renderTimeSelectorsOn: html.	html horizontalRule.	self renderDateTimeSelectorsOn: html!

renderDateSelectorsOn: html 	html heading		level3;		with: 'Dates'.	html form: [		html table: [			html tableRow: [				html					tableData: 'From';					tableData: beginDate ].			html tableRow: [				html					tableData: 'To';					tableData: endDate ] ].		html div: [			html submitButton				callback: [					self 						inform: (endDate date - beginDate date) days greaseString , ' day(s)'						onAnswer: [ ] ];				text: 'Compute duration' ] ]!

renderDateTimeSelectorsOn: html	html heading level3; with: 'Dates and Times'.	html form: [		html table: [			html tableRow: [				html tableData: 'From'; tableData: beginDAT ].			html tableRow: [				html tableData: 'To'; tableData: endDAT ] ].		html div: [			html submitButton				callback: [ self computeDuration ];				text: 'Compute duration' ] ]!

renderTimeSelectorsOn: html 	html heading		level3;		with: 'Times'.	html form: [		html table: [			html tableRow: [				html					tableData: 'From';					tableData: beginTime ].			html tableRow: [				html					tableData: 'To';					tableData: endTime ] ].		html div: [			html submitButton				callback: [					self 						inform: (endTime time subtractTime: beginTime time) asSeconds greaseString , ' seconds(s)'						onAnswer: [ ] ];				text: 'Compute duration' ] ]! !
!WADateSelectorFunctionalTest categoriesFor: #children!hooks!public! !
!WADateSelectorFunctionalTest categoriesFor: #computeDuration!actions!public! !
!WADateSelectorFunctionalTest categoriesFor: #initialize!initialization!public! !
!WADateSelectorFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WADateSelectorFunctionalTest categoriesFor: #renderDateSelectorsOn:!public!rendering! !
!WADateSelectorFunctionalTest categoriesFor: #renderDateTimeSelectorsOn:!public!rendering! !
!WADateSelectorFunctionalTest categoriesFor: #renderTimeSelectorsOn:!public!rendering! !

