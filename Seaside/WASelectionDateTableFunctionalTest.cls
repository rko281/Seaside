"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WASelectionDateTableFunctionalTest
	instanceVariableNames: 'table'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASelectionDateTableFunctionalTest guid: (GUID fromString: '{fd4ae532-8a51-4013-a76b-220201775265}')!

WASelectionDateTableFunctionalTest comment: ''!

!WASelectionDateTableFunctionalTest categoriesForClass!Seaside-Tests-Functional! !

!WASelectionDateTableFunctionalTest methodsFor!

children	^ Array with: table!

initialize	super initialize.	table := WASelectionDateTable new		startDate: (Date year: 2012 month: 1 day: 1);		endDate: (Date year: 2012 month: 1 day: 6);		rowsAndDatesDisplay: [ :row :date |			(GRPrinter isoDate print: date), ' (', row greaseString, ')' ];		rows: (1 to: 10)		yourself! !

!WASelectionDateTableFunctionalTest categoriesForMethods!
children!hooks!public! !
initialize!initialization!public! !
!

