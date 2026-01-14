"Filed out from Dolphin Smalltalk"!

JQUiFunctionalTest subclass: #JQSliderFunctionalTest
	instanceVariableNames: 'current'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQSliderFunctionalTest guid: (GUID fromString: '{dbb7efbc-f610-40e2-a3ef-b8c914d0d452}')!

JQSliderFunctionalTest comment: ''!

!JQSliderFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !

!JQSliderFunctionalTest methodsFor!

initialize	super initialize.	current := 50!

renderContentOn: html	html div script: (html jQuery new slider		value: current;		onStop: (html jQuery ajax			callback: [ :value | current := value asNumber ]			value: (html jQuery this slider getValue)))!

selectors	^ #(renderContentOn:)!

title	^ 'Slider Widget'!

url	^ 'http://docs.jquery.com/UI/Slider'! !

!JQSliderFunctionalTest categoriesForMethods!
initialize!initialization!public! !
renderContentOn:!public!rendering! !
selectors!accessing!public! !
title!accessing!public! !
url!accessing!public! !
!

