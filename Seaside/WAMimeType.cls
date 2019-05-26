"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAMimeType
	instanceVariableNames: 'main sub parameters'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMimeType guid: (GUID fromString: '{8d5d0ef4-5e85-4430-be52-2fa2d3c7c996}')!
WAMimeType comment: 'A WAMimeType abstracts a Internet media type, it is a two-part identifier for file formats on the Internet.Instance Variables	main:			<String>	parameters:	<GRSmallDictionary>	sub:			<String>main	- the main typeparameters	- a lazily initialized dictionary of optional parameterssub	- the subtype'!
!WAMimeType categoriesForClass!Seaside-Core-HTTP! !
!WAMimeType methodsFor!

= other	^ (other isKindOf: WAMimeType)		and: [ self main = other main		and: [ self sub = other sub ] ]!

charSet	^ self parameters at: 'charset' ifAbsent: [ nil ]!

charset: aString	self parameters at: 'charset' put: aString!

greaseString	| stringSize string stream |	stringSize := main size + 1 + sub size.	parameters isNil ifFalse: [		parameters keysAndValuesDo: [ :key :value |			stringSize := stringSize + 1 + key size + 1 + value size ] ].	"allocate with correct size, avoid copy"	string := String new: stringSize.	stream := WriteStream on: string.	stream		nextPutAll: main;		nextPut: $/;		nextPutAll: sub.	parameters isNil ifFalse: [		parameters keysAndValuesDo: [ :key :value | 			stream				nextPut: $;;				nextPutAll: key;				nextPut: $=;				nextPutAll: value ] ].	"no need for #contents because we allocated with the correct size"	^ string!

hash	^ self main hash bitXor: self sub hash!

isBinary	"answers whether the contents of a document of the receiving mime type are binary"	self main = 'text' ifTrue: [ ^ false ].	self main = 'application'		ifTrue: [			"application/json is text"			self sub = 'json' ifTrue: [ ^ false ] ]		ifFalse: [ ^ true ].	GRPlatform subStringsIn: self sub splitBy: $+ do: [ :each |		"application/x-javascript and application/xml are text"		(#('x-javascript' 'xml') includes: each)			ifTrue: [ ^ false ] ].	^ true!

isNonStandard	"tests if the receiver is a non-standard mime type that is not registered with IANA"	^ (self main beginsWithSubCollection: 'x-')		or: [ (self main beginsWithSubCollection: 'X-')		or: [ (self sub beginsWithSubCollection: 'x-')		or: [ self sub beginsWithSubCollection: 'X-' ] ] ]!

isVendorSpecific	"tests if the receiver is a vendor specific mimetype"	^ self sub beginsWithSubCollection: 'vnd.'!

main	^ main!

main: aString	main := aString!

matches: aMimeType	"aMimeType is the pattern to match, it is a normal WAMimeType instance where main or sub can be wildcards"	^ (aMimeType main = '*'		or: [ aMimeType main = self main ])		and: [			aMimeType sub = '*'				or: [ aMimeType sub = self sub ] ]!

parameterAt: aKey put: aValue	self parameters at: aKey put: aValue!

parameters	parameters isNil ifTrue: [ parameters := GRSmallDictionary2 new ].	^ parameters!

parameters: aDictionary	parameters := aDictionary!

printOn: aStream 	super printOn: aStream.	aStream		nextPut: $(;		nextPutAll: self greaseString;		nextPut: $)!

seasideMimeType	^ self!

sub	^ sub!

sub: aString	sub := aString! !
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

applicationAtomXml	^ self main: 'application' sub: 'atom+xml'!

applicationJson	^ self main: 'application' sub: 'json'!

applicationOctetStream	^ self main: 'application' sub: 'octet-stream'!

applicationRssXml	^ self main: 'application' sub: 'rss+xml'!

formUrlencoded	^ self main: 'application' sub: 'x-www-form-urlencoded'!

fromString: aString 	| main endOfSub sub parameters slashIndex |	slashIndex := aString indexOf: $/.	slashIndex = 0		ifTrue: [			"work arount for Issue 655			some user agents just send '*', not '*/*'"			endOfSub := aString indexOf: $;.			endOfSub = 0				ifTrue: [					main := aString.					endOfSub := aString size ]				ifFalse: [					main := aString copyFrom: 1 to: endOfSub - 1 ].			sub := main ]		ifFalse: [			main := aString copyUpTo: $/.			endOfSub := aString indexOf: $;.			endOfSub := endOfSub = 0 				ifTrue: [ aString size ]				ifFalse: [ endOfSub - 1 ].			sub := aString 				copyFrom: main size + 2				to: endOfSub ].	endOfSub = aString size ifTrue: [		^ self 			main: main			sub: sub ].	parameters := GRSmallDictionary2 new.	GRPlatform subStringsIn: (aString copyFrom: endOfSub + 1 to: aString size) splitBy: $; do: [ :each |		parameters 			at: (each copyUpTo: $=) trimBoth			put: (each copyAfter: $=) trimBoth ].	^ self 		main: main		sub: sub		parameters: parameters!

imageGif	^ self main: 'image' sub: 'gif'!

imageJpeg	^ self main: 'image' sub: 'jpeg'!

imagePng	^ self main: 'image' sub: 'png'!

main: aMainString sub: aSubString	^ self new		main: aMainString;		sub: aSubString;		yourself!

main: aMainString sub: aSubString parameters: aDictionary	^ (self main: aMainString sub: aSubString)		parameters: aDictionary;		yourself!

textCss	^ self main: 'text' sub: 'css'!

textHtml	^ self main: 'text' sub: 'html'!

textJavascript	^ self main: 'text' sub: 'javascript'!

textPlain	^ self main: 'text' sub: 'plain'! !
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

