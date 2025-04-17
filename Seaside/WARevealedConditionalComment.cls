"Filed out from Dolphin Smalltalk"!

WAConditionalComment subclass: #WARevealedConditionalComment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARevealedConditionalComment guid: (GUID fromString: '{c4b986dc-a954-415c-85ec-bedc38be336e}')!

WARevealedConditionalComment comment: 'A WAConditionalComment is an implementation of Downlevel-revealed Conditional Comments:http://msdn2.microsoft.com/en-us/library/ms537512.aspxNon-IE family browsers see them always.See also WAOpeningRevealedConditionalComment and WARevealedConditionalComment.'!

!WARevealedConditionalComment categoriesForClass!Document-Elements! !

!WARevealedConditionalComment methodsFor!

closingConditionClass	^ WAClosingRevealedConditionalComment!

openingConditionClass	^ WAOpeningRevealedConditionalComment! !

!WARevealedConditionalComment categoriesForMethods!
closingConditionClass!private! !
openingConditionClass!private! !
!

