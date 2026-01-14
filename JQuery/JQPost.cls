"Filed out from Dolphin Smalltalk"!

JQAjax subclass: #JQPost
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQPost guid: (GUID fromString: '{537ba74e-a6c3-4170-a5b0-42cf06b6e552}')!

JQPost comment: 'Load a remote page using an HTTP POST request.'!

!JQPost categoriesForClass!JQuery-Core-Objects! !

!JQPost methodsFor!

argumentsDo: aBlock	aBlock value: self url.	self options		at: 'data'		ifPresent: [ :data | aBlock value: data ].	self options		at: 'success'		ifPresent: [ :success | aBlock value: success ].	self options		at: 'dataType'		ifPresent: [ :dataType | aBlock value: dataType ]!

isSupportedOption: aString	^ #('url' 'data' 'success' 'dataType') includes: aString!

method	^ 'post'! !

!JQPost categoriesForMethods!
argumentsDo:!accessing!public! !
isSupportedOption:!options!public! !
method!accessing!public! !
!

