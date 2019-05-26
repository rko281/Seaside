"Filed out from Dolphin Smalltalk 7"!

JQUiFunctionalTest subclass: #JQDatepickerFunctionalTest
	instanceVariableNames: 'date'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQDatepickerFunctionalTest guid: (GUID fromString: '{e25fa8d6-f48d-4a33-9b6b-6e3b02edcb08}')!
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

