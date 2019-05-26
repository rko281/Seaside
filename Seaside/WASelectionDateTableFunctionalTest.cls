"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WASelectionDateTableFunctionalTest
	instanceVariableNames: 'table'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASelectionDateTableFunctionalTest guid: (GUID fromString: '{737ced95-1b44-4aa1-9fb4-51469a466bd3}')!
WASelectionDateTableFunctionalTest comment: ''!
!WASelectionDateTableFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WASelectionDateTableFunctionalTest methodsFor!

children	^ Array with: table!

initialize	super initialize.	table := WASelectionDateTable new		startDate: (Date year: 2012 month: 1 day: 1);		endDate: (Date year: 2012 month: 1 day: 6);		rowsAndDatesDisplay: [ :row :date |			(GRPrinter isoDate print: date), ' (', row greaseString, ')' ];		rows: (1 to: 10)		yourself! !
!WASelectionDateTableFunctionalTest categoriesFor: #children!hooks!public! !
!WASelectionDateTableFunctionalTest categoriesFor: #initialize!initialization!public! !

