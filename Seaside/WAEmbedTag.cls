"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WAEmbedTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAEmbedTag guid: (GUID fromString: '{8b151c8f-3b57-49b4-8cbd-2c5e83553f1b}')!

WAEmbedTag comment: 'The <embed> tag defines a container for an external application or interactive content (a plug-in).'!

!WAEmbedTag categoriesForClass!Tags! !

!WAEmbedTag methodsFor!

height: anInteger	self attributeAt: 'height' put: anInteger!

tag	^ 'embed'!

type: aMimeType	self attributeAt: 'type' put: aMimeType!

url: aString	"The src attribute gives the address of the resource being embedded."	self attributeAt: 'src' put: aString!

width: anInteger	self attributeAt: 'width' put: anInteger! !

!WAEmbedTag categoriesForMethods!
height:!attributes!public! !
tag!accessing!public! !
type:!attributes!public! !
url:!attributes!public! !
width:!attributes!public! !
!

