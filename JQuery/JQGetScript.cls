"Filed out from Dolphin Smalltalk"!

JQAjax subclass: #JQGetScript
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQGetScript guid: (GUID fromString: '{9d476ac6-56fd-474c-b698-55c5f26cdaa2}')!

JQGetScript comment: 'Loads, and executes, a local JavaScript file using an HTTP GET request.'!

!JQGetScript categoriesForClass!JQuery-Core-Objects! !

!JQGetScript methodsFor!

argumentsDo: aBlock	aBlock value: self javascriptUrl.	self options		at: 'success'		ifPresent: [ :success | aBlock value: success ]!

isSupportedOption: aString	^ #('url' 'success' "(" 'dataType' ")") includes: aString!

method	^ 'getScript'! !

!JQGetScript categoriesForMethods!
argumentsDo:!accessing!public! !
isSupportedOption:!options!public! !
method!accessing!public! !
!

