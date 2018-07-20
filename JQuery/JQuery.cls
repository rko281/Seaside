﻿"Filed out from Dolphin Smalltalk 7"!

JSObject subclass: #JQuery
	instanceVariableNames: ''
	classVariableNames: 'FunctionName'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQuery guid: (GUID fromString: '{2a7e0af7-945a-4177-8549-797f4714136d}')!
JQuery comment: 'The core functionality of jQuery centers around this object. Everything in jQuery is based upon this, or uses this in some way. The most basic use of this object is to pass in an expression (usually consisting of CSS), which then finds all matching elements.'!
!JQuery categoriesForClass!JQuery-Core-Objects! !
!JQuery methodsFor!

create: aPluginClass

html: aRenderable

id: aString

javascriptContentOn: aStream
!JQuery categoriesFor: #create:!private! !
!JQuery categoriesFor: #html:!private! !
!JQuery categoriesFor: #id:!private! !
!JQuery categoriesFor: #javascriptContentOn:!printing!public! !

!JQuery class methodsFor!

functionName

functionName: aString

initialize
!JQuery class categoriesFor: #functionName!accessing!public! !
!JQuery class categoriesFor: #functionName:!accessing!public! !
!JQuery class categoriesFor: #initialize!initialization!public! !
