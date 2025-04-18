﻿"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WASourceTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASourceTag guid: (GUID fromString: '{05e5aef9-0b3b-44c3-b990-9e13fa708d56}')!

WASourceTag comment: 'The source element allows authors to specify multiple media resources for media elements.The source attribute must be present. Either the type  attribute, the media attribute or both, must be specified, unless this is the last source element child of the parent element.'!

!WASourceTag categoriesForClass!Tags! !

!WASourceTag methodsFor!

media: aString	"The media  attribute gives the intended media type of the media resource, to help the user agent determine if this media resource is useful to the user before downloading it. Its value must be a valid media query. [MQ]"	self attributeAt: 'media' put: aString!

sourceSet: aString	"One or more image candidate strings, each separated from the next by a $, (U+002C) character.	http://www.w3.org/html/wg/drafts/html/master/embedded-content.html#attr-picture-source-srcset"	self attributes at: 'srcset' put: aString!

tag	^ 'source'!

type: aString	"The type  attribute gives the type of the media resource, to help the user agent determine if it can play this media resource before downloading it. Its value must be a MIME type. The codec parameter may be specified and might be necessary to specify exactly how the resource is encoded.	http://www.faqs.org/rfcs/rfc2046.html	http://www.faqs.org/rfcs/rfc4281.html"	self attributeAt: 'type' put: aString!

url: aString	"The src attribute gives the address of the media resource. The value must be a URI (or IRI). This attribute must be present."	self attributeAt: 'src' put: aString! !

!WASourceTag categoriesForMethods!
media:!attributes!public! !
sourceSet:!attributes!public! !
tag!accessing!public! !
type:!attributes!public! !
url:!attributes!public! !
!

