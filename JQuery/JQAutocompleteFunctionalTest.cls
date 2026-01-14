"Filed out from Dolphin Smalltalk"!

JQUiFunctionalTest subclass: #JQAutocompleteFunctionalTest
	instanceVariableNames: 'packages countryNames selectedCountryName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQAutocompleteFunctionalTest guid: (GUID fromString: '{4d5a23f2-042f-464f-a85a-894c1d54deac}')!

JQAutocompleteFunctionalTest comment: ''!

!JQAutocompleteFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !

!JQAutocompleteFunctionalTest methodsFor!

countryNames 		^ countryNames ifNil: [ countryNames := self listOfCountryNames ]!

countryNamesFor: aString	| filtered |	filtered := self countryNames		select: [ :each | each includesSubstring: aString caseSensitive: false ].	filtered size > 10		ifTrue: [ filtered := filtered first: 10 ].	^ filtered!

renderContentOn: html	| showId |	showId := html nextId.		html paragraph: [		html label			for: html nextId;			with: 'Type a country name (no callback):'.		html break.		html textInput			id: html lastId;			script: (html jQuery this autocomplete sourceCallback: [ :term | self countryNamesFor: term ]) ].	html paragraph: [		html label			for: html nextId;			with: 'Type a country name (with callback):'.		html break.		html textInput			id: html lastId;			script: (html jQuery this autocomplete					 search: [ :term | self countryNamesFor: term ]					 labels: [ :countryName | countryName ]					 callback: [ :val :s |						 selectedCountryName := val.						 s << (s jQuery id: showId) html: [ :r | self renderSelectedCountryNameOn: r ] ]).		html break.		html div			id: showId;			with: [ self renderSelectedCountryNameOn: html ] ]!

renderSelectedCountryNameOn: html	html text: (selectedCountryName			 ifNil: [ 'No selected country' ]			 ifNotNil: [ selectedCountryName , ' was selected' ])!

selectors	^ #(renderContentOn:)!

title	^ 'Autocomplete'!

url	^ 'http://docs.jquery.com/UI/Autocomplete'! !

!JQAutocompleteFunctionalTest categoriesForMethods!
countryNames!public!querying! !
countryNamesFor:!public!querying! !
renderContentOn:!public!rendering! !
renderSelectedCountryNameOn:!public!rendering! !
selectors!accessing!public! !
title!accessing!public! !
url!accessing!public! !
!

