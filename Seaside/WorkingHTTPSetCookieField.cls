"Filed out from Dolphin Smalltalk 7"!

HTTPSetCookieField subclass: #WorkingHTTPSetCookieField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WorkingHTTPSetCookieField guid: (GUID fromString: '{018b112f-4d84-4b47-802a-348f7b290bd4}')!
WorkingHTTPSetCookieField comment: 'A WorkingHTTPSetCookieField is a working implementation of HTTPSetCookieField. The problem with HTTPSetCookieField is that Swazoo developers think it is more important to be compliant with philosophical principles than Firefox and Internet Explorer. The HTTP spec says that any multi valued header field can legally be combined with a '',''. But Firefox and Internet Explorer don''t support this because the value of set cookie header can legally contain a '',''. So this implementaion does not combine set cookie headers. This allows you to set multiple cookies with one response.'!
!WorkingHTTPSetCookieField categoriesForClass!Unclassified! !
!WorkingHTTPSetCookieField methodsFor!

crlfOn: aStream 
	aStream crlf!

printOn: aStream
	self cookies
		do: [ :each | self printValue: each on: aStream ]
		separatedBy: [ self crlfOn: aStream ]
	!

printValue: aString on: aStream
	aStream
		nextPutAll: self name;
		nextPutAll: ': '.
	aStream nextPutAll: aString! !
!WorkingHTTPSetCookieField categoriesFor: #crlfOn:!printing!public! !
!WorkingHTTPSetCookieField categoriesFor: #printOn:!printing!public! !
!WorkingHTTPSetCookieField categoriesFor: #printValue:on:!printing!public! !

