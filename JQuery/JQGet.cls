"Filed out from Dolphin Smalltalk 7"!

JQAjax subclass: #JQGet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQGet guid: (GUID fromString: '{81c10a19-d4d5-405a-bc3c-d3a9eaea13cf}')!
JQGet comment: 'Load a remote page using an HTTP GET request.'!
!JQGet categoriesForClass!JQuery-Core-Objects! !
!JQGet methodsFor!

arguments	| arguments |	arguments := OrderedCollection with: self url.	self options		at: 'data'		ifPresent: [ :value | arguments add: value ].	self options		at: 'success'		ifPresent: [ :value | arguments add: value ].	self options		at: 'dataType'		ifPresent: [ :value | arguments add: value ].	^ arguments!

isSupportedOption: aString	^ #('url' 'data' 'success' 'dataType') includes: aString!

method	^ 'get'! !
!JQGet categoriesFor: #arguments!accessing!public! !
!JQGet categoriesFor: #isSupportedOption:!options!public! !
!JQGet categoriesFor: #method!accessing!public! !

