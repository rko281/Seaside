"Filed out from Dolphin Smalltalk"!

JQAjax subclass: #JQGetJson
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQGetJson guid: (GUID fromString: '{cc2db791-e74c-4002-a113-b4849a4339f0}')!

JQGetJson comment: 'Load JSON data using an HTTP GET request.'!

!JQGetJson categoriesForClass!JQuery-Core-Objects! !

!JQGetJson methodsFor!

argumentsDo: aBlock	aBlock value: self url.	self options		at: 'data'		ifPresent: [ :data | aBlock value: data ].	self options		at: 'success'		ifPresent: [ :success | aBlock value: success ]!

isSupportedOption: aString	^ #('url' 'data' 'success' "(" 'dataType' ")") includes: aString!

method	^ 'getJSON'! !

!JQGetJson categoriesForMethods!
argumentsDo:!accessing!public! !
isSupportedOption:!options!public! !
method!accessing!public! !
!

