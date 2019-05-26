"Filed out from Dolphin Smalltalk 7"!

WAFileHandlerListing subclass: #WAHtmlFileHandlerListing
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHtmlFileHandlerListing guid: (GUID fromString: '{75785561-4823-4908-bc6c-df1aa826ba72}')!
WAHtmlFileHandlerListing comment: 'I am a helper class to provide the web based listing of file libraries and included files.'!
!WAHtmlFileHandlerListing categoriesForClass!Seaside-Environment! !
!WAHtmlFileHandlerListing methodsFor!

responseForLibraries	| title contents |	title := 'Index of ', handler url pathStringUnencoded.	contents := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :html | html title: title ];		render: [ :html |			html heading: title.			html unorderedList: [				handler libraries do: [ :each |					html listItem: [						html anchor							url: (each urlOf: '');							with: each name ] ] ] ].	context respond: [ :response |		response			contentType: WAMimeType textHtml;			nextPutAll: contents ]!

responseForLibrary: aLibrary	| title contents |	title := 'Index of ', aLibrary name.	contents := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :html | html title: title ];		render: [ :html |			html heading level: 1; with: title.			html table: [				html tableRow: [					html tableHeading: 'Name'.					html tableHeading: 'Size'.					html tableHeading: 'Description' ].				aLibrary fileSelectors do: [ :each |					html tableRow: [						html tableData: [							html anchor								url: (aLibrary urlOf: each);								with: (aLibrary asFilename: each) ].						html tableData: (aLibrary fileSizeOf: each).						html tableData: (aLibrary mimetypeOf: each) ] ] ] ].	context respond: [ :response |		response			contentType: WAMimeType textHtml;			nextPutAll: contents ]! !
!WAHtmlFileHandlerListing categoriesFor: #responseForLibraries!public!responding! !
!WAHtmlFileHandlerListing categoriesFor: #responseForLibrary:!public!responding! !

