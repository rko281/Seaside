"Filed out from Dolphin Smalltalk"!

JQAjax subclass: #JQGet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQGet guid: (GUID fromString: '{66cf8e57-b7ba-4471-8dea-52c6e42209c7}')!

JQGet comment: 'Load a remote page using an HTTP GET request.'!

!JQGet categoriesForClass!JQuery-Core-Objects! !

!JQGet methodsFor!

argumentsDo: aBlock	aBlock value: self url.	self options		at: 'data'		ifPresent: [ :data | aBlock value: data ].	self options		at: 'success'		ifPresent: [ :success | aBlock value: success ].	self options		at: 'dataType'		ifPresent: [ :dataType | aBlock value: dataType ]!

isSupportedOption: aString	^ #('url' 'data' 'success' 'dataType') includes: aString!

method	^ 'get'! !

!JQGet categoriesForMethods!
argumentsDo:!accessing!public! !
isSupportedOption:!options!public! !
method!accessing!public! !
!

