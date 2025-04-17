"Filed out from Dolphin Smalltalk"!

JQUiFunctionalTest subclass: #JQSelectableFunctionalTest
	instanceVariableNames: 'selected'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQSelectableFunctionalTest guid: (GUID fromString: '{5030059f-a586-48e9-be6d-17240af4fa00}')!

JQSelectableFunctionalTest comment: ''!

!JQSelectableFunctionalTest categoriesForClass!Functional! !

!JQSelectableFunctionalTest methodsFor!

initialize	super initialize.	selected := Set new!

renderContentOn: html	html unorderedList		script: (html jQuery new selectable			onStop: (html jQuery ajax				callback: [ :value | selected := value asSet ]				passengers: (html jQuery this find: '.ui-selected')));		with: [			self vegetables do: [ :each |				html listItem					class: 'ui-corner-all';					class: 'ui-selected' if: (selected includes: each);					passenger: each;					with: each ] ]!

selectors	^ #(renderContentOn:)!

style	^ '.ui-selectable, .ui-selectable li { list-style-type: none; padding: 0; margin: 0; }.ui-selectable li { padding: 5px; margin: 5px; border: #e6e6e6 1px solid; }.ui-selectable li.ui-selecting { background-color: #e6e6e6; }.ui-selectable li.ui-selected { background-color: #dadada; }'!

title	^ 'Selectable Interaction'!

url	^ 'http://docs.jquery.com/UI/Selectable'! !

!JQSelectableFunctionalTest categoriesForMethods!
initialize!initialization!public! !
renderContentOn:!public!rendering! !
selectors!accessing!public! !
style!hooks!public! !
title!accessing!public! !
url!accessing!public! !
!

