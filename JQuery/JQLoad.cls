"Filed out from Dolphin Smalltalk"!

JQAjax subclass: #JQLoad
	instanceVariableNames: 'selector'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQLoad guid: (GUID fromString: '{cd7560f8-d874-4345-8adc-1640a639bde4}')!

JQLoad comment: 'Load HTML from a remote file and inject it into the DOM.'!

!JQLoad categoriesForClass!JQuery-Core-Objects! !

!JQLoad methodsFor!

argumentsDo: aBlock	aBlock value: self selectorUrl.	self options		at: 'data'		ifPresent: [ :data | aBlock value: data ].	self options		at: 'complete'		ifPresent: [ :complete | aBlock value: complete ]!

isSupportedOption: aString	^ #('url' 'data' 'complete' "(" 'dataType' ")") includes: aString!

method	^ 'load'!

selector: aString	"An additional selector filters the incoming HTML document, only injecting the elements that match the selector."		selector := aString!

selectorUrl	^ selector isNil 		ifTrue: [ self url ]		ifFalse: [ self url greaseString , ' ' , selector greaseString ]! !

!JQLoad categoriesForMethods!
argumentsDo:!accessing!public! !
isSupportedOption:!options!public! !
method!accessing!public! !
selector:!options!public! !
selectorUrl!accessing/urls!public! !
!

