"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WARubyTextTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARubyTextTag guid: (GUID fromString: '{6af6e469-78ba-4dc4-a090-5b9953a6fd08}')!

WARubyTextTag comment: 'This element works with the <ruby> element. The text following <rt> appears as a note to the base text displayed by the <ruby> element.'!

!WARubyTextTag categoriesForClass!Seaside-Canvas-Tags! !

!WARubyTextTag methodsFor!

span: anInteger 	self attributes 		at: 'rbspan'		put: anInteger!

tag	^ 'rt'! !

!WARubyTextTag categoriesForMethods!
span:!attributes!public! !
tag!accessing!public! !
!

