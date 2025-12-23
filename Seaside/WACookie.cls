"Filed out from Dolphin Smalltalk"!

WARequestCookie subclass: #WACookie
	instanceVariableNames: 'expiry secure discard comment commentUrl httpOnly sameSite maxAge'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACookie guid: (GUID fromString: '{3d8c3e97-3003-4c16-8e7e-6e44cf222d3f}')!

WACookie comment: 'I represent a cookie, a piece of information that is stored on the client and read and writable by the server. I am basically a key/value pair of strings.You can never trust information in a cookie, the client is free to edit it.I model only a part of the full cookie specification.Browser support:http://www.mnot.net/blog/2006/10/27/cookie_funNetscape spechttp://cgi.netscape.com/newsref/std/cookie_spec.htmlCookie spechttp://tools.ietf.org/html/rfc2109Cookie 2 spechttps://tools.ietf.org/html/rfc6265HttpOnlyhttp://msdn2.microsoft.com/en-us/library/ms533046.aspxhttps://bugzilla.mozilla.org/show_bug.cgi?id=178993Compared to WARequestCookie I represent the information that is sent to the user agent.'!

!WACookie categoriesForClass!HTTP! !

!WACookie methodsFor!

comment	^ comment!

comment: aString	comment := aString!

commentUrl	^ commentUrl!

commentUrl: aUrl	commentUrl := aUrl!

discard	^ discard!

discard: aBoolean	discard := aBoolean!

expireIn: aDuration	"sets the lifetime of the receiver measured in a duration"	self expiry: DateAndTime now + aDuration.	self maxAge: aDuration asSeconds!

expireInPast	self maxAge: 0.	self expiry: (DateAndTime now - (Duration days: 10 hours: 0 minutes: 0 seconds: 0))!

expireInSeconds: anInteger	"sets the lifetime of the receiver measured in seconds"	self expiry: (Duration days: 0 hours: 0 minutes: 0 seconds: anInteger).	self maxAge: anInteger!

expiry	^ expiry!

expiry: aDateTime	expiry := aDateTime asUTC!

expiryString	^ GRPrinter cookieTimestamp print: expiry!

httpOnly	^ httpOnly!

httpOnly: anObject	httpOnly := anObject!

initialize	super initialize.	self secure: false.	self discard: false.	self httpOnly: false.	self version: 1!

maxAge	^ maxAge!

maxAge: anInteger	"Optional.  The Max-Age attribute defines the lifetime of the	cookie, in seconds.  The delta-seconds value is a decimal non-	negative integer.  After delta-seconds seconds elapse, the client	should discard the cookie.  A value of zero means the cookie	should be discarded immediately."	maxAge := anInteger!

oldNetscapeString
	"Backwards compatibility for Dolphin HTTP Server"

	^self rfc6265String!

rfc6265String	"Serializes the receiver according to RFC 6265.	See class comment for a link to the spec."	^ String streamContents: [ :stream |		| useQuotes |		"the spec allows us to quote but we don't know how good browser support is"		useQuotes := false.		self writeKeyValueQuoted: useQuotes on: stream.		self writeExpiresOn: stream.		self writeMaxAgeQuoted: useQuotes on: stream.		self writeDomainQuoted: useQuotes on: stream.		self writePathQuoted: useQuotes on: stream.		self writeSecureOn: stream.		self writeHttpOnlyOn: stream.		self writeSameSiteOn: stream ]!

sameSite	^ sameSite!

sameSite: aString	sameSite := aString!

secure	^ secure!

secure: aBoolean	secure := aBoolean!

write: aString asQuotedStringOn: aStream	aStream nextPut: $".	aString do: [ :each |		each = $" 			ifTrue: [ aStream nextPutAll: '\"' ]			ifFalse: [ aStream nextPut: each ] ].	aStream nextPut: $"!

write: aString quoted: aBoolean on: aStream	aBoolean		ifTrue: [			self				write: aString				asQuotedStringOn: aStream ]		ifFalse: [ aStream nextPutAll: aString ]!

writeCommentOn: aStream	self comment isNil		ifTrue: [ ^ self ].	aStream nextPutAll: '; Comment='.	self write: self comment asQuotedStringOn: aStream!

writeCommentUrlOn: aStream 	self commentUrl isNil ifTrue: [ ^ self ].	aStream nextPutAll: '; CommentURL='.	self 		write: self commentUrl greaseString		asQuotedStringOn: aStream!

writeDiscardOn: aStream	(self discard notNil and: [ self discard ])		ifTrue: [ aStream nextPutAll: '; Discard' ]!

writeDomainQuoted: aBoolean on: aStream	domain isNil		ifTrue: [ ^ self ].	aStream nextPutAll: '; domain='.	self write: self domain quoted: aBoolean on: aStream!

writeExpiresOn: aStream	expiry isNil		ifTrue: [ ^ self ].	aStream		nextPutAll: '; expires=';		nextPutAll: self expiryString!

writeHttpOnlyOn: aStream	self httpOnly		ifTrue: [ aStream nextPutAll: '; HttpOnly' ]!

writeKeyValueQuoted: aBoolean on: aStream	aStream nextPutAll: self key.	aStream nextPut: $=.	self		write: (self value ifNil: [ '' ])		quoted: aBoolean		on: aStream!

writeMaxAgeQuoted: aBoolean on: aStream	maxAge isNil		ifTrue: [ ^ self ].	aStream nextPutAll: '; Max-Age='.	self write: self maxAge greaseString quoted: aBoolean on: aStream!

writeOn: aStream	aStream nextPutAll: self rfc6265String!

writePathQuoted: aBoolean on: aStream	pathEncoded isNil		ifTrue: [ ^ self ].	aStream nextPutAll: '; path='.	self write: pathEncoded quoted: aBoolean on: aStream!

writePortsOn: aStream	ports isEmptyOrNil		ifTrue: [ ^ self ].	aStream nextPutAll: '; Port="'.	self ports do: [ :each | aStream print: each ] separatedBy: [ aStream nextPut: $, ].	aStream nextPut: $"!

writeSameSiteOn: aStream	sameSite isNil		ifTrue: [ ^ self ].	aStream		nextPutAll: '; SameSite=';		nextPutAll: sameSite!

writeSecureOn: aStream	self secure		ifTrue: [ aStream nextPutAll: '; Secure' ]!

writeVersionOn: aStream	aStream nextPutAll: '; Version='.	aStream print: self version! !

!WACookie categoriesForMethods!
comment!accessing!public! !
comment:!accessing!public! !
commentUrl!accessing!public! !
commentUrl:!accessing!public! !
discard!accessing!public! !
discard:!accessing!public! !
expireIn:!api!public! !
expireInPast!api!public! !
expireInSeconds:!api!public! !
expiry!accessing!public! !
expiry:!accessing!public! !
expiryString!private! !
httpOnly!accessing!public! !
httpOnly:!accessing!public! !
initialize!initialization!public! !
maxAge!accessing!public! !
maxAge:!accessing!public! !
oldNetscapeString!accessing!public! !
rfc6265String!public!writing! !
sameSite!accessing!public! !
sameSite:!accessing!public! !
secure!accessing!public! !
secure:!accessing!public! !
write:asQuotedStringOn:!public!writing/private! !
write:quoted:on:!public!writing/private! !
writeCommentOn:!public!writing/private! !
writeCommentUrlOn:!public!writing/private! !
writeDiscardOn:!public!writing/private! !
writeDomainQuoted:on:!public!writing/private! !
writeExpiresOn:!public!writing/private! !
writeHttpOnlyOn:!public!writing/private! !
writeKeyValueQuoted:on:!public!writing/private! !
writeMaxAgeQuoted:on:!public!writing/private! !
writeOn:!public!writing! !
writePathQuoted:on:!public!writing/private! !
writePortsOn:!public!writing/private! !
writeSameSiteOn:!public!writing/private! !
writeSecureOn:!public!writing/private! !
writeVersionOn:!public!writing/private! !
!

!WACookie class methodsFor!

combine: aCollectionOfCookies using: aOneArgumentBlock	"combines several cookies into one HTTP header line	aOneArgumentBlock takes a cookie as an argument and returns a string,	it is supposed to send one of #oldNetscapeString #rfc2109String #rfc2965String to the argument"	^ String streamContents: [ :stream |		aCollectionOfCookies			do: [ :each |				stream nextPutAll: (aOneArgumentBlock value: each) ]			separatedBy: [ stream nextPutAll: ', ' ] ]! !

!WACookie class categoriesForMethods!
combine:using:!convenience!public! !
!

