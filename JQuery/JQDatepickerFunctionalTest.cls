"Filed out from Dolphin Smalltalk 7"!

JQUiFunctionalTest subclass: #JQDatepickerFunctionalTest
	instanceVariableNames: 'date'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQDatepickerFunctionalTest guid: (GUID fromString: '{f01b7598-faee-4a56-b9e2-6358252f8da4}')!
JQDatepickerFunctionalTest comment: ''!
!JQDatepickerFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !
!JQDatepickerFunctionalTest methodsFor!

initialize	super initialize.	date := '09/19/2008'!

renderContentOn: html		html textInput		value: date;		callback: [ :value | date := value ];		script: (html jQuery new datepicker			onSelect: (html jQuery ajax serializeThis))!

selectors	^ #(initialize renderContentOn:)!

title	^ 'Datepicker Widget'!

url	^ 'http://docs.jquery.com/UI/Datepicker'! !
!JQDatepickerFunctionalTest categoriesFor: #initialize!initialization!public! !
!JQDatepickerFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQDatepickerFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQDatepickerFunctionalTest categoriesFor: #title!accessing!public! !
!JQDatepickerFunctionalTest categoriesFor: #url!accessing!public! !

