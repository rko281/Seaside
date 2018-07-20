"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WAMediaElementTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMediaElementTag guid: (GUID fromString: '{8d70dd62-7752-420a-b4df-d032c9b41cd3}')!
WAMediaElementTag comment: 'WAMediaElementTag is an abstract class for all the media elements providing common media attributes.See: http://www.w3.org/TR/html5/video.html#media-element'!
!WAMediaElementTag categoriesForClass!Seaside-Canvas-Tags! !
!WAMediaElementTag methodsFor!

autoplay: aBoolean	"The autoplay attribute is a boolean attribute. When present, the user agent (as described in the algorithm described herein) will automatically begin playback of the media resource as soon as it can do so without stopping."	self attributeAt: 'autoplay' put: aBoolean!

controls: aBoolean	"The controls attribute is a boolean attribute. If present, it indicates that the author has not provided a scripted controller and would like the user agent to provide its own set of controls."	self attributeAt: 'controls' put: aBoolean!

loop: aBoolean	"The loop attribute is a boolean attribute that, if specified, indicates that the media element is to seek back to the start of the media resource upon reaching the end."	self attributeAt: 'loop' put: aBoolean!

preload: aString	"The preload attribute is intended to provide a hint to the user agent about what the author thinks will lead to the best user experience.	See: http://www.w3.org/TR/html5/video.html#attr-media-preload		The preload attribute can have one of three values: 'none', 'metadata', 'auto'.	Providing an empty string defaults the value of the attribute to be 'auto'."	self attributeAt: 'preload' put: aString!

url: aString	self attributeAt: 'src' put: aString! !
!WAMediaElementTag categoriesFor: #autoplay:!attributes!public! !
!WAMediaElementTag categoriesFor: #controls:!attributes!public! !
!WAMediaElementTag categoriesFor: #loop:!attributes!public! !
!WAMediaElementTag categoriesFor: #preload:!attributes!public! !
!WAMediaElementTag categoriesFor: #url:!attributes!public! !

