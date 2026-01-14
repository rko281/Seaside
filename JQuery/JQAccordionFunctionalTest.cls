"Filed out from Dolphin Smalltalk"!

JQUiFunctionalTest subclass: #JQAccordionFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQAccordionFunctionalTest guid: (GUID fromString: '{6647116b-8201-433a-b7ef-33ed5962a871}')!

JQAccordionFunctionalTest comment: ''!

!JQAccordionFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !

!JQAccordionFunctionalTest methodsFor!

renderContentOn: html	html div		script: html jQuery new accordion;		with: [			self berries keysAndValuesDo: [ :name :description |				html div: [ html anchor: name ].				html div: [ html paragraph: description ] ] ]!

selectors	^ #(renderContentOn:)!

title	^ 'Accordion Widget'!

url	^ 'http://docs.jquery.com/UI/Accordion'! !

!JQAccordionFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
selectors!accessing!public! !
title!accessing!public! !
url!accessing!public! !
!

