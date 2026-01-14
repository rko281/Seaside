"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WABreakTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABreakTag guid: (GUID fromString: '{19185f20-b5d6-407f-84b2-645ae34c9132}')!

WABreakTag comment: 'The BR element forcibly breaks (ends) the current line of text. Authors are advised to use style sheets to control text flow around floating images and other objects.Prohibiting a line break Sometimes authors may want to prevent a line break from occurring between two words. The &nbsp; entity (&#160; or &#xA0;) acts as a space where user agents should not cause a line break.'!

!WABreakTag categoriesForClass!Seaside-Canvas-Tags! !

!WABreakTag methodsFor!

isClosed	^ true!

tag	^ 'br'! !

!WABreakTag categoriesForMethods!
isClosed!public!testing! !
tag!accessing!public! !
!

