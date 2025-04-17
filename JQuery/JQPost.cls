"Filed out from Dolphin Smalltalk"!

JQAjax subclass: #JQPost
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQPost guid: (GUID fromString: '{194981b0-0734-4878-b002-fd5c55f43ce7}')!

JQPost comment: 'Load a remote page using an HTTP POST request.'!

!JQPost categoriesForClass!Objects! !

!JQPost methodsFor!

arguments	| arguments |	arguments := OrderedCollection with: self url.	self options		at: 'data'		ifPresent: [ :value | arguments add: value ].	self options		at: 'success'		ifPresent: [ :value | arguments add: value ].	self options		at: 'dataType'		ifPresent: [ :value | arguments add: value ].	^ arguments!

isSupportedOption: aString	^ #('url' 'data' 'success' 'dataType') includes: aString!

method	^ 'post'! !

!JQPost categoriesForMethods!
arguments!accessing!public! !
isSupportedOption:!options!public! !
method!accessing!public! !
!

