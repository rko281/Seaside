"Filed out from Dolphin Smalltalk 7"!

WAToolPlugin subclass: #WANewSessionToolPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WANewSessionToolPlugin guid: (GUID fromString: '{0d3e4672-400d-46dd-9647-a2f7b334a3da}')!
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

