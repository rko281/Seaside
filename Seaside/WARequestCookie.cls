﻿"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WARequestCookie
	instanceVariableNames: 'key path pathEncoded domain ports value version'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARequestCookie guid: (GUID fromString: '{191f7f11-37a6-4580-9662-ab6a92796462}')!
WARequestCookie comment: 'A WARequestCookie is the cookie the user agent sent to the server.
!WARequestCookie categoriesForClass!Seaside-Core-HTTP! !
!WARequestCookie methodsFor!

= other

domain

domain: aString

hash

key

key: aString

path

path: aString

pathEncoded

pathEncoded: aString codec: aCodec

pathUnencoded

pathUnencoded: aString codec: aCodec

pathUnencoded: aFirstString encoded: aSecondString

port: anInteger

ports

ports: aCollection

postCopy

setPorts: aString

value

value: aString

version

version: anInteger
!WARequestCookie categoriesFor: #=!comparing!public! !
!WARequestCookie categoriesFor: #domain!accessing!public! !
!WARequestCookie categoriesFor: #domain:!accessing!public! !
!WARequestCookie categoriesFor: #hash!comparing!public! !
!WARequestCookie categoriesFor: #key!accessing!public! !
!WARequestCookie categoriesFor: #key:!accessing!public! !
!WARequestCookie categoriesFor: #path!accessing!public! !
!WARequestCookie categoriesFor: #path:!accessing!public! !
!WARequestCookie categoriesFor: #pathEncoded!accessing!public! !
!WARequestCookie categoriesFor: #pathEncoded:codec:!accessing!public! !
!WARequestCookie categoriesFor: #pathUnencoded!accessing!public! !
!WARequestCookie categoriesFor: #pathUnencoded:codec:!accessing!public! !
!WARequestCookie categoriesFor: #pathUnencoded:encoded:!accessing!public! !
!WARequestCookie categoriesFor: #port:!accessing!public! !
!WARequestCookie categoriesFor: #ports!accessing!public! !
!WARequestCookie categoriesFor: #ports:!accessing!public! !
!WARequestCookie categoriesFor: #postCopy!copying!public! !
!WARequestCookie categoriesFor: #setPorts:!initialization!public! !
!WARequestCookie categoriesFor: #value!accessing!public! !
!WARequestCookie categoriesFor: #value:!accessing!public! !
!WARequestCookie categoriesFor: #version!accessing!public! !
!WARequestCookie categoriesFor: #version:!accessing!public! !

!WARequestCookie class methodsFor!

actions

fromString: aString codec: aCodec

key: keyString value: valueString

keyFrom: aString

trimBlanksAndQuotes: aString

valueFrom: aString
!WARequestCookie class categoriesFor: #actions!accessing!public! !
!WARequestCookie class categoriesFor: #fromString:codec:!instance creation!public! !
!WARequestCookie class categoriesFor: #key:value:!instance creation!public! !
!WARequestCookie class categoriesFor: #keyFrom:!private! !
!WARequestCookie class categoriesFor: #trimBlanksAndQuotes:!private! !
!WARequestCookie class categoriesFor: #valueFrom:!private! !
