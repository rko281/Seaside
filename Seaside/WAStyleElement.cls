"Filed out from Dolphin Smalltalk 7"!

WAHtmlElement subclass: #WAStyleElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAStyleElement guid: (GUID fromString: '{55e186b9-33cb-41a3-a988-55c3a6692879}')!
WAStyleElement comment: 'The style element allows style information to be embedded in documents.'!
!WAStyleElement categoriesForClass!Seaside-Core-Document-Elements! !
!WAStyleElement methodsFor!

isClosed	^ false!

media: aString 	"Specifies which media the styles apply to.	A valid media query list as defined in [Media Queries]."		self attributes at: 'media' put: aString!

tag	^ 'style'!

type: aString 	"A valid MIME type that designates a styling language.	A string that identifies a valid MIME media type as defined in [RFC 2046]."		self attributes at: 'type' put: aString! !
!WAStyleElement categoriesFor: #isClosed!public!testing! !
!WAStyleElement categoriesFor: #media:!attributes!public! !
!WAStyleElement categoriesFor: #tag!accesing!public! !
!WAStyleElement categoriesFor: #type:!attributes!public! !

