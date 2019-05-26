"Filed out from Dolphin Smalltalk 7"!

JQUiFunctionalTest subclass: #JQAutocompleteFunctionalTest
	instanceVariableNames: 'packages'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQAutocompleteFunctionalTest guid: (GUID fromString: '{f6f2b8aa-f450-4a40-a67e-06a1ece75182}')!
JQAutocompleteFunctionalTest comment: ''!
!JQAutocompleteFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !
!JQAutocompleteFunctionalTest methodsFor!

packageNamesFor: aString	| filtered |	filtered := self packages		select: [ :each | each name includesSubstring: aString caseSensitive: false ].	filtered size > 10		ifTrue: [ filtered := filtered first: 10 ].	^ filtered collect: [ :each | each name ]!

packages	^ packages ifNil: [ packages := GRPackage grPackages sorted: [ :a :b | a name < b name ] ]!

renderContentOn: html	html label		for: html nextId;		with: 'Type a Seaside package name:'.	html break.	html textInput		id: html lastId;		script: (html jQuery this autocomplete			sourceCallback: [ :term | self packageNamesFor: term ])!

selectors	^ #(renderContentOn:)!

title	^ 'Autocomplete'!

url	^ 'http://docs.jquery.com/UI/Autocomplete'! !
!JQAutocompleteFunctionalTest categoriesFor: #packageNamesFor:!public!querying! !
!JQAutocompleteFunctionalTest categoriesFor: #packages!public!querying! !
!JQAutocompleteFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQAutocompleteFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQAutocompleteFunctionalTest categoriesFor: #title!accessing!public! !
!JQAutocompleteFunctionalTest categoriesFor: #url!accessing!public! !

