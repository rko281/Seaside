"Filed out from Dolphin Smalltalk 7"!

WAMediaElementTag subclass: #WAVideoTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAVideoTag guid: (GUID fromString: '{fe009017-3fa5-4f0a-8762-b17a953051d7}')!
WAVideoTag comment: 'Supported only on experimental Operahttp://people.opera.com/howcome/2007/video/A video element represents a video or movie, with an alternate representation given by its contents.http://www.whatwg.org/specs/web-apps/current-work/#videohttp://lists.whatwg.org/pipermail/whatwg-whatwg.org/attachments/20070228/6a0cdddc/attachment.txt'!
!WAVideoTag categoriesForClass!Seaside-Canvas-Tags! !
!WAVideoTag methodsFor!

height: anInteger	"The videoHeight  DOM attribute must return the native height of the video in CSS pixels. In the absence of resolution information, user agents may assume that one pixel in the video corresponds to one CSS pixel."	self attributeAt: 'height' put: anInteger!

poster: aString	"The poster attribute gives the address of an image file that the user agent can show while no video data is available. The attribute, if present, must contain a valid non-empty URL potentially surrounded by spaces."	self attributeAt: 'poster' put: aString!

tag	^ 'video'!

width: anInteger	"The videoWidth DOM attribute must return the native width of the video in CSS pixels. In the absence of resolution information, user agents may assume that one pixel in the video corresponds to one CSS pixel."	self attributeAt: 'width' put: anInteger! !
!WAVideoTag categoriesFor: #height:!attributes!public! !
!WAVideoTag categoriesFor: #poster:!attributes!public! !
!WAVideoTag categoriesFor: #tag!accessing!public! !
!WAVideoTag categoriesFor: #width:!attributes!public! !

