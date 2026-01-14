"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WATrailingSlashFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATrailingSlashFunctionalTest guid: (GUID fromString: '{1874d42f-6f08-4b0b-b35e-bc7fd1837327}')!

WATrailingSlashFunctionalTest comment: ''!

!WATrailingSlashFunctionalTest categoriesForClass!Seaside-Tests-Functional! !

!WATrailingSlashFunctionalTest methodsFor!

baseUrlWithSlash: aBoolean 	^ self application url		addToPath: self class name greaseString;		addField: 'slash'			value: aBoolean greaseString;		slash: aBoolean;		yourself!

renderContentOn: html	self renderExplanationOn: html.	self renderLinksOn: html!

renderExplanationOn: html	html paragraph: 'This tests whether the sever adapter correctly passes the tailing slash of the request URL to the request context.'.	html paragraph: 'Click each of the links below, and the status should change from "not run" to "success".'!

renderLinksOn: html	html table: [		html tableRow: [			html tableData: [				self renderSlashSuccess: true on: html ].			html tableData: [				html anchor				url: (self baseUrlWithSlash: true);				with: 'With Slash' ] ].				html tableRow: [			html tableData: [				self renderSlashSuccess: false on: html ].			html tableData: [				html anchor				url: (self baseUrlWithSlash: false);				with: 'Without Slash' ] ] ]!

renderSlashSuccess: aBoolean on: html 	| request hasTrailingSlash expectedSlash |	request := self requestContext request.	hasTrailingSlash := request url slash.	expectedSlash := request fields 		at: 'slash'		ifAbsent: [ nil ].	expectedSlash isNil 		ifTrue: [ html strong: 'not run' ]		ifFalse: [			aBoolean greaseString = expectedSlash 				ifTrue: [					hasTrailingSlash greaseString = expectedSlash 						ifTrue: [ html strong: 'success' ]						ifFalse: [ html strong: 'fail' ] ]				ifFalse: [ html strong: 'not run' ] ]! !

!WATrailingSlashFunctionalTest categoriesForMethods!
baseUrlWithSlash:!private! !
renderContentOn:!public!rendering! !
renderExplanationOn:!public!rendering! !
renderLinksOn:!public!rendering! !
renderSlashSuccess:on:!private! !
!

