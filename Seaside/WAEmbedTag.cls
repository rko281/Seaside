"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WAEmbedTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAEmbedTag guid: (GUID fromString: '{31ea02d4-8027-42ea-b746-5395ce74f597}')!
WAEmbedTag comment: ''!
!WAEmbedTag categoriesForClass!Seaside-Canvas-Tags! !
!WAEmbedTag methodsFor!

height: anInteger	self attributeAt: 'height' put: anInteger!

tag	^ 'embed'!

type: aMimeType	self attributeAt: 'type' put: aMimeType!

url: aString	"The src attribute gives the address of the resource being embedded."	self attributeAt: 'src' put: aString!

width: anInteger	self attributeAt: 'width' put: anInteger! !
!WAEmbedTag categoriesFor: #height:!attributes!public! !
!WAEmbedTag categoriesFor: #tag!accessing!public! !
!WAEmbedTag categoriesFor: #type:!attributes!public! !
!WAEmbedTag categoriesFor: #url:!attributes!public! !
!WAEmbedTag categoriesFor: #width:!attributes!public! !

