"Filed out from Dolphin Smalltalk"!

JSObject subclass: #JQuery
	instanceVariableNames: ''
	classVariableNames: 'FunctionName'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQuery guid: (GUID fromString: '{3f5d282a-361f-430d-b093-7939ae11510a}')!

JQuery comment: 'The core functionality of jQuery centers around this object. Everything in jQuery is based upon this, or uses this in some way. The most basic use of this object is to pass in an expression (usually consisting of CSS), which then finds all matching elements.'!

!JQuery categoriesForClass!Objects! !

!JQuery methodsFor!

create: aPluginClass	^ (aPluginClass context: self renderContext owner: self)		rendererClass: self rendererClass;		yourself!

html: aRenderable	self subclassResponsibility!

id: aString	self subclassResponsibility!

javascriptContentOn: aStream	aStream nextPutAll: FunctionName! !

!JQuery categoriesForMethods!
create:!private! !
html:!private! !
id:!private! !
javascriptContentOn:!printing!public! !
!

!JQuery class methodsFor!

functionName	^ FunctionName!

functionName: aString	"Changes the function name that Seaside generates to access the jQuery namespace. By default Seaside uses '$'. If another Javascript library (like Prototype, MooTools, or YUI) should be used simultaniously this name might be overridden. In this case use 'jQuery' as the function name, as this is an alias that normally does not conflict. In any case consult <http://docs.jquery.com/Using_jQuery_with_Other_Libraries>."	FunctionName := aString!

initialize	self functionName: '$'! !

!JQuery class categoriesForMethods!
functionName!accessing!public! !
functionName:!accessing!public! !
initialize!initialization!public! !
!

