"Filed out from Dolphin Smalltalk"!

JQUiFunctionalTest subclass: #JQProgressbarFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQProgressbarFunctionalTest guid: (GUID fromString: '{9515b84e-9635-43d4-bac1-e3b60bbfdc82}')!

JQProgressbarFunctionalTest comment: ''!

!JQProgressbarFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !

!JQProgressbarFunctionalTest methodsFor!

renderContentOn: html	html div script: (html jQuery new progressbar value: 35)!

selectors	^ #(renderContentOn:)!

title	^ 'Progressbar Widget'!

url	^ 'http://docs.jquery.com/UI/Progressbar'! !

!JQProgressbarFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
selectors!accessing!public! !
title!accessing!public! !
url!accessing!public! !
!

