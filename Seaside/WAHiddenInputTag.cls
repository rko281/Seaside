"Filed out from Dolphin Smalltalk 7"!

WAFormInputTag subclass: #WAHiddenInputTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHiddenInputTag guid: (GUID fromString: '{d01d39f9-3735-49ad-9a48-3724f2fafe1e}')!
WAHiddenInputTag comment: 'Authors may create controls that are not rendered but whose values are submitted with a form. Authors generally use this control type to store information between client/server exchanges that would otherwise be lost due to the stateless nature of HTTP (see [RFC2616]). The INPUT element is used to create a hidden control.'!
!WAHiddenInputTag categoriesForClass!Seaside-Canvas-Tags! !
!WAHiddenInputTag methodsFor!

type	^ 'hidden'! !
!WAHiddenInputTag categoriesFor: #type!accessing!public! !

