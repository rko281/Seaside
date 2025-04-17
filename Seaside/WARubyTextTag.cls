"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WARubyTextTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARubyTextTag guid: (GUID fromString: '{ea8bf41f-dd6f-497f-81c6-5a027f0b2851}')!

WARubyTextTag comment: 'This element works with the <ruby> element. The text following <rt> appears as a note to the base text displayed by the <ruby> element.'!

!WARubyTextTag categoriesForClass!Tags! !

!WARubyTextTag methodsFor!

span: anInteger 	self attributes 		at: 'rbspan'		put: anInteger!

tag	^ 'rt'! !

!WARubyTextTag categoriesForMethods!
span:!attributes!public! !
tag!accessing!public! !
!

