"Filed out from Dolphin Smalltalk"!

JQAjax subclass: #JQLoad
	instanceVariableNames: 'selector'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQLoad guid: (GUID fromString: '{567728e5-528c-4853-90f3-78b3ced3de5c}')!

JQLoad comment: 'Load HTML from a remote file and inject it into the DOM.'!

!JQLoad categoriesForClass!Objects! !

!JQLoad methodsFor!

arguments	| arguments |	arguments := OrderedCollection with: self selectorUrl.	self options		at: 'data'		ifPresent: [ :value | arguments add: value ].	self options		at: 'complete'		ifPresent: [ :value | arguments add: value ].	^ arguments!

isSupportedOption: aString	^ #('url' 'data' 'complete' "(" 'dataType' ")") includes: aString!

method	^ 'load'!

selector: aString	"An additional selector filters the incoming HTML document, only injecting the elements that match the selector."		selector := aString!

selectorUrl	^ selector isNil 		ifTrue: [ self url ]		ifFalse: [ self url greaseString , ' ' , selector greaseString ]! !

!JQLoad categoriesForMethods!
arguments!accessing!public! !
isSupportedOption:!options!public! !
method!accessing!public! !
selector:!options!public! !
selectorUrl!accessing/urls!public! !
!

