"Filed out from Dolphin Smalltalk 7"!

JQAjax subclass: #JQGetJson
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQGetJson guid: (GUID fromString: '{a787b53e-c356-42c1-a48f-5fc45420958d}')!
JQGetJson comment: 'Load JSON data using an HTTP GET request.'!
!JQGetJson categoriesForClass!JQuery-Core-Objects! !
!JQGetJson methodsFor!

arguments	| arguments |	arguments := OrderedCollection with: self url.	self options		at: 'data'		ifPresent: [ :value | arguments add: value ].	self options		at: 'success'		ifPresent: [ :value | arguments add: value ].	^ arguments!

isSupportedOption: aString	^ #('url' 'data' 'success' "(" 'dataType' ")") includes: aString!

method	^ 'getJSON'! !
!JQGetJson categoriesFor: #arguments!accessing!public! !
!JQGetJson categoriesFor: #isSupportedOption:!options!public! !
!JQGetJson categoriesFor: #method!accessing!public! !

