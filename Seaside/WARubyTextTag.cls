"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WARubyTextTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARubyTextTag guid: (GUID fromString: '{0d13327a-e9e7-4f49-b5d6-75f4952448cb}')!
WARubyTextTag comment: 'This element works with the <ruby> element. The text following <rt> appears as a note to the base text displayed by the <ruby> element.'!
!WARubyTextTag categoriesForClass!Seaside-Canvas-Tags! !
!WARubyTextTag methodsFor!

span: anInteger 	self attributes 		at: 'rbspan'		put: anInteger!

tag	^ 'rt'! !
!WARubyTextTag categoriesFor: #span:!attributes!public! !
!WARubyTextTag categoriesFor: #tag!accessing!public! !

