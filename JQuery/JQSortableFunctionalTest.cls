"Filed out from Dolphin Smalltalk"!

JQUiFunctionalTest subclass: #JQSortableFunctionalTest
	instanceVariableNames: 'items'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQSortableFunctionalTest guid: (GUID fromString: '{4bab280e-e798-42fe-9a72-ed4cfef3a557}')!

JQSortableFunctionalTest comment: ''!

!JQSortableFunctionalTest categoriesForClass!Functional! !

!JQSortableFunctionalTest methodsFor!

initialize	super initialize.	items := self vegetables!

renderContentOn: html	html unorderedList		script: (html jQuery new sortable			onStop: (html jQuery ajax				callback: [ :values | items := values ]				passengers: (html jQuery this find: 'li')));		with: [			items do: [ :each |				html listItem					class: 'ui-corner-all';					passenger: each;					with: each ] ]!

selectors	^ #(renderContentOn:)!

style	^ '.ui-sortable, .ui-sortable li { list-style-type: none; padding: 0; margin: 0; }.ui-sortable li { cursor: move; padding: 5px; margin: 5px; background-color: #fff; border: #e6e6e6 1px solid; }'!

title	^ 'Sortable Interaction'!

url	^ 'http://docs.jquery.com/UI/Sortable'! !

!JQSortableFunctionalTest categoriesForMethods!
initialize!initialization!public! !
renderContentOn:!public!rendering! !
selectors!accessing!public! !
style!hooks!public! !
title!accessing!public! !
url!accessing!public! !
!

