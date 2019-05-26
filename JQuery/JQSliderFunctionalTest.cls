"Filed out from Dolphin Smalltalk 7"!

JQUiFunctionalTest subclass: #JQSliderFunctionalTest
	instanceVariableNames: 'current'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQSliderFunctionalTest guid: (GUID fromString: '{c2c5d9f1-d47e-4ca6-9401-f3b2977a0f3b}')!
JQSliderFunctionalTest comment: ''!
!JQSliderFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !
!JQSliderFunctionalTest methodsFor!

initialize	super initialize.	current := 50!

renderContentOn: html	html div script: (html jQuery new slider		value: current;		onStop: (html jQuery ajax			callback: [ :value | current := value asNumber ]			value: (html jQuery this slider getValue)))!

selectors	^ #(renderContentOn:)!

title	^ 'Slider Widget'!

url	^ 'http://docs.jquery.com/UI/Slider'! !
!JQSliderFunctionalTest categoriesFor: #initialize!initialization!public! !
!JQSliderFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQSliderFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQSliderFunctionalTest categoriesFor: #title!accessing!public! !
!JQSliderFunctionalTest categoriesFor: #url!accessing!public! !

