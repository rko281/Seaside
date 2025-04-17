"Filed out from Dolphin Smalltalk"!

JQAjax subclass: #JQGetJson
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQGetJson guid: (GUID fromString: '{04d7d2c1-dec8-4e65-9e77-ae52136f106b}')!

JQGetJson comment: 'Load JSON data using an HTTP GET request.'!

!JQGetJson categoriesForClass!Objects! !

!JQGetJson methodsFor!

arguments	| arguments |	arguments := OrderedCollection with: self url.	self options		at: 'data'		ifPresent: [ :value | arguments add: value ].	self options		at: 'success'		ifPresent: [ :value | arguments add: value ].	^ arguments!

isSupportedOption: aString	^ #('url' 'data' 'success' "(" 'dataType' ")") includes: aString!

method	^ 'getJSON'! !

!JQGetJson categoriesForMethods!
arguments!accessing!public! !
isSupportedOption:!options!public! !
method!accessing!public! !
!

