"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAExpiryFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAExpiryFunctionalTest guid: (GUID fromString: '{18249a99-a183-411e-be30-11b7d5474ff0}')!
WAExpiryFunctionalTest comment: ''!
!WAExpiryFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WAExpiryFunctionalTest methodsFor!

redirect	"we need to build the url we redirect to because we just expired the session in this test"	| url |	url := self application url.	url addAllToPath: self requestContext consumer upToEnd.	^ self requestContext responseGenerator		redirectTo: url;		respond!

renderActionsOn: html	html		paragraph: [ 			html anchor				url: (self application url with: self class name);				with: 'New Session'.			html break.			html anchor				callback: [ self session unregister. self redirect ];				with: 'Expire'.			html break.			html anchor				callback: [ WAExpirySession resetCounters ];				with: 'Reset Counters'.			html break.			html anchor				callback: [ GRPlatform current seasideGarbageCollect ];				with: 'Garbage Collect'.			html break.			html anchor				callback: [ 					self application clear.					GRPlatform current seasideGarbageCollect.					self redirect ];				with: 'Clear Cache'.			html break.			html anchor				callback: [ 					self application clear.					WAExpirySession resetCounters.					GRPlatform current seasideGarbageCollect.					self redirect ];				with: 'Reset All' ]!

renderContentOn: html	self renderStatsOn: html.	self renderActionsOn: html!

renderStatsOn: html	html table: [		html tableRow: [			html tableHeading: 'Total session instances'.			html tableData: WAExpirySession allInstances size ].		html tableRow: [			html tableHeading: 'Cached session instances for this Application'.			html tableData: self application cache size ].		html tableRow: [			html tableHeading: 'Total component instances'.			html tableData: self class allInstances size ].		html tableRow: [			html tableHeading: 'Sessions created'.			html tableData: WAExpirySession created ].		html tableRow: [			html tableHeading: 'Sessions unregistered'.			html tableData: WAExpirySession unregistered ] ]! !
!WAExpiryFunctionalTest categoriesFor: #redirect!public!rendering! !
!WAExpiryFunctionalTest categoriesFor: #renderActionsOn:!public!rendering! !
!WAExpiryFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WAExpiryFunctionalTest categoriesFor: #renderStatsOn:!public!rendering! !

