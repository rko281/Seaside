"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WADetailsTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADetailsTag guid: (GUID fromString: '{3409ac8c-adda-41d7-9a24-82b8a8aab9d1}')!

WADetailsTag comment: 'The details element represents additional information or controls which the user can obtain on demand.The first element child of a details element, if it is a legend element, represents the summary of the details.If the first element is not a legend element, the UA should provide its own legend (e.g. "Details"). '!

!WADetailsTag categoriesForClass!Tags! !

!WADetailsTag methodsFor!

open: aBoolean	"The open  content attribute is a boolean attribute. If present, it indicates that the details should be shown to the user. If the attribute is absent, the details should not be shown.	If the attribute is removed, then the details should be hidden. If the attribute is added, the details should be shown."	self attributeAt: 'open' put: aBoolean!

tag	^ 'details'! !

!WADetailsTag categoriesForMethods!
open:!attributes!public! !
tag!accessing!public! !
!

