"Filed out from Dolphin Smalltalk"!

WAToolPlugin subclass: #WANewSessionToolPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WANewSessionToolPlugin guid: (GUID fromString: '{7afc326d-eac3-4287-9bf8-3c2ecbd957e3}')!

WANewSessionToolPlugin comment: 'I create a new session.'!

!WANewSessionToolPlugin categoriesForClass!Plugins! !

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

