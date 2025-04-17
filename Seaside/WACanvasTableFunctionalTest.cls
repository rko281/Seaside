"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WACanvasTableFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACanvasTableFunctionalTest guid: (GUID fromString: '{3a72f1f7-3870-4f3c-9771-f93e11646d06}')!

WACanvasTableFunctionalTest comment: ''!

!WACanvasTableFunctionalTest categoriesForClass!Unclassified! !

!WACanvasTableFunctionalTest methodsFor!

entities	^ #(		('non-breaking space' ('&nbsp;' '&#160;' '&#xA0;'))		('ampersand' ('&amp;' '&#38;' '&#x26;'))		('less than sign' ('&lt;' '&#60;' '&#x3C;'))		('greater than sign' ('&gt;' '&#62;' '&#x3E;'))		('euro sign' ('&euro;' '&#8364;' '&#x20AC;'))	)!

exchangeRates	^ #(		('EUR' 1.70)		('USD' 1.30)		('DKK' 23.36)		('SEK' 19.32)	)!

renderContentOn: html	html div		class: 'wacanvastabletest';		with: [			self renderEntityTableOn: html.			self renderCurrencyTableOn: html ]!

renderCurrencyTableBodyOn: html  html tableBody    title: 'Table body';    with: [ 			| numberPrinter |			numberPrinter := GRNumberPrinter new precision: 2.          self exchangeRates            do: [ :each |               html                tableRow: [                   html tableHeading: each first.                  html tableData: (numberPrinter print: each second) ] ] ]!

renderCurrencyTableHeadOn: html	html tableHead		title: 'Table header';		with: [			html tableRow: [				html tableHeading: 'Currency'.				html tableHeading: 'Rate' ] ]!

renderCurrencyTableOn: html	html table 		summary: 'This table shows exchange rates against the Swiss Franc';		with: [			html tableCaption: 'Currencies against Swiss Franc (CHF)'.			html tableColumnGroup.			html tableColumnGroup.			self renderCurrencyTableHeadOn: html.			self renderCurrencyTableBodyOn: html ]!

renderEntityTableBodyOn: html	html tableBody: [		self entities do: [ :eachEntity |			html tableRow: [				html tableHeading scope: 'row';					with: eachEntity first.				eachEntity second do: [ :each |					html tableData: each ].				eachEntity second do: [ :each |					html tableData						class: 'wacanvastabletest-aligncenter';						with: [ html html: each ] ] ] ] ]!

renderEntityTableColumnGroupsOn: html	html tableColumnGroup.	html tableColumnGroup span: 3.	html tableColumnGroup span: 3; class: 'wacanvastabletest-aligncenter'!

renderEntityTableFootOn: html	html tableFoot: [		html tableRow: [			html tableData colSpan: 7;				class: 'wacanvastabletest-aligncenter';				with: '5 entities shown' ] ]!

renderEntityTableHeadOn: html	html tableHead: [		html tableRow: [			#('Character' 'Entity' 'Decimal' 'Hex') do: [ :each |				html tableHeading					scope: 'col'; rowSpan: 2;					with: each ].			html tableHeading				scope: 'colgroup'; colSpan: 3;				with: 'Rendering in Your Browser' ].		html tableRow: [			#('Entity' 'Decimal' 'Hex') do: [ :each |				html tableHeading scope: 'col'; with: each ] ] ]!

renderEntityTableOn: html	html table 		summary: 'This table gives the character entity reference, ',                'decimal character reference, and hexadecimal character ',                'reference for 8-bit Latin-1 characters, as well as the ',                'rendering of each in your browser.';		with: [			html tableCaption: 'HTML 4.0 entities'.			self renderEntityTableColumnGroupsOn: html.			self renderEntityTableHeadOn: html.			self renderEntityTableFootOn: html.			self renderEntityTableBodyOn: html ]!

style	^ '.wacanvastabletest table {	border-collapse: collapse;	border:1px solid black;	margin:0px auto; /* center */}.wacanvastabletest caption {	margin:0px auto; /* center */}.wacanvastabletest caption {	font-weight: bold;	padding: 0.5em 0 1em 0;}.wacanvastabletest td, .wacanvastabletest th {	padding: 3px;	border:1px solid black;}.wacanvastabletest-aligncenter { 	text-align: center;}'! !

!WACanvasTableFunctionalTest categoriesForMethods!
entities!public!samples! !
exchangeRates!public!samples! !
renderContentOn:!public!rendering! !
renderCurrencyTableBodyOn:!public!rendering! !
renderCurrencyTableHeadOn:!public!rendering! !
renderCurrencyTableOn:!public!rendering! !
renderEntityTableBodyOn:!public!rendering! !
renderEntityTableColumnGroupsOn:!public!rendering! !
renderEntityTableFootOn:!public!rendering! !
renderEntityTableHeadOn:!public!rendering! !
renderEntityTableOn:!public!rendering! !
style!hooks!public! !
!

