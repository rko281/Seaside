﻿"Filed out from Dolphin Smalltalk 7"!

WARequestHandler subclass: #WADispatcher
	instanceVariableNames: 'defaultName handlers'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'default'!
WADispatcher guid: (GUID fromString: '{04a2b031-6649-4c7a-919e-b16f2f242d10}')!
WADispatcher comment: 'WADispatcher takes http requests and dispatches them to the correct handler (WAApplication, WAFileHandler, etc). 
!WADispatcher categoriesForClass!Seaside-Core-RequestHandling! !
!WADispatcher methodsFor!

childrenDo: aBlock

defaultHandler

defaultName

defaultName: aString

handleDefault: aRequestContext

handleFiltered: aRequestContext

handleFiltered: aRequestContext named: aString

handlerAt: aString

handlerAt: aString ifAbsent: aBlock

handlerAt: aString with: aBlock

handlers

initialize

isDispatcher

nameOfHandler: aRequestHandler 

postCopy

register: aRequestHandler at: aString 

unregister: aRequestHandler

urlFor: aRequestHandler
!WADispatcher categoriesFor: #childrenDo:!parent/child!public! !
!WADispatcher categoriesFor: #defaultHandler!accessing!public! !
!WADispatcher categoriesFor: #defaultName!accessing!public! !
!WADispatcher categoriesFor: #defaultName:!accessing!public! !
!WADispatcher categoriesFor: #handleDefault:!handling!public! !
!WADispatcher categoriesFor: #handleFiltered:!handling!public! !
!WADispatcher categoriesFor: #handleFiltered:named:!handling!public! !
!WADispatcher categoriesFor: #handlerAt:!accessing!public! !
!WADispatcher categoriesFor: #handlerAt:ifAbsent:!accessing!public! !
!WADispatcher categoriesFor: #handlerAt:with:!accessing!public! !
!WADispatcher categoriesFor: #handlers!accessing!public! !
!WADispatcher categoriesFor: #initialize!initialization!public! !
!WADispatcher categoriesFor: #isDispatcher!public!testing! !
!WADispatcher categoriesFor: #nameOfHandler:!accessing!public! !
!WADispatcher categoriesFor: #postCopy!copying!public! !
!WADispatcher categoriesFor: #register:at:!parent/child!public! !
!WADispatcher categoriesFor: #unregister:!parent/child!public! !
!WADispatcher categoriesFor: #urlFor:!accessing!public! !

!WADispatcher class methodsFor!

default

description

resetDefault
!WADispatcher class categoriesFor: #default!accessing!public! !
!WADispatcher class categoriesFor: #description!accessing!public! !
!WADispatcher class categoriesFor: #resetDefault!initialization!public! !
