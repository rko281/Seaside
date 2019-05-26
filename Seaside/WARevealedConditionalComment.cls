"Filed out from Dolphin Smalltalk 7"!

WAConditionalComment subclass: #WARevealedConditionalComment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARevealedConditionalComment guid: (GUID fromString: '{88a65ba1-e63d-48a7-a22a-01084952690c}')!
WARevealedConditionalComment comment: 'A WAConditionalComment is an implementation of Downlevel-revealed Conditional Comments:http://msdn2.microsoft.com/en-us/library/ms537512.aspxNon-IE family browsers see them always.See also WAOpeningRevealedConditionalComment and WARevealedConditionalComment.'!
!WARevealedConditionalComment categoriesForClass!Seaside-Core-Document-Elements! !
!WARevealedConditionalComment methodsFor!

closingConditionClass	^ WAClosingRevealedConditionalComment!

openingConditionClass	^ WAOpeningRevealedConditionalComment! !
!WARevealedConditionalComment categoriesFor: #closingConditionClass!private! !
!WARevealedConditionalComment categoriesFor: #openingConditionClass!private! !

