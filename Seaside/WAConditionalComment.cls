"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAConditionalComment
	instanceVariableNames: 'condition root'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAConditionalComment guid: (GUID fromString: '{61cfb97d-ef21-4f3d-94f3-fbc79bdd4a88}')!
WAConditionalComment comment: 'A WAConditionalComment is an implementation of Downlevel-hidden Conditional Comments:http://msdn2.microsoft.com/en-us/library/ms537512.aspxThese are only visible for the IE family of browsers.See also WAOpeningConditionalComment and WAClosingConditionalComment.'!
!WAConditionalComment categoriesForClass!Seaside-Core-Document-Elements! !
!WAConditionalComment methodsFor!

addToCondition: aString	condition := condition , aString!

closingConditionClass	^ WAClosingConditionalComment!

do: aBlock	root add: (self openingConditionClass condition: condition).	aBlock value.	root add: (self closingConditionClass new)!

equal	"implicit of nothing else"!

greaterThan	self addToCondition: ' gt'!

ie	self addToCondition: ' IE'!

ie: aString	self addToCondition: ' IE ', aString!

ie5	self addToCondition: '5'!

ie50	self addToCondition: '5.0'!

ie55	self ie: '5.5'!

ie6	self ie: '6'!

ie7	self ie: '7'!

ie8	self ie: '8'!

ie9	self ie: '9'!

initializeWithRoot: anHtmlRoot	self initialize.	root := anHtmlRoot.	condition := 'if'!

lessThan	self addToCondition: ' lt'!

not	self addToCondition: ' !!'!

openingConditionClass	^ WAOpeningConditionalComment!

orEqual	self addToCondition: 'e'! !
!WAConditionalComment categoriesFor: #addToCondition:!private! !
!WAConditionalComment categoriesFor: #closingConditionClass!private! !
!WAConditionalComment categoriesFor: #do:!public! !
!WAConditionalComment categoriesFor: #equal!operators!public! !
!WAConditionalComment categoriesFor: #greaterThan!operators!public! !
!WAConditionalComment categoriesFor: #ie!features!public! !
!WAConditionalComment categoriesFor: #ie:!features!public! !
!WAConditionalComment categoriesFor: #ie5!features!public! !
!WAConditionalComment categoriesFor: #ie50!features!public! !
!WAConditionalComment categoriesFor: #ie55!features!public! !
!WAConditionalComment categoriesFor: #ie6!features!public! !
!WAConditionalComment categoriesFor: #ie7!features!public! !
!WAConditionalComment categoriesFor: #ie8!features!public! !
!WAConditionalComment categoriesFor: #ie9!features!public! !
!WAConditionalComment categoriesFor: #initializeWithRoot:!initialization!public! !
!WAConditionalComment categoriesFor: #lessThan!operators!public! !
!WAConditionalComment categoriesFor: #not!operators!public! !
!WAConditionalComment categoriesFor: #openingConditionClass!private! !
!WAConditionalComment categoriesFor: #orEqual!operators!public! !

!WAConditionalComment class methodsFor!

root: anHtmlRoot	^ self basicNew initializeWithRoot: anHtmlRoot! !
!WAConditionalComment class categoriesFor: #root:!instance creation!public! !

