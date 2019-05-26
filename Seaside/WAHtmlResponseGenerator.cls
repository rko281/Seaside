"Filed out from Dolphin Smalltalk 7"!

WAResponseGenerator subclass: #WAHtmlResponseGenerator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHtmlResponseGenerator guid: (GUID fromString: '{0224b9a5-b9e8-4c11-a72e-f003ce05d592}')!
WAHtmlResponseGenerator comment: 'This subclass overrides certain generation methods to create prettier HTML responses, instead of plain text.'!
!WAHtmlResponseGenerator categoriesForClass!Seaside-Environment! !
!WAHtmlResponseGenerator methodsFor!

forbidden	self ifResetPossible: [		self response			forbidden;			contentType: WAMimeType textHtml ].	self response		nextPutAll: (WAHtmlCanvas builder			fullDocument: true;			rootBlock: [ :root | root title: 'Forbidden' ];			render: [ :html |				html heading: [					html text: 'Error: you are forbidden to access "'.					html render: self request url.					html text: '"' ] ])!

notFound	self ifResetPossible: [		self response			notFound;			contentType: WAMimeType textHtml ].	self response		nextPutAll: (WAHtmlCanvas builder			fullDocument: true;			rootBlock: [ :root | root title: 'Not Found' ];			render: [ :html |				html heading: [					html text: 'Error: "'.					html render: self request url.					html text: '" not found' ] ])!

pageExpired	self ifResetPossible: [		self response			doNotCache;			contentType: WAMimeType textHtml ].	self response		nextPutAll: (WAHtmlCanvas builder			fullDocument: true;			rootBlock: [ :root | root title: 'Page Expired' ];			render: [ :html | 				html heading: 'Page Expired'.				html paragraph: 'This page has expired. Please use the back-button to navigate to the last valid page.' ])!

refreshAfter: aNumber location: aUrlOrString message: aString	self ifResetPossible: [	self response		contentType: WAMimeType textHtml;		refreshAfter: aNumber			location: aUrlOrString ].	self response		nextPutAll: (WAHtmlCanvas builder				fullDocument: true;				render: [ :html | 					html heading: aString.					html paragraph: [						html text: 'You are being redirected to '.						html anchor							url: aUrlOrString;							with: aUrlOrString greaseString ] ])! !
!WAHtmlResponseGenerator categoriesFor: #forbidden!generation!public! !
!WAHtmlResponseGenerator categoriesFor: #notFound!generation!public! !
!WAHtmlResponseGenerator categoriesFor: #pageExpired!generation!public! !
!WAHtmlResponseGenerator categoriesFor: #refreshAfter:location:message:!generation!public! !

