"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WAImageTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAImageTag guid: (GUID fromString: '{742a0243-70c9-416b-affa-5555e6eed3fc}')!

WAImageTag comment: 'The IMG element embeds an image in the current document at the location of the element''s definition. The IMG element has no content; it is usually replaced inline by the image designated by the src attribute, the exception being for left or right-aligned images that are "floated" out of line.The alt attribute specifies alternate text that is rendered when the image cannot be displayed (see below for information on how to specify alternate text ). User agents must render alternate text when they cannot support images, they cannot support a certain image type or when they are configured not to display images.Seaside per default sets the alternate text to an empty string. This helps validation of the page.'!

!WAImageTag categoriesForClass!Tags! !

!WAImageTag methodsFor!

altText: aString	"The alt attribute provides a short description of the image."	self attributes at: 'alt' put: aString!

height: anInteger	self attributes at: 'height' put: anInteger!

initialize	super initialize.	self altText: ''!

isClosed	^ true!

onLoadEnd: anObject	"Fired at img elements after a successful load."	self document scriptGenerator		event: 'loadend'		do: anObject		on: self!

resourceUrl: aString	self url: (canvas absoluteUrlForResource: aString)!

setParent: aBrush canvas: aCanvas 	super 		setParent: aBrush		canvas: aCanvas.	(aBrush isKindOf: WAImageMapTag) ifTrue: [ 		"in case the parent is an image map we need to set this attribute"		self attributes 			at: 'ismap'			put: true ]!

sourceSet: aString	"One or more image candidate strings, each separated from the next by a $, (U+002C) character.	http://www.w3.org/html/wg/drafts/html/master/embedded-content.html#attr-picture-source-srcset"	self attributes at: 'srcset' put: aString!

tag	^ 'img'!

url: aString	self attributes at: 'src' put: aString!

width: anInteger	self attributes at: 'width' put: anInteger! !

!WAImageTag categoriesForMethods!
altText:!attributes!public! !
height:!attributes!public! !
initialize!initialization!public! !
isClosed!public!testing! !
onLoadEnd:!attributes/events!public! !
resourceUrl:!accessing!public! !
setParent:canvas:!initialization!public! !
sourceSet:!attributes!public! !
tag!accessing!public! !
url:!attributes!public! !
width:!attributes!public! !
!

