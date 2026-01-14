"Filed out from Dolphin Smalltalk"!

JQUiFunctionalTest subclass: #JQDatepickerFunctionalTest
	instanceVariableNames: 'date'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQDatepickerFunctionalTest guid: (GUID fromString: '{753c01ce-fae5-4c5e-a240-10263171403d}')!

JQDatepickerFunctionalTest comment: ''!

!JQDatepickerFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !

!JQDatepickerFunctionalTest methodsFor!

initialize	super initialize.	date := '09/19/2008'!

renderContentOn: html		html textInput		value: date;		callback: [ :value | date := value ];		script: (html jQuery new datepicker			onSelect: (html jQuery ajax serializeThis))!

selectors	^ #(initialize renderContentOn:)!

title	^ 'Datepicker Widget'!

url	^ 'http://docs.jquery.com/UI/Datepicker'! !

!JQDatepickerFunctionalTest categoriesForMethods!
initialize!initialization!public! !
renderContentOn:!public!rendering! !
selectors!accessing!public! !
title!accessing!public! !
url!accessing!public! !
!

