"Filed out from Dolphin Smalltalk 7"!

JQUiFunctionalTest subclass: #JQSelectableFunctionalTest
	instanceVariableNames: 'selected'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQSelectableFunctionalTest guid: (GUID fromString: '{78bd224f-f495-438e-bf3b-1d3dfe0fdbc3}')!
JQSelectableFunctionalTest comment: ''!
!JQSelectableFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !
!JQSelectableFunctionalTest methodsFor!

initialize	super initialize.	selected := Set new!

renderContentOn: html	html unorderedList		script: (html jQuery new selectable			onStop: (html jQuery ajax				callback: [ :value | selected := value asSet ]				passengers: (html jQuery this find: '.ui-selected')));		with: [			self vegetables do: [ :each |				html listItem					class: 'ui-corner-all';					class: 'ui-selected' if: (selected includes: each);					passenger: each;					with: each ] ]!

selectors	^ #(renderContentOn:)!

style	^ '.ui-selectable, .ui-selectable li { list-style-type: none; padding: 0; margin: 0; }.ui-selectable li { padding: 5px; margin: 5px; border: #e6e6e6 1px solid; }.ui-selectable li.ui-selecting { background-color: #e6e6e6; }.ui-selectable li.ui-selected { background-color: #dadada; }'!

title	^ 'Selectable Interaction'!

url	^ 'http://docs.jquery.com/UI/Selectable'! !
!JQSelectableFunctionalTest categoriesFor: #initialize!initialization!public! !
!JQSelectableFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQSelectableFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQSelectableFunctionalTest categoriesFor: #style!hooks!public! !
!JQSelectableFunctionalTest categoriesFor: #title!accessing!public! !
!JQSelectableFunctionalTest categoriesFor: #url!accessing!public! !

