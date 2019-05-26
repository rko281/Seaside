"Filed out from Dolphin Smalltalk 7"!

JSObject subclass: #JSScript
	instanceVariableNames: 'statements'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSScript guid: (GUID fromString: '{a048b694-3fef-4c88-a9b0-00af0a734c0e}')!
JSScript comment: 'I represent a sequence of JavaScript statements.'!
!JSScript categoriesForClass!Javascript-Core-Base! !
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
!JSScript categoriesFor: #,!adding!public! !
!JSScript categoriesFor: #<<!adding!public! !
!JSScript categoriesFor: #add:!adding!public! !
!JSScript categoriesFor: #addAll:!adding!public! !
!JSScript categoriesFor: #alert:!convenience!public! !
!JSScript categoriesFor: #callback:!convenience!public! !
!JSScript categoriesFor: #goto:!convenience!public! !
!JSScript categoriesFor: #initialize!initialization!public! !
!JSScript categoriesFor: #javascript!convenience!public! !
!JSScript categoriesFor: #javascriptContentOn:!printing!public! !
!JSScript categoriesFor: #logger!convenience!public! !
!JSScript categoriesFor: #refresh!convenience!public! !

