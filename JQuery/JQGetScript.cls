"Filed out from Dolphin Smalltalk 7"!

JQAjax subclass: #JQGetScript
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQGetScript guid: (GUID fromString: '{17ab6fd3-36aa-403b-a93c-ce9a7557ee4a}')!
JQGetScript comment: 'Loads, and executes, a local JavaScript file using an HTTP GET request.'!
!JQGetScript categoriesForClass!JQuery-Core-Objects! !
!JQGetScript methodsFor!

arguments	| arguments |	arguments := OrderedCollection with: self javascriptUrl.	self options		at: 'success'		ifPresent: [ :value | arguments add: value ].	^ arguments!

isSupportedOption: aString	^ #('url' 'success' "(" 'dataType' ")") includes: aString!

method	^ 'getScript'! !
!JQGetScript categoriesFor: #arguments!accessing!public! !
!JQGetScript categoriesFor: #isSupportedOption:!options!public! !
!JQGetScript categoriesFor: #method!accessing!public! !

