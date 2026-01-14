"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WAEmbedTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAEmbedTag guid: (GUID fromString: '{7b2d911e-7c96-4a2e-8cd3-6ddaa0aae396}')!

WAEmbedTag comment: 'The <embed> tag defines a container for an external application or interactive content (a plug-in).'!

!WAEmbedTag categoriesForClass!Seaside-Canvas-Tags! !

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

