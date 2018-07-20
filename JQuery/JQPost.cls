"Filed out from Dolphin Smalltalk 7"!

JQAjax subclass: #JQPost
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQPost guid: (GUID fromString: '{fb930b49-bc5a-45be-a69e-2a77b7ac18c8}')!
JQPost comment: 'Load a remote page using an HTTP POST request.'!
!JQPost categoriesForClass!JQuery-Core-Objects! !
!JQPost methodsFor!

arguments	| arguments |	arguments := OrderedCollection with: self url.	self options		at: 'data'		ifPresent: [ :value | arguments add: value ].	self options		at: 'success'		ifPresent: [ :value | arguments add: value ].	self options		at: 'dataType'		ifPresent: [ :value | arguments add: value ].	^ arguments!

isSupportedOption: aString	^ #('url' 'data' 'success' 'dataType') includes: aString!

method	^ 'post'! !
!JQPost categoriesFor: #arguments!accessing!public! !
!JQPost categoriesFor: #isSupportedOption:!options!public! !
!JQPost categoriesFor: #method!accessing!public! !

