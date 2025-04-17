"Filed out from Dolphin Smalltalk"!

JSObject subclass: #JSScript
	instanceVariableNames: 'statements'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSScript guid: (GUID fromString: '{80533016-23f7-4faf-aa9a-3932adfd8dfb}')!

JSScript comment: 'I represent a sequence of JavaScript statements.'!

!JSScript categoriesForClass!Base! !

!JSScript methodsFor!

, anObject	self add: anObject!

<< anObject	^ self add: anObject!

add: anObject	^ statements add: anObject!

addAll: aCollection	^ statements addAll: aCollection!

alert: anObject 	self add: (JSStream new		nextPutAll: 'alert';		argument: anObject;		yourself)!

callback: aBlock	self goto: (self renderContext actionUrl		withField: (self renderContext callbacks store: (WAActionCallback on: aBlock)))!

goto: aUrl 	self add: (JSStream new		nextPutAll: 'window.location=';		javascript: aUrl)!

initialize	super initialize.	statements := OrderedCollection new!

javascript	^ (JSScript context: self renderContext)		rendererClass: self rendererClass;		yourself!

javascriptContentOn: aStream	statements do: [ :each | aStream javascript: each ] separatedBy: [ aStream nextPut: $; ]!

logger	^ self add: ((JSLogger context: self renderContext)		rendererClass: self rendererClass;		yourself)!

refresh	self goto: self renderContext actionUrl! !

!JSScript categoriesForMethods!
,!adding!public! !
<<!adding!public! !
add:!adding!public! !
addAll:!adding!public! !
alert:!convenience!public! !
callback:!convenience!public! !
goto:!convenience!public! !
initialize!initialization!public! !
javascript!convenience!public! !
javascriptContentOn:!printing!public! !
logger!convenience!public! !
refresh!convenience!public! !
!

