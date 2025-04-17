"Filed out from Dolphin Smalltalk"!

WAHtmlElement subclass: #WAStyleElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAStyleElement guid: (GUID fromString: '{400b5bc8-84fe-4fd7-b7e9-d97e5265767b}')!

WAStyleElement comment: 'The style element allows style information to be embedded in documents.'!

!WAStyleElement categoriesForClass!Document-Elements! !

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

