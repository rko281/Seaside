"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WACanvasTableFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACanvasTableFunctionalTest guid: (GUID fromString: '{8f16ffbd-976d-47b8-a040-a2f191fb8240}')!
WACanvasTableFunctionalTest comment: ''!
!WACanvasTableFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WACanvasTableFunctionalTest methodsFor!

entities	^ #(		('non-breaking space' ('&nbsp;' '&#160;' '&#xA0;'))		('ampersand' ('&amp;' '&#38;' '&#x26;'))		('less than sign' ('&lt;' '&#60;' '&#x3C;'))		('greater than sign' ('&gt;' '&#62;' '&#x3E;'))		('euro sign' ('&euro;' '&#8364;' '&#x20AC;'))	)!

exchangeRates	^ #(		('EUR' 1.70)		('USD' 1.30)		('DKK' 23.36)		('SEK' 19.32)	)!

renderContentOn: html	html div		class: 'wacanvastabletest';		with: [			self renderEntityTableOn: html.			self renderCurrencyTableOn: html ]!

renderCurrencyTableBodyOn: html	html tableBody 		title: 'Table body';		with: [			self exchangeRates do: [ :each |				html tableRow: [					html tableHeading: each first.					"https://bugzilla.mozilla.org/show_bug.cgi?id=2212					https://bugzilla.mozilla.org/show_bug.cgi?id=915"					html tableData						align: 'char';						character: $.;						with: each second ] ] ]!

renderCurrencyTableHeadOn: html	html tableHead		title: 'Table header';		with: [			html tableRow: [				html tableHeading: 'Currency'.				html tableHeading: 'Rate' ] ]!

renderCurrencyTableOn: html	html table 		summary: 'This table shows exchange rates against the Swiss Franc';		with: [			html tableCaption: 'Currencies against Swiss Franc (CHF)'.			html tableColumnGroup.			html tableColumnGroup width: '100px'; align: 'char'; character: $..			self renderCurrencyTableHeadOn: html.			self renderCurrencyTableBodyOn: html ]!

renderEntityTableBodyOn: html	html tableBody: [		self entities do: [ :eachEntity |			html tableRow: [				html tableData scope: 'row';					with: eachEntity first.				eachEntity second do: [ :each |					html tableData: each ].				eachEntity second do: [ :each |					html tableData align: 'center';						with: [ html html: each ] ] ] ] ]!

renderEntityTableColumnGroupsOn: html	html tableColumnGroup.	html tableColumnGroup span: 3.	html tableColumnGroup span: 3; align: 'center'!

renderEntityTableFootOn: html	html tableFoot: [		html tableRow: [			html tableData align: 'center'; colSpan: 7;				with: '5 entities shown' ] ]!

renderEntityTableHeadOn: html	html tableHead: [		html tableRow: [			#('Character' 'Entity' 'Decimal' 'Hex') do: [ :each |				html tableHeading					scope: 'col'; rowSpan: 2;					with: each ].			html tableHeading				scope: 'colgroup'; colSpan: 3;				with: 'Rendering in Your Browser' ].		html tableRow: [			#('Entity' 'Decimal' 'Hex') do: [ :each |				html tableHeading scope: 'col'; with: each ] ] ]!

renderEntityTableOn: html	html table 		summary: 'This table gives the character entity reference, ',                'decimal character reference, and hexadecimal character ',                'reference for 8-bit Latin-1 characters, as well as the ',                'rendering of each in your browser.';		with: [			html tableCaption: 'HTML 4.0 entities'.			self renderEntityTableColumnGroupsOn: html.			self renderEntityTableHeadOn: html.			self renderEntityTableFootOn: html.			self renderEntityTableBodyOn: html ]!

style	^ '.wacanvastabletest table {	border-collapse: collapse;	border:1px solid black;	margin:0px auto; /* center */}.wacanvastabletest caption {	margin:0px auto; /* center */}.wacanvastabletest caption {	font-weight: bold;	padding: 0.5em 0 1em 0;}.wacanvastabletest td, .wacanvastabletest th {	padding: 3px;	border:1px solid black;}'! !
!WACanvasTableFunctionalTest categoriesFor: #entities!public!samples! !
!WACanvasTableFunctionalTest categoriesFor: #exchangeRates!public!samples! !
!WACanvasTableFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WACanvasTableFunctionalTest categoriesFor: #renderCurrencyTableBodyOn:!public!rendering! !
!WACanvasTableFunctionalTest categoriesFor: #renderCurrencyTableHeadOn:!public!rendering! !
!WACanvasTableFunctionalTest categoriesFor: #renderCurrencyTableOn:!public!rendering! !
!WACanvasTableFunctionalTest categoriesFor: #renderEntityTableBodyOn:!public!rendering! !
!WACanvasTableFunctionalTest categoriesFor: #renderEntityTableColumnGroupsOn:!public!rendering! !
!WACanvasTableFunctionalTest categoriesFor: #renderEntityTableFootOn:!public!rendering! !
!WACanvasTableFunctionalTest categoriesFor: #renderEntityTableHeadOn:!public!rendering! !
!WACanvasTableFunctionalTest categoriesFor: #renderEntityTableOn:!public!rendering! !
!WACanvasTableFunctionalTest categoriesFor: #style!hooks!public! !

