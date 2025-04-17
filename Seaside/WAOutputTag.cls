"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WAOutputTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAOutputTag guid: (GUID fromString: '{332c8434-5cb1-4f09-8bd3-12545226e2b0}')!

WAOutputTag comment: 'The output element represents the result of a calculation.'!

!WAOutputTag categoriesForClass!Tags! !

!WAOutputTag methodsFor!

for: aString	"The for content attribute allows an explicit relationship to be made between the result of a calculation and the elements that represent the values that went into the calculation or that otherwise influenced the calculation. The for attribute, if specified, must contain a string consisting of an unordered set of unique space-separated tokens that are case-sensitive, each of which must have the value of an ID of an element in the same Document."	self attributeAt: 'for' put: aString!

form: aString	"The form attribute is used to explicitly associate the output element with its form owner."	self attributeAt: 'form' put: aString!

name: aString	self attributeAt: 'name' put: aString!

tag	^ 'output'! !

!WAOutputTag categoriesForMethods!
for:!attributes!public! !
form:!attributes!public! !
name:!attributes!public! !
tag!accessing!public! !
!

