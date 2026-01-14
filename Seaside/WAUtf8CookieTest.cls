"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WAUtf8CookieTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUtf8CookieTest guid: (GUID fromString: '{5fbe0796-b53b-4dc5-ae20-305d3112f558}')!

WAUtf8CookieTest comment: ''!

!WAUtf8CookieTest categoriesForClass!Seaside-Tests-UTF8! !

!WAUtf8CookieTest methodsFor!

createCodec	^ GRCodec forEncoding: 'utf-8'!

testWriteOn	| expiry cookie |	expiry := DateAndTime year: 2007 month: 11 day: 21 hour: 14 minute: 42 second: 48 offset: (Duration days: 0 hours: 2 minutes: 0 seconds: 0).	cookie := WACookie key: 'ikuser' value: '1234'.	self assert: cookie rfc6265String = 'ikuser=1234; path=/'.		cookie expiry: expiry.	cookie maxAge: 3600.	self assert: cookie rfc6265String = 'ikuser=1234; expires=Wed, 21-Nov-2007 12:42:48 GMT; Max-Age=3600; path=/'.		" #('C3' 'A4' 'C3' 'BC')"	cookie path: '/seaside/', (Utf8String with: (Character codePoint: 228) with: (Character codePoint: 252)).	self assert: cookie rfc6265String = 'ikuser=1234; expires=Wed, 21-Nov-2007 12:42:48 GMT; Max-Age=3600; path=/seaside/%C3%A4%C3%BC'.		cookie value: nil.	self assert: cookie rfc6265String = 'ikuser=; expires=Wed, 21-Nov-2007 12:42:48 GMT; Max-Age=3600; path=/seaside/%C3%A4%C3%BC'.		cookie value: '1234'.	cookie domain: 'www.example.com'.	cookie ports: (Array with: 80 with: 433).	self assert: cookie rfc6265String = 'ikuser=1234; expires=Wed, 21-Nov-2007 12:42:48 GMT; Max-Age=3600; domain=www.example.com; path=/seaside/%C3%A4%C3%BC'.		cookie discard: true.	cookie secure: true.	cookie httpOnly: true.	self assert: cookie rfc6265String = 'ikuser=1234; expires=Wed, 21-Nov-2007 12:42:48 GMT; Max-Age=3600; domain=www.example.com; path=/seaside/%C3%A4%C3%BC; Secure; HttpOnly'.		cookie comment: 'FIS Heer username'.	cookie commentUrl: 'http://www.example.com/session-cookie.html'.	self assert: cookie rfc6265String = 'ikuser=1234; expires=Wed, 21-Nov-2007 12:42:48 GMT; Max-Age=3600; domain=www.example.com; path=/seaside/%C3%A4%C3%BC; Secure; HttpOnly'! !

!WAUtf8CookieTest categoriesForMethods!
createCodec!configuration!public! !
testWriteOn!public!tests! !
!

