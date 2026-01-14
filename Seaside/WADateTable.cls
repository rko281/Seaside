"Filed out from Dolphin Smalltalk"!

WACanvasWidget subclass: #WADateTable
	instanceVariableNames: 'rows startDate endDate datesCache'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADateTable guid: (GUID fromString: '{a924f33b-de66-4543-a021-0348768df62c}')!

WADateTable comment: 'WADateTable renders a table containing dates from startDate to endDate. The table contains one column for each date from startDate to endDate. The top row of the table groups columns by month and labels each month (January 2008). The second row contains the date of each month (1-31) in the date range. The table also contains "rows size" rows. The first column of these rows contains the contents of the instance variable "rows". Rest of the cells are empty.Basically this is an abstract superclass for WASelectionDateTableInstance Variables:	datesCache	<(SequenceableCollection of: Date>	contains a date object for each date in the range startDate-endDate	endDate	<Date>	end date of the range displayed in the table	rows	<SequenceableCollection>	labels of the rows	startDate	<Date>	start date of the range displayed in the table'!

!WADateTable categoriesForClass!Seaside-Widgets-Components! !

!WADateTable methodsFor!

datesDo: aBlock separatedBy: monthlyBlock	| month |	month := datesCache first monthIndex.	datesCache do: [ :date |		date monthIndex = month ifFalse: [ month := date monthIndex. monthlyBlock value ].		aBlock value: date ].	monthlyBlock value!

endDate: aDate	endDate := aDate.	self updateDatesCache!

monthsAndLengthsDo: aTwoArgumentBlock	| count last |	count := 0.	last := nil.	self		datesDo: [ :each |			count := count + 1.			last := each ]		separatedBy: [			aTwoArgumentBlock value: last month value: count.			count := 0 ]!

renderCellForDate: aDate row: anObject index: aNumber on: html	html tableData: [ html space ]!

renderContentOn: html	html table		class: 'DateTable';		with: [			html tableRow: [				self renderMonthHeadingsOn: html ].			html tableRow: [				self renderDayHeadingsOn: html ].			rows keysAndValuesDo: [ :index :each | 				html tableRow: [					self						renderRow: each						index: index						on: html ] ] ]!

renderDayHeadingsOn: html	self renderHeadingSpacerOn: html.	self		datesDo: [ :date |			html tableHeading				class: 'DayHeading';				with: date dayOfMonth ]		separatedBy: [ self renderHeadingSpacerOn: html ]!

renderHeadingForRow: anObject on: html	html tableHeading		class: 'RowHeading';		with: anObject!

renderHeadingSpacerOn: html	html tableData: ''!

renderMonthHeadingsOn: html	self monthsAndLengthsDo: [ :month :length |		self renderHeadingSpacerOn: html.		html tableHeading			colSpan: length;			class: 'MonthHeading';			with: [				html text: month name.				html space.				html text: month year ] ]!

renderRow: anObject index: aNumber on: html	self renderHeadingForRow: anObject on: html.	self		datesDo: [ :date | 			self				renderCellForDate: date				row: anObject				index: aNumber				on: html ]		separatedBy: [ self renderHeadingSpacerOn: html ]!

rows: aCollection	rows := aCollection!

startDate: aDate	startDate := aDate.	self updateDatesCache!

updateDatesCache	| date |	(startDate isNil or: [ endDate isNil ])		ifTrue: [ ^ self ].	datesCache := OrderedCollection new.	date := startDate.	[ date > endDate ] whileFalse: [ 		datesCache add: date.		date := date next ]! !

!WADateTable categoriesForMethods!
datesDo:separatedBy:!enumerating!public! !
endDate:!accessing!public! !
monthsAndLengthsDo:!enumerating!public! !
renderCellForDate:row:index:on:!public!rendering! !
renderContentOn:!public!rendering! !
renderDayHeadingsOn:!public!rendering! !
renderHeadingForRow:on:!public!rendering! !
renderHeadingSpacerOn:!public!rendering! !
renderMonthHeadingsOn:!public!rendering! !
renderRow:index:on:!public!rendering! !
rows:!accessing!public! !
startDate:!accessing!public! !
updateDatesCache!actions!public! !
!

