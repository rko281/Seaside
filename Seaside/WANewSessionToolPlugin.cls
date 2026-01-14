"Filed out from Dolphin Smalltalk"!

WAToolPlugin subclass: #WANewSessionToolPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WANewSessionToolPlugin guid: (GUID fromString: '{7439b0ff-9b06-480d-89c9-5df772baa51b}')!

WANewSessionToolPlugin comment: 'I create a new session.'!

!WANewSessionToolPlugin categoriesForClass!Seaside-Development-Plugins! !

!WANewSessionToolPlugin methodsFor!

execute	self session unregister.	self requestContext redirectTo: self application url!

label	^ 'New Session'!

priority	^ 100! !

!WANewSessionToolPlugin categoriesForMethods!
execute!actions!public! !
label!accessing!public! !
priority!accessing!public! !
!

!WANewSessionToolPlugin class methodsFor!

title	^ 'New Session'! !

!WANewSessionToolPlugin class categoriesForMethods!
title!accessing!public! !
!

