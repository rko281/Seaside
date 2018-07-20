"Filed out from Dolphin Smalltalk 7"!

JSObject subclass: #JQuery
	instanceVariableNames: ''
	classVariableNames: 'FunctionName'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQuery guid: (GUID fromString: '{2a7e0af7-945a-4177-8549-797f4714136d}')!
JQuery comment: 'The core functionality of jQuery centers around this object. Everything in jQuery is based upon this, or uses this in some way. The most basic use of this object is to pass in an expression (usually consisting of CSS), which then finds all matching elements.'!
!JQuery categoriesForClass!JQuery-Core-Objects! !
!JQuery methodsFor!

create: aPluginClass	^ (aPluginClass context: self renderContext owner: self)		rendererClass: self rendererClass;		yourself!

html: aRenderable	self subclassResponsibility!

id: aString	self subclassResponsibility!

javascriptContentOn: aStream	aStream nextPutAll: FunctionName! !
!JQuery categoriesFor: #create:!private! !
!JQuery categoriesFor: #html:!private! !
!JQuery categoriesFor: #id:!private! !
!JQuery categoriesFor: #javascriptContentOn:!printing!public! !

!JQuery class methodsFor!

functionName	^ FunctionName!

functionName: aString	"Changes the function name that Seaside generates to access the jQuery namespace. By default Seaside uses '$'. If another Javascript library (like Prototype, MooTools, or YUI) should be used simultaniously this name might be overridden. In this case use 'jQuery' as the function name, as this is an alias that normally does not conflict. In any case consult <http://docs.jquery.com/Using_jQuery_with_Other_Libraries>."	FunctionName := aString!

initialize	self functionName: '$'! !
!JQuery class categoriesFor: #functionName!accessing!public! !
!JQuery class categoriesFor: #functionName:!accessing!public! !
!JQuery class categoriesFor: #initialize!initialization!public! !

