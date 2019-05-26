"Filed out from Dolphin Smalltalk 7"!

JQUiFunctionalTest subclass: #JQAccordionFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQAccordionFunctionalTest guid: (GUID fromString: '{98bc6741-43d9-4154-bb7f-08b798c4124a}')!
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

