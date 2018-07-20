"Filed out from Dolphin Smalltalk 7"!

WAConditionalComment subclass: #WARevealedConditionalComment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARevealedConditionalComment guid: (GUID fromString: '{c192b1b4-5e58-459a-a5a3-e6598c0c1ab4}')!
WARevealedConditionalComment comment: 'A WAConditionalComment is an implementation of Downlevel-revealed Conditional Comments:http://msdn2.microsoft.com/en-us/library/ms537512.aspxNon-IE family browsers see them always.See also WAOpeningRevealedConditionalComment and WARevealedConditionalComment.'!
!WARevealedConditionalComment categoriesForClass!Seaside-Core-Document-Elements! !
!WARevealedConditionalComment methodsFor!

closingConditionClass	^ WAClosingRevealedConditionalComment!

openingConditionClass	^ WAOpeningRevealedConditionalComment! !
!WARevealedConditionalComment categoriesFor: #closingConditionClass!private! !
!WARevealedConditionalComment categoriesFor: #openingConditionClass!private! !

