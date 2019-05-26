"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WARubyTextTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARubyTextTag guid: (GUID fromString: '{2d30a1af-d9e6-4e66-8e85-be21158a443b}')!
WARubyTextTag comment: 'This element works with the <ruby> element. The text following <rt> appears as a note to the base text displayed by the <ruby> element.'!
!WARubyTextTag categoriesForClass!Seaside-Canvas-Tags! !
!WARubyTextTag methodsFor!

span: anInteger 	self attributes 		at: 'rbspan'		put: anInteger!

tag	^ 'rt'! !
!WARubyTextTag categoriesFor: #span:!attributes!public! !
!WARubyTextTag categoriesFor: #tag!accessing!public! !

