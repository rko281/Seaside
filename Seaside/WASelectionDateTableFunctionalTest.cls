"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WASelectionDateTableFunctionalTest
	instanceVariableNames: 'table'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASelectionDateTableFunctionalTest guid: (GUID fromString: '{6c18f817-f762-43cd-a69b-65a972aee2f2}')!
WASelectionDateTableFunctionalTest comment: ''!
!WASelectionDateTableFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WASelectionDateTableFunctionalTest methodsFor!

children	^ Array with: table!

initialize	super initialize.	table := WASelectionDateTable new		startDate: (Date year: 2012 month: 1 day: 1);		endDate: (Date year: 2012 month: 1 day: 6);		rowsAndDatesDisplay: [ :row :date |			(GRPrinter isoDate print: date), ' (', row greaseString, ')' ];		rows: (1 to: 10)		yourself! !
!WASelectionDateTableFunctionalTest categoriesFor: #children!hooks!public! !
!WASelectionDateTableFunctionalTest categoriesFor: #initialize!initialization!public! !

