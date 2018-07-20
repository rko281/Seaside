"Filed out from Dolphin Smalltalk 7"!

WAToolPlugin subclass: #WAValidateToolPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAValidateToolPlugin guid: (GUID fromString: '{b691029b-0728-4429-95fd-fae23cf0ab06}')!
WAValidateToolPlugin comment: 'I validate and XHTML page by sending it to the W3C validator. I only work if the website is publically available.'!
!WAValidateToolPlugin categoriesForClass!Seaside-Development-Plugins! !
!WAValidateToolPlugin methodsFor!

label	^ 'XHTML'!

priority	^ 800!

renderContentOn: html	html anchor		class: self cssClass;		title: 'Validate XHTML';		url: 'http://validator.w3.org/check/referer';		with: self label! !
!WAValidateToolPlugin categoriesFor: #label!accessing!public! !
!WAValidateToolPlugin categoriesFor: #priority!accessing!public! !
!WAValidateToolPlugin categoriesFor: #renderContentOn:!public!rendering! !

