"Filed out from Dolphin Smalltalk"!

JQUiFunctionalTest subclass: #JQProgressbarFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQProgressbarFunctionalTest guid: (GUID fromString: '{d76ce511-90bc-4941-8754-40e20d8b6a48}')!

JQProgressbarFunctionalTest comment: ''!

!JQProgressbarFunctionalTest categoriesForClass!Functional! !

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

