"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAHtml5InputTest
	instanceVariableNames: 'required autofocus pattern search range email url number datetimelocal datetime date time month week color telephone'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHtml5InputTest guid: (GUID fromString: '{c97356b9-ec9a-409f-aa3e-9f1a7ad545b1}')!

WAHtml5InputTest comment: ''!

!WAHtml5InputTest categoriesForClass!Unclassified! !

!WAHtml5InputTest methodsFor!

autofocus	^ autofocus!

autofocus: aString	autofocus := aString!

color	^ color!

color: aString	color := aString!

date	^ date!

date: anObject	date := anObject!

datetime	^ datetime!

datetime: anObject	datetime := anObject!

datetimelocal	^ datetimelocal!

datetimelocal: anObject	datetimelocal := anObject!

email	^ email!

email: anObject	email := anObject!

label	^ 'Html 5 Input'!

month	^ month!

month: anObject	month := anObject!

number	^ number!

number: anObject	number := anObject!

pattern	^ pattern!

pattern: aString	pattern := aString!

range	^ range!

range: anObject	range := anObject!

renderContentOn: html	html form: [		html table: [			html tableRow: [				html tableHeading: [ html label: 'required' ].				html tableData: [					html textInput						required;						on: #required of: self ] ].			html tableRow: [				html tableHeading: [ html label: 'autofocus' ].				html tableData: [					html textInput						autofocus;						on: #autofocus of: self ] ].			html tableRow: [				html tableHeading: [ html label: 'pattern ([0-9][A-Z]{3})' ].				html tableData: [					html textInput						pattern: '[0-9][A-Z]{3}';						on: #pattern of: self ] ].			html tableRow: [				html tableHeading: [ html label: 'search' ].				html tableData: [					html searchInput						autosave: 'Seaside';						placeholder: 'placeholder ...';						results: 5;						incremental: false;						on: #search of: self ] ].			html tableRow: [				html tableHeading: [ html label: 'range (6..12) by 2' ].				html tableData: [ html rangeInput					min: 6;					max: 12;					step: 2;					on: #range of: self.				html space.				html render: self range ] ].			html tableRow: [				html tableHeading: [ html label: 'email' ].				html tableData: [					html emailInput						on: #email of: self ].				html tableData: self email class name ].			html tableRow: [				html tableHeading: [ html label: 'url' ].				html tableData: [					html urlInput					on: #url of: self ].				html tableData: self url class name ].			html tableRow: [				html tableHeading: [ html label: 'number' ].				html tableData: [					html numberInput						on: #number of: self ] ].			html tableRow: [				html tableHeading: [ html label: 'datetimelocal' ].				html tableData: [					html dateTimeLocalInput						on: #datetimelocal of: self ] ].			html tableRow: [				html tableHeading: [ html label: 'datetime' ].				html tableData: [					html dateTimeInput						on: #datetime of: self ] ].			html tableRow: [				html tableHeading: [ html label: 'date' ].				html tableData: [					html dateInput5						on: #date of: self ] ].			html tableRow: [				html tableHeading: [ html label: 'time' ].				html tableData: [					html timeInput5						on: #time of: self ] ].			html tableRow: [				html tableHeading: [ html label: 'month' ].				html tableData: [					html monthInput						step: 3;						on: #month of: self ] ].			html tableRow: [				html tableHeading: [ html label: 'week' ].				html tableData: [					html weekInput						on: #week of: self ] ].			html tableRow: [				html tableHeading: [ html label: 'color' ].				html tableData: [					html colorInput						on: #color of: self ] ].			html tableRow: [				html tableHeading: [ html label: 'telephone' ].				html tableData: [					html telephoneInput						on: #telephone of: self ] ].			html tableRow: [				html tableHeading: [ html label: 'datalist' ].				html tableData: [ 					html textInput listId: #datalist.					html datalist id: #datalist; with: [						html option value: 'HTML 2'.						html option value: 'HTML 3.2'.						html option value: 'HTML 4.0'.						html option value: 'HTML 4.0.1'.						html option value: 'HTML 5'.						html option disabled: true; value: 'XHTML' ] ] ] ].		html submitButton ]!

required	^ required!

required: aString	required := aString!

search	^ search!

search: anObject	search := anObject!

telephone	^ telephone!

telephone: anObject	telephone := anObject!

time	^ time!

time: anObject	time := anObject!

url	^ url!

url: anObject	url := anObject!

week	^ week!

week: anObject	week := anObject! !

!WAHtml5InputTest categoriesForMethods!
autofocus!accessing!public! !
autofocus:!accessing!public! !
color!accessing!public! !
color:!accessing!public! !
date!accessing!public! !
date:!accessing!public! !
datetime!accessing!public! !
datetime:!accessing!public! !
datetimelocal!accessing!public! !
datetimelocal:!accessing!public! !
email!accessing!public! !
email:!accessing!public! !
label!accessing!public! !
month!accessing!public! !
month:!accessing!public! !
number!accessing!public! !
number:!accessing!public! !
pattern!accessing!public! !
pattern:!accessing!public! !
range!accessing!public! !
range:!accessing!public! !
renderContentOn:!public!rendering! !
required!accessing!public! !
required:!accessing!public! !
search!accessing!public! !
search:!accessing!public! !
telephone!accessing!public! !
telephone:!accessing!public! !
time!accessing!public! !
time:!accessing!public! !
url!accessing!public! !
url:!accessing!public! !
week!accessing!public! !
week:!accessing!public! !
!

