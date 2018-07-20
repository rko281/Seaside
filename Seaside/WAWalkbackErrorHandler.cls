﻿"Filed out from Dolphin Smalltalk 7"!

WADebugErrorHandler subclass: #WAWalkbackErrorHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAWalkbackErrorHandler guid: (GUID fromString: '{c583df6d-19ab-464e-a38a-b35b7fb2661f}')!
WAWalkbackErrorHandler comment: 'I am the default development error handler that displays the stack frames and adds the option to display a debugger.
!WAWalkbackErrorHandler categoriesForClass!Seaside-Development-Core! !
!WAWalkbackErrorHandler methodsFor!

handleDefault: anException

open: anException 

openUsingCall: anException

openUsingDirectRendering: anException

shouldCall
!WAWalkbackErrorHandler categoriesFor: #handleDefault:!actions!public! !
!WAWalkbackErrorHandler categoriesFor: #open:!actions!public! !
!WAWalkbackErrorHandler categoriesFor: #openUsingCall:!actions!public! !
!WAWalkbackErrorHandler categoriesFor: #openUsingDirectRendering:!actions!public! !
!WAWalkbackErrorHandler categoriesFor: #shouldCall!private! !

!WAWalkbackErrorHandler class methodsFor!

initialize
!WAWalkbackErrorHandler class categoriesFor: #initialize!initialization!public! !
