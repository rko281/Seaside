"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WATrailingSlashFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATrailingSlashFunctionalTest guid: (GUID fromString: '{bea31046-e4cf-485c-a746-616f199ee236}')!
WATrailingSlashFunctionalTest comment: ''!
!WATrailingSlashFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WATrailingSlashFunctionalTest methodsFor!

baseUrlWithSlash: aBoolean 	^ self application url		addToPath: self class name greaseString;		addField: 'slash'			value: aBoolean greaseString;		slash: aBoolean;		yourself!

renderContentOn: html	self renderExplanationOn: html.	self renderLinksOn: html!

renderExplanationOn: html	html paragraph: 'This tests whether the sever adapter correctly passes the tailing slash of the request URL to the request context.'.	html paragraph: 'Click each of the links below, and the status should change from "not run" to "success".'!

renderLinksOn: html	html table: [		html tableRow: [			html tableData: [				self renderSlashSuccess: true on: html ].			html tableData: [				html anchor				url: (self baseUrlWithSlash: true);				with: 'With Slash' ] ].				html tableRow: [			html tableData: [				self renderSlashSuccess: false on: html ].			html tableData: [				html anchor				url: (self baseUrlWithSlash: false);				with: 'Without Slash' ] ] ]!

renderSlashSuccess: aBoolean on: html 	| request hasTrailingSlash expectedSlash |	request := self requestContext request.	hasTrailingSlash := request url slash.	expectedSlash := request fields 		at: 'slash'		ifAbsent: [ nil ].	expectedSlash isNil 		ifTrue: [ html strong: 'not run' ]		ifFalse: [			aBoolean greaseString = expectedSlash 				ifTrue: [					hasTrailingSlash greaseString = expectedSlash 						ifTrue: [ html strong: 'success' ]						ifFalse: [ html strong: 'fail' ] ]				ifFalse: [ html strong: 'not run' ] ]! !
!WATrailingSlashFunctionalTest categoriesFor: #baseUrlWithSlash:!private! !
!WATrailingSlashFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WATrailingSlashFunctionalTest categoriesFor: #renderExplanationOn:!public!rendering! !
!WATrailingSlashFunctionalTest categoriesFor: #renderLinksOn:!public!rendering! !
!WATrailingSlashFunctionalTest categoriesFor: #renderSlashSuccess:on:!private! !

