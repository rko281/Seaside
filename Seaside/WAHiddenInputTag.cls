"Filed out from Dolphin Smalltalk"!

WAFormInputTag subclass: #WAHiddenInputTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHiddenInputTag guid: (GUID fromString: '{003e3d0e-5b6b-4a33-a9a6-61f009d2d81e}')!

WAHiddenInputTag comment: 'Authors may create controls that are not rendered but whose values are submitted with a form. Authors generally use this control type to store information between client/server exchanges that would otherwise be lost due to the stateless nature of HTTP (see [RFC2616]). The INPUT element is used to create a hidden control.'!

!WAHiddenInputTag categoriesForClass!Seaside-Canvas-Tags! !

!WAHiddenInputTag methodsFor!

type	^ 'hidden'! !

!WAHiddenInputTag categoriesForMethods!
type!accessing!public! !
!

