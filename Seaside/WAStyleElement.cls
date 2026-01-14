"Filed out from Dolphin Smalltalk"!

WAHtmlElement subclass: #WAStyleElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAStyleElement guid: (GUID fromString: '{ad69f25a-f88c-43bc-9d72-4184250a0837}')!

WAStyleElement comment: 'The style element allows style information to be embedded in documents.'!

!WAStyleElement categoriesForClass!Seaside-Core-Document-Elements! !

!WAStyleElement methodsFor!

isClosed	^ false!

media: aString 	"Specifies which media the styles apply to.	A valid media query list as defined in [Media Queries]."		self attributes at: 'media' put: aString!

tag	^ 'style'!

type: aString 	"A valid MIME type that designates a styling language.	A string that identifies a valid MIME media type as defined in [RFC 2046]."		self attributes at: 'type' put: aString! !

!WAStyleElement categoriesForMethods!
isClosed!public!testing! !
media:!attributes!public! !
tag!accessing!public! !
type:!attributes!public! !
!

