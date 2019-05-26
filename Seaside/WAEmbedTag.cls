"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WAEmbedTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAEmbedTag guid: (GUID fromString: '{af50c9c0-7b13-4b42-89d0-6db3f2943fa7}')!
WAEmbedTag comment: 'The <embed> tag defines a container for an external application or interactive content (a plug-in).'!
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

