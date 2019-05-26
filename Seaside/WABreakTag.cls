"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WABreakTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WABreakTag guid: (GUID fromString: '{c7151ad9-6650-4d32-882d-44372abad61a}')!
WABreakTag comment: 'The BR element forcibly breaks (ends) the current line of text. Authors are advised to use style sheets to control text flow around floating images and other objects.Prohibiting a line break Sometimes authors may want to prevent a line break from occurring between two words. The &nbsp; entity (&#160; or &#xA0;) acts as a space where user agents should not cause a line break.'!
!WABreakTag categoriesForClass!Seaside-Canvas-Tags! !
!WABreakTag methodsFor!

isClosed	^ true!

tag	^ 'br'! !
!WABreakTag categoriesFor: #isClosed!public!testing! !
!WABreakTag categoriesFor: #tag!accessing!public! !

