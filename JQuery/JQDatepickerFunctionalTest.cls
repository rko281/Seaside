﻿"Filed out from Dolphin Smalltalk"!

JQUiFunctionalTest subclass: #JQDatepickerFunctionalTest
	instanceVariableNames: 'date'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQDatepickerFunctionalTest guid: (GUID fromString: '{1ef7326e-33e7-4773-a6dd-f9cfa32ba76a}')!

JQDatepickerFunctionalTest comment: ''!

!JQDatepickerFunctionalTest categoriesForClass!Functional! !

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

