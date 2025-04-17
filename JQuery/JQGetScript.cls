"Filed out from Dolphin Smalltalk"!

JQAjax subclass: #JQGetScript
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQGetScript guid: (GUID fromString: '{423ff44f-b370-40cb-a688-19be51f3a7cb}')!

JQGetScript comment: 'Loads, and executes, a local JavaScript file using an HTTP GET request.'!

!JQGetScript categoriesForClass!Objects! !

!JQGetScript methodsFor!

arguments	| arguments |	arguments := OrderedCollection with: self javascriptUrl.	self options		at: 'success'		ifPresent: [ :value | arguments add: value ].	^ arguments!

isSupportedOption: aString	^ #('url' 'success' "(" 'dataType' ")") includes: aString!

method	^ 'getScript'! !

!JQGetScript categoriesForMethods!
arguments!accessing!public! !
isSupportedOption:!options!public! !
method!accessing!public! !
!

