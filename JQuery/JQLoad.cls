"Filed out from Dolphin Smalltalk 7"!

JQAjax subclass: #JQLoad
	instanceVariableNames: 'selector'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQLoad guid: (GUID fromString: '{d37000f9-0a39-482c-a227-8ff949fa2a90}')!
JQLoad comment: 'Load HTML from a remote file and inject it into the DOM.'!
!JQLoad categoriesForClass!JQuery-Core-Objects! !
!JQLoad methodsFor!

arguments	| arguments |	arguments := OrderedCollection with: self selectorUrl.	self options		at: 'data'		ifPresent: [ :value | arguments add: value ].	self options		at: 'complete'		ifPresent: [ :value | arguments add: value ].	^ arguments!

isSupportedOption: aString	^ #('url' 'data' 'complete' "(" 'dataType' ")") includes: aString!

method	^ 'load'!

selector: aString	"An additional selector filters the incoming HTML document, only injecting the elements that match the selector."		selector := aString!

selectorUrl	^ selector isNil 		ifTrue: [ self url ]		ifFalse: [ self url greaseString , ' ' , selector greaseString ]! !
!JQLoad categoriesFor: #arguments!accessing!public! !
!JQLoad categoriesFor: #isSupportedOption:!options!public! !
!JQLoad categoriesFor: #method!accessing!public! !
!JQLoad categoriesFor: #selector:!options!public! !
!JQLoad categoriesFor: #selectorUrl!accessing/urls!public! !

