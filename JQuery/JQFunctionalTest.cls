"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #JQFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQFunctionalTest guid: (GUID fromString: '{bb096916-7c85-48e7-baf3-9073cf67a936}')!
JQFunctionalTest comment: ''!
!JQFunctionalTest categoriesForClass!JQuery-Tests-Core-Functional! !
!JQFunctionalTest methodsFor!

renderReadmeOn: html	self url isNil ifTrue: [ ^ self ].	html paragraph: [		html text: 'For additional documentation and examples please visit the official '.		html anchor			url: self url;			with: 'web-site'.		html text: '.' ]!

renderSeastarOn: html	html paragraph id: 'seastar'; with: [		html image			altText: 'Seaside';			url: (JQAllFunctionalTestsLibrary urlOf: #seastarPng) ]!

selectors	^ #()!

title	^ self class description!

url	^ nil! !
!JQFunctionalTest categoriesFor: #renderReadmeOn:!public!rendering! !
!JQFunctionalTest categoriesFor: #renderSeastarOn:!public!rendering! !
!JQFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQFunctionalTest categoriesFor: #title!accessing!public! !
!JQFunctionalTest categoriesFor: #url!accessing!public! !

