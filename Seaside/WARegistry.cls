﻿"Filed out from Dolphin Smalltalk 7"!

WARequestHandler subclass: #WARegistry
	instanceVariableNames: 'cache'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARegistry guid: (GUID fromString: '{95c12154-0078-47de-ad69-1d8c49076e15}')!
WARegistry comment: 'WARegistry maintains a set of handlers indexed by a key which it assigns when the handler is registerd. WARegistry checks incoming request URLs for a key and looks for a matching active request handler. If one exists, the request is sent to the proper handler. If not, the request is either a new request (in which case #handleDefaultRequest: is called) or a request to a now-inactive handler (in which case #handleExpiredRequest: is called). These two methods allow subclasses to properly handle these requests.
!WARegistry categoriesForClass!Seaside-Core-RequestHandling! !
!WARegistry methodsFor!

cache

cache: aCache

childrenDo: aBlock

clear

createCache

defaultConfiguration

dispatch: aRequestContext to: aRequestHandler key: aString

handle: aRequestContext registering: aRequestHandler

handle: aRequestContext registering: aRequestHandler at: aKey

handleDefault: aRequestContext 

handleExpired: aRequestContext 

handleFiltered: aRequestContext

handleKeyed: aRequestHandler with: aString context: aRequestContext

handlersDo: aBlock

initialize

isRegistry

keyFor: aRequestHandler ifAbsent: absentBlock

keysAndHandlersDo: aBlock

postCopy

register: aRequestHandler

register: aRequestHandler at: aKey

trackingStrategy

unregister: aRequestHandler

unregisterAt: aKey

unregistered

urlFor: aRequestHandler

urlFor: aRequestHandler ifAbsent: absentBlock
!WARegistry categoriesFor: #cache!accessing!public! !
!WARegistry categoriesFor: #cache:!accessing!public! !
!WARegistry categoriesFor: #childrenDo:!parent/child!public! !
!WARegistry categoriesFor: #clear!parent/child!public! !
!WARegistry categoriesFor: #createCache!initialization!public! !
!WARegistry categoriesFor: #defaultConfiguration!configuration!public! !
!WARegistry categoriesFor: #dispatch:to:key:!handling/helpers!public! !
!WARegistry categoriesFor: #handle:registering:!handling/helpers!public! !
!WARegistry categoriesFor: #handle:registering:at:!handling/helpers!public! !
!WARegistry categoriesFor: #handleDefault:!handling!public! !
!WARegistry categoriesFor: #handleExpired:!handling!public! !
!WARegistry categoriesFor: #handleFiltered:!handling!public! !
!WARegistry categoriesFor: #handleKeyed:with:context:!handling!public! !
!WARegistry categoriesFor: #handlersDo:!enumerating!public! !
!WARegistry categoriesFor: #initialize!initialization!public! !
!WARegistry categoriesFor: #isRegistry!public!testing! !
!WARegistry categoriesFor: #keyFor:ifAbsent:!parent/child!public! !
!WARegistry categoriesFor: #keysAndHandlersDo:!enumerating!public! !
!WARegistry categoriesFor: #postCopy!copying!public! !
!WARegistry categoriesFor: #register:!parent/child!public! !
!WARegistry categoriesFor: #register:at:!parent/child!public! !
!WARegistry categoriesFor: #trackingStrategy!configuration!public! !
!WARegistry categoriesFor: #unregister:!parent/child!public! !
!WARegistry categoriesFor: #unregisterAt:!parent/child!public! !
!WARegistry categoriesFor: #unregistered!parent/child!public! !
!WARegistry categoriesFor: #urlFor:!accessing!public! !
!WARegistry categoriesFor: #urlFor:ifAbsent:!accessing!public! !

!WARegistry class methodsFor!

isAbstract
!WARegistry class categoriesFor: #isAbstract!public!testing! !
