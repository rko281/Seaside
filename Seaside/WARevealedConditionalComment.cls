"Filed out from Dolphin Smalltalk"!

WAConditionalComment subclass: #WARevealedConditionalComment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARevealedConditionalComment guid: (GUID fromString: '{430695c3-c3a9-410c-a50c-406bca1e17f2}')!

WARevealedConditionalComment comment: 'A WAConditionalComment is an implementation of Downlevel-revealed Conditional Comments:http://msdn2.microsoft.com/en-us/library/ms537512.aspxNon-IE family browsers see them always.See also WAOpeningRevealedConditionalComment and WARevealedConditionalComment.'!

!WARevealedConditionalComment categoriesForClass!Seaside-Core-Document-Elements! !

!WARevealedConditionalComment methodsFor!

closingConditionClass	^ WAClosingRevealedConditionalComment!

openingConditionClass	^ WAOpeningRevealedConditionalComment! !

!WARevealedConditionalComment categoriesForMethods!
closingConditionClass!private! !
openingConditionClass!private! !
!

