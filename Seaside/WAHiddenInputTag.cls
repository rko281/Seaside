"Filed out from Dolphin Smalltalk 7"!

WAFormInputTag subclass: #WAHiddenInputTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHiddenInputTag guid: (GUID fromString: '{0a998789-49da-4f13-9f27-29ab7e993bc4}')!
WAHiddenInputTag comment: 'Authors may create controls that are not rendered but whose values are submitted with a form. Authors generally use this control type to store information between client/server exchanges that would otherwise be lost due to the stateless nature of HTTP (see [RFC2616]). The INPUT element is used to create a hidden control.'!
!WAHiddenInputTag categoriesForClass!Seaside-Canvas-Tags! !
!WAHiddenInputTag methodsFor!

type	^ 'hidden'! !
!WAHiddenInputTag categoriesFor: #type!accessing!public! !

