"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WADelegationFunctionalTest
	instanceVariableNames: 'task'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADelegationFunctionalTest guid: (GUID fromString: '{1b87b37e-6d79-409b-9044-efdd23d9e6c8}')!

WADelegationFunctionalTest comment: 'http://code.google.com/p/seaside/issues/detail?id=71'!

!WADelegationFunctionalTest categoriesForClass!Unclassified! !

!WADelegationFunctionalTest methodsFor!

children	^ Array with: task!

initialize	super initialize.	task := WADelegationTask new!

renderContentOn: html	html orderedList: [		html listItem: 'Click button of Step 1'.		html listItem: 'Click back-button'.		html listItem: 'Click button of Step 1'.		html listItem: 'Click button of Step 2' ].	html paragraph: 'Step 1 and Step 2 should have consistent number of visible presenters. Especially there should never be two WAAnswerHandler decorations.'.		html heading level: 2; with: 'Application'.	html render: task.		html heading level: 2; with: 'Visible Presenters'.	html table: [		html tableRow: [			html tableHeading: 'Presenter'.			html tableHeading.			html tableHeading: 'Next'.			html tableHeading ].		self visiblePresentersDo: [ :each |			html tableRow: [				html tableData: each printString.				html tableData: each identityHash.				html tableData: (each isDecoration					ifTrue: [ each next printString ]					ifFalse: [ each decoration printString ]).				html tableData: (each isDecoration					ifTrue: [ each next identityHash ]					ifFalse: [ each decoration identityHash ]) ] ] ]! !

!WADelegationFunctionalTest categoriesForMethods!
children!hooks!public! !
initialize!initialization!public! !
renderContentOn:!public!rendering! !
!

