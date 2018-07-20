"Filed out from Dolphin Smalltalk 7"!

Object subclass: #GRObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRObject guid: (GUID fromString: '{697fe973-5d7c-419e-a8e2-4f4a0f2ebfcd}')!
GRObject comment: 'A common superclass that ensures consistent initialization behaviour on all platforms and provides #error: methods that signal an instance of WAPlatformError.Packages that are using Seaside-Platform should normally subclass GRObject instead of Object.'!
!GRObject categoriesForClass!Grease-Core! !
!GRObject methodsFor!

error: aString	^ self class error: aString!

initialize! !
!GRObject categoriesFor: #error:!error handling!public! !
!GRObject categoriesFor: #initialize!initialization!public! !

!GRObject class methodsFor!

defaultErrorClass	^ GRError!

error: aString	^ self defaultErrorClass signal: aString!

new	^ self basicNew initialize! !
!GRObject class categoriesFor: #defaultErrorClass!error handling!public! !
!GRObject class categoriesFor: #error:!error handling!public! !
!GRObject class categoriesFor: #new!instance creation!public! !

