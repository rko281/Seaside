"Filed out from Dolphin Smalltalk 7"!

JQUiFunctionalTest subclass: #JQSortableFunctionalTest
	instanceVariableNames: 'items'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQSortableFunctionalTest guid: (GUID fromString: '{c515f811-c43a-48c0-9745-b09ec661943e}')!
JQSortableFunctionalTest comment: ''!
!JQSortableFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !
!JQSortableFunctionalTest methodsFor!

initialize	super initialize.	items := self vegetables!

renderContentOn: html	html unorderedList		script: (html jQuery new sortable			onStop: (html jQuery ajax				callback: [ :values | items := values ]				passengers: (html jQuery this find: 'li')));		with: [			items do: [ :each |				html listItem					class: 'ui-corner-all';					passenger: each;					with: each ] ]!

selectors	^ #(renderContentOn:)!

style	^ '.ui-sortable, .ui-sortable li { list-style-type: none; padding: 0; margin: 0; }.ui-sortable li { cursor: move; padding: 5px; margin: 5px; background-color: #fff; border: #e6e6e6 1px solid; }'!

title	^ 'Sortable Interaction'!

url	^ 'http://docs.jquery.com/UI/Sortable'! !
!JQSortableFunctionalTest categoriesFor: #initialize!initialization!public! !
!JQSortableFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQSortableFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQSortableFunctionalTest categoriesFor: #style!hooks!public! !
!JQSortableFunctionalTest categoriesFor: #title!accessing!public! !
!JQSortableFunctionalTest categoriesFor: #url!accessing!public! !

