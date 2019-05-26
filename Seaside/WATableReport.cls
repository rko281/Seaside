"Filed out from Dolphin Smalltalk 7"!

WACanvasWidget subclass: #WATableReport
	instanceVariableNames: 'sortColumn isReversed columns rowPeriod rowColors rows'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATableReport guid: (GUID fromString: '{63e3ff50-468f-42d1-b0d5-915541893053}')!
WATableReport comment: 'WATableReport presents tabular data. A WATableReport contains a collections of objects, one per row, and a collection of WAReportColumns. The WAReportColumn objects are configured to produce the text for the table cell based on the each row object. Each column has a header and an optional column sum. The table can be sorted on a column by clicking its header, unless the column handles rendering on the canvas itself. A table can be given a set of html colors (rowColors), used to colors the rows to aid in viewing. For more information see:	Example - WATableReportFunctionalTest (initialization code below)	WATableReport Tutorial - http://www.cdshaffer.com/david/Seaside/WATableReport/index.htmlInstance Variables:	columns	<Collection of WAReportColumn>	Each WAReportColumn produces the text for each table cell in a column  	isReversed	<Boolean>	true if the current sort column is to be sorted in reverse order	rowColors	<Collection of String/Symbol>	Each element is a string for an html color, which is used as a background color for table rows	rowPeriod	<Integer>	Each color in rowColors is used for rowPeriod consectutive rows before using the next row color.	rows	<Collection of Object>	Each element of the collection provides the data for a row in the table.	sortColumn	<WAValueHolder on WAReportColumn>	Column used to sort the the table rowsExample:	WATableReport new		rows: WAComponent allSubclasses asArray;		columns: (OrderedCollection new			add: (WAReportColumn				selector: #fullName title: ''Name''				onClick: [ :each | self inform: each description ]);			add: ((WAReportColumn				selector: #canBeRoot title: ''Can Be Root'')				sortBlock: [ :a :b | a ]);			add: (WAReportColumn				renderBlock: [ :each :html | html emphasis: each description ]				title: ''Description'');			yourself);		rowColors: #(lightblue lightyellow);		rowPeriod: 1;		yourself'!
!WATableReport categoriesForClass!Seaside-Widgets-Components! !
!WATableReport methodsFor!

chooseRow: aRow column: aColumn	aColumn chooseRow: aRow!

colorForRowNumber: aNumber	^ rowColors at: ((aNumber - 1 // rowPeriod) \\ rowColors size) + 1 ifAbsent: [ '#fff' ]!

columns: anArray	columns := anArray!

initialize	super initialize.	isReversed := false.	rows := #().	columns := #().	sortColumn := WAValueHolder new.	rowColors := #('#fff' '#eee').	rowPeriod := 1!

isReversed	^ isReversed!

renderColumn: aColumn row: aRow on: html	| text |	aColumn canRender ifTrue: [		html tableData			class: aColumn cssClass;			with: [ aColumn renderValue: aRow on: html ].		^ self ].	text := aColumn textForRow: aRow.	text isEmpty ifTrue: [ text := ' ' ].	html tableData		class: aColumn cssClass;		with: [			aColumn canChoose				ifFalse: [ html text: text ]				ifTrue: [					html anchor						callback: [ self chooseRow: aRow column: aColumn ];						with: text ] ]!

renderContentOn: html	html table: [		html tableHead: [ self renderTableHeaderOn: html ].		html tableFoot: [ self renderTableFooterOn: html ].		html tableBody: [ self renderRowsOn: html ] ]!

renderFooterForColumn: aColumn on: html	html tableData		class: aColumn cssClass;		with: (aColumn totalForRows: rows)!

renderHeaderForColumn: aColumn on: html	html tableHeading		class: aColumn cssClass;		with: [			aColumn canSort				ifTrue: [					html anchor						callback: [ self sortColumn: aColumn ];						with: aColumn title ]				ifFalse: [ html text: aColumn title ] ]!

renderRowNumber: index item: row on: html	html tableRow		style: 'background-color: ' , (self colorForRowNumber: index);		with: [			columns do: [ :each |				self renderColumn: each row: row on: html ] ]!

renderRowsOn: html 	self rows keysAndValuesDo: [ :index :row | 		self renderRowNumber: index item: row on: html ]!

renderTableFooterOn: html	html tableRow: [		columns do: [ :each |			self renderFooterForColumn: each on: html ] ]!

renderTableHeaderOn: html	html tableRow: [		columns do: [ :each |			self renderHeaderForColumn: each on: html ] ]!

reverse	isReversed := isReversed not!

rowColors: colorArray	rowColors := colorArray!

rowPeriod: aNumber	rowPeriod := aNumber!

rows	| r |	self sortColumn ifNil: [ ^ rows ].	r := self sortColumn sortRows: rows.	^ self isReversed		ifTrue: [ r reverse ]		ifFalse: [ r ]!

rows: anArray	rows := anArray!

sortColumn	^ sortColumn contents!

sortColumn: anObject	isReversed := anObject = self sortColumn and: [ isReversed not ].	sortColumn contents: anObject!

states	^ Array with: sortColumn! !
!WATableReport categoriesFor: #chooseRow:column:!private! !
!WATableReport categoriesFor: #colorForRowNumber:!private! !
!WATableReport categoriesFor: #columns:!accessing!public! !
!WATableReport categoriesFor: #initialize!initialization!public! !
!WATableReport categoriesFor: #isReversed!public!testing! !
!WATableReport categoriesFor: #renderColumn:row:on:!public!rendering! !
!WATableReport categoriesFor: #renderContentOn:!public!rendering! !
!WATableReport categoriesFor: #renderFooterForColumn:on:!public!rendering! !
!WATableReport categoriesFor: #renderHeaderForColumn:on:!public!rendering! !
!WATableReport categoriesFor: #renderRowNumber:item:on:!public!rendering! !
!WATableReport categoriesFor: #renderRowsOn:!public!rendering! !
!WATableReport categoriesFor: #renderTableFooterOn:!public!rendering! !
!WATableReport categoriesFor: #renderTableHeaderOn:!public!rendering! !
!WATableReport categoriesFor: #reverse!public!state variables! !
!WATableReport categoriesFor: #rowColors:!accessing!public! !
!WATableReport categoriesFor: #rowPeriod:!accessing!public! !
!WATableReport categoriesFor: #rows!accessing!public! !
!WATableReport categoriesFor: #rows:!accessing!public! !
!WATableReport categoriesFor: #sortColumn!public!state variables! !
!WATableReport categoriesFor: #sortColumn:!public!state variables! !
!WATableReport categoriesFor: #states!hooks!public! !

