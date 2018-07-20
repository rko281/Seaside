"Filed out from Dolphin Smalltalk 7"!

JQUiFunctionalTest subclass: #JQAccordionFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQAccordionFunctionalTest guid: (GUID fromString: '{ac28e664-db6c-48c1-b57c-3f9744dcbf0b}')!
JQAccordionFunctionalTest comment: ''!
!JQAccordionFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !
!JQAccordionFunctionalTest methodsFor!

renderContentOn: html	html div		script: html jQuery new accordion;		with: [			self berries keysAndValuesDo: [ :name :description |				html div: [ html anchor: name ].				html div: [ html paragraph: description ] ] ]!

selectors	^ #(renderContentOn:)!

title	^ 'Accordion Widget'!

url	^ 'http://docs.jquery.com/UI/Accordion'! !
!JQAccordionFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQAccordionFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQAccordionFunctionalTest categoriesFor: #title!accessing!public! !
!JQAccordionFunctionalTest categoriesFor: #url!accessing!public! !

