"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WASelectionDateTableFunctionalTest
	instanceVariableNames: 'table'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASelectionDateTableFunctionalTest guid: (GUID fromString: '{e19d4ba4-97a9-4212-9e13-304027e1c736}')!

WASelectionDateTableFunctionalTest comment: ''!

!WASelectionDateTableFunctionalTest categoriesForClass!Unclassified! !

!WASelectionDateTableFunctionalTest methodsFor!

children	^ Array with: table!

initialize	super initialize.	table := WASelectionDateTable new		startDate: (Date year: 2012 month: 1 day: 1);		endDate: (Date year: 2012 month: 1 day: 6);		rowsAndDatesDisplay: [ :row :date |			(GRPrinter isoDate print: date), ' (', row greaseString, ')' ];		rows: (1 to: 10)		yourself! !

!WASelectionDateTableFunctionalTest categoriesForMethods!
children!hooks!public! !
initialize!initialization!public! !
!

