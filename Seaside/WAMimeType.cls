﻿"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAMimeType
	instanceVariableNames: 'main sub parameters'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMimeType guid: (GUID fromString: '{70dca883-44a3-4a48-b4b4-bc8bd952089f}')!
WAMimeType comment: 'A WAMimeType abstracts a Internet media type, it is a two-part identifier for file formats on the Internet.
!WAMimeType categoriesForClass!Seaside-Core-HTTP! !
!WAMimeType methodsFor!

= other

charSet

charset: aString

greaseString

hash

isBinary

isNonStandard

isVendorSpecific

main

main: aString

matches: aMimeType

parameterAt: aKey put: aValue

parameters

parameters: aDictionary

printOn: aStream 

seasideMimeType

sub

sub: aString
!WAMimeType categoriesFor: #=!comparing!public! !
!WAMimeType categoriesFor: #charSet!parameters!public! !
!WAMimeType categoriesFor: #charset:!parameters!public! !
!WAMimeType categoriesFor: #greaseString!converting!public! !
!WAMimeType categoriesFor: #hash!comparing!public! !
!WAMimeType categoriesFor: #isBinary!public!testing! !
!WAMimeType categoriesFor: #isNonStandard!public!testing! !
!WAMimeType categoriesFor: #isVendorSpecific!public!testing! !
!WAMimeType categoriesFor: #main!accessing!public! !
!WAMimeType categoriesFor: #main:!accessing!public! !
!WAMimeType categoriesFor: #matches:!public!testing! !
!WAMimeType categoriesFor: #parameterAt:put:!parameters!public! !
!WAMimeType categoriesFor: #parameters!accessing!public! !
!WAMimeType categoriesFor: #parameters:!accessing!public! !
!WAMimeType categoriesFor: #printOn:!printing!public! !
!WAMimeType categoriesFor: #seasideMimeType!converting!public! !
!WAMimeType categoriesFor: #sub!accessing!public! !
!WAMimeType categoriesFor: #sub:!accessing!public! !

!WAMimeType class methodsFor!

applicationAtomXml

applicationJson

applicationOctetStream

applicationRssXml

formUrlencoded

fromString: aString 

imageGif

imageJpeg

imagePng

main: aMainString sub: aSubString

main: aMainString sub: aSubString parameters: aDictionary

textCss

textHtml

textJavascript

textPlain
!WAMimeType class categoriesFor: #applicationAtomXml!convenience!public! !
!WAMimeType class categoriesFor: #applicationJson!convenience!public! !
!WAMimeType class categoriesFor: #applicationOctetStream!convenience!public! !
!WAMimeType class categoriesFor: #applicationRssXml!convenience!public! !
!WAMimeType class categoriesFor: #formUrlencoded!convenience!public! !
!WAMimeType class categoriesFor: #fromString:!instance creation!public! !
!WAMimeType class categoriesFor: #imageGif!convenience!public! !
!WAMimeType class categoriesFor: #imageJpeg!convenience!public! !
!WAMimeType class categoriesFor: #imagePng!convenience!public! !
!WAMimeType class categoriesFor: #main:sub:!instance creation!public! !
!WAMimeType class categoriesFor: #main:sub:parameters:!instance creation!public! !
!WAMimeType class categoriesFor: #textCss!convenience!public! !
!WAMimeType class categoriesFor: #textHtml!convenience!public! !
!WAMimeType class categoriesFor: #textJavascript!convenience!public! !
!WAMimeType class categoriesFor: #textPlain!convenience!public! !
