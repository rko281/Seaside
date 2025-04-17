"Filed out from Dolphin Smalltalk"!

WADateTable subclass: #WASelectionDateTable
	instanceVariableNames: 'cellBlock dateSelectionStart dateSelectionEnd rowSelectionStart rowSelectionEnd'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASelectionDateTable guid: (GUID fromString: '{08e8e42b-82cc-4a01-a6e8-78e7271a0019}')!

WASelectionDateTable comment: 'WASelectionDateTable renders a table containing dates and rows. A user can select a continuous block of cells in the table.  The table contains one column for each date from startDate to endDate. The top row of the table groups columns by month and labels each month (January 2008). The second row contains the date of each month  (1-30) in the date range. The table also contains "rows size" rows. The first column of these rows contains the contents of the instance variable "rows". Rest of the cells contents are given by "cellBlock". Instance Variables:	cellBlock	<BlockClosure [:rowIndex :date | ]>	returns text for the cell in row "rowIndex" and column for "date"	dateSelectionEnd	<Date>	last selected date	dateSelectionStart	<Date>	first selected date	rowSelectionEnd	<Integer>	index of last selected row	rowSelectionStart	<Integer>	index of first selected row'!

!WASelectionDateTable categoriesForClass!Components! !

!WASelectionDateTable methodsFor!

clearSelection	dateSelectionStart := dateSelectionEnd := rowSelectionStart := rowSelectionEnd := nil!

colorForDate: aDate rowIndex: aNumber	^ (self hasSelection and: [ self selectionContainsDate: aDate rowIndex: aNumber ])		ifTrue: [ 'lightgrey' ]		ifFalse: [ 'white' ]!

endDate: aDate	self clearSelection.	super endDate: aDate!

endDateSelection	^ dateSelectionStart isNil		ifFalse: [ dateSelectionStart max: dateSelectionEnd ]!

endRow	^ rowSelectionStart max: rowSelectionEnd!

endRowSelection	^ rowSelectionStart isNil		ifFalse: [ rows at: (rowSelectionStart max: rowSelectionEnd) ]!

hasSelection	^ dateSelectionStart notNil!

renderCellForDate: aDate row: anObject index: aNumber on: html	html tableData		style: 'text-align: center; background-color: ', (self colorForDate: aDate rowIndex: aNumber);		with: [			html anchor				callback: [ self selectDate: aDate rowIndex: aNumber ];				with: (cellBlock value: anObject value: aDate) ]!

rows: aCollection	self clearSelection.	super rows: aCollection!

rowsAndDatesDisplay: aBlock	cellBlock := aBlock!

selectAll	dateSelectionStart := startDate.	dateSelectionEnd := endDate.	rowSelectionStart := 1.	rowSelectionEnd := rows size!

selectDate: aDate rowIndex: rowIndex	self hasSelection		ifFalse: [ 			dateSelectionStart := dateSelectionEnd := aDate.			rowSelectionStart := rowSelectionEnd := rowIndex ]		ifTrue: [ 			dateSelectionEnd := aDate.			rowSelectionEnd := rowIndex ]!

selectedRows	^ rows copyFrom: self startRow to: self endRow!

selectionContainsDate: aDate rowIndex: aNumber	^ ((aDate between: dateSelectionStart and: dateSelectionEnd)		or: [ aDate between: dateSelectionEnd and: dateSelectionStart ])		and: [ 			(aNumber between: rowSelectionStart and: rowSelectionEnd)				or: [ aNumber between: rowSelectionEnd and: rowSelectionStart ] ]!

startDate: aDate	self clearSelection.	super startDate: aDate!

startDateSelection	^ dateSelectionStart isNil		ifFalse: [ dateSelectionStart min: dateSelectionEnd ]!

startRow	^ rowSelectionStart min: rowSelectionEnd!

startRowSelection	^ rowSelectionStart isNil		ifFalse: [ rows at: (rowSelectionStart min: rowSelectionEnd) ]! !

!WASelectionDateTable categoriesForMethods!
clearSelection!public!selecting! !
colorForDate:rowIndex:!private! !
endDate:!accessing!public! !
endDateSelection!private! !
endRow!private! !
endRowSelection!private! !
hasSelection!public!testing! !
renderCellForDate:row:index:on:!public!rendering! !
rows:!accessing!public! !
rowsAndDatesDisplay:!private! !
selectAll!editor access!public! !
selectDate:rowIndex:!private! !
selectedRows!private! !
selectionContainsDate:rowIndex:!private! !
startDate:!accessing!public! !
startDateSelection!private! !
startRow!private! !
startRowSelection!private! !
!

