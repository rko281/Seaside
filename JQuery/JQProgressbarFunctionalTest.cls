"Filed out from Dolphin Smalltalk 7"!

JQUiFunctionalTest subclass: #JQProgressbarFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQProgressbarFunctionalTest guid: (GUID fromString: '{8353662a-3139-4823-80b8-113310a60131}')!
JQProgressbarFunctionalTest comment: ''!
!JQProgressbarFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !
!JQProgressbarFunctionalTest methodsFor!

renderContentOn: html	html div script: (html jQuery new progressbar value: 35)!

selectors	^ #(renderContentOn:)!

title	^ 'Progressbar Widget'!

url	^ 'http://docs.jquery.com/UI/Progressbar'! !
!JQProgressbarFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQProgressbarFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQProgressbarFunctionalTest categoriesFor: #title!accessing!public! !
!JQProgressbarFunctionalTest categoriesFor: #url!accessing!public! !

