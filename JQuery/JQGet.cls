"Filed out from Dolphin Smalltalk"!

JQAjax subclass: #JQGet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQGet guid: (GUID fromString: '{da8c3cf7-5bdb-4622-a849-edabeda787a7}')!

JQGet comment: 'Load a remote page using an HTTP GET request.'!

!JQGet categoriesForClass!Objects! !

!JQGet methodsFor!

arguments	| arguments |	arguments := OrderedCollection with: self url.	self options		at: 'data'		ifPresent: [ :value | arguments add: value ].	self options		at: 'success'		ifPresent: [ :value | arguments add: value ].	self options		at: 'dataType'		ifPresent: [ :value | arguments add: value ].	^ arguments!

isSupportedOption: aString	^ #('url' 'data' 'success' 'dataType') includes: aString!

method	^ 'get'! !

!JQGet categoriesForMethods!
arguments!accessing!public! !
isSupportedOption:!options!public! !
method!accessing!public! !
!

