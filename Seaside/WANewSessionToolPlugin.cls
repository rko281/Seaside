"Filed out from Dolphin Smalltalk 7"!

WAToolPlugin subclass: #WANewSessionToolPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WANewSessionToolPlugin guid: (GUID fromString: '{8465ae23-d23f-40c7-867c-14102f7317ed}')!
WANewSessionToolPlugin comment: 'I create a new session.'!
!WANewSessionToolPlugin categoriesForClass!Seaside-Development-Plugins! !
!WANewSessionToolPlugin methodsFor!

execute	self session unregister.	self requestContext redirectTo: self application url!

label	^ 'New Session'!

priority	^ 100! !
!WANewSessionToolPlugin categoriesFor: #execute!actions!public! !
!WANewSessionToolPlugin categoriesFor: #label!accessing!public! !
!WANewSessionToolPlugin categoriesFor: #priority!accessing!public! !

!WANewSessionToolPlugin class methodsFor!

title	^ 'New Session'! !
!WANewSessionToolPlugin class categoriesFor: #title!accessing!public! !

