"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAConditionalComment
	instanceVariableNames: 'condition root'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAConditionalComment guid: (GUID fromString: '{55cb4b39-4cfd-4284-a36d-ff270622c72b}')!

WAConditionalComment comment: 'A WAConditionalComment is an implementation of Downlevel-hidden Conditional Comments:http://msdn2.microsoft.com/en-us/library/ms537512.aspxThese are only visible for the IE family of browsers.See also WAOpeningConditionalComment and WAClosingConditionalComment.'!

!WAConditionalComment categoriesForClass!Document-Elements! !

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

!WAConditionalComment categoriesForMethods!
addToCondition:!private! !
closingConditionClass!private! !
do:!public! !
equal!operators!public! !
greaterThan!operators!public! !
ie!features!public! !
ie:!features!public! !
ie5!features!public! !
ie50!features!public! !
ie55!features!public! !
ie6!features!public! !
ie7!features!public! !
ie8!features!public! !
ie9!features!public! !
initializeWithRoot:!initialization!public! !
lessThan!operators!public! !
not!operators!public! !
openingConditionClass!private! !
orEqual!operators!public! !
!

!WAConditionalComment class methodsFor!

root: anHtmlRoot	^ self basicNew initializeWithRoot: anHtmlRoot! !

!WAConditionalComment class categoriesForMethods!
root:!instance creation!public! !
!

