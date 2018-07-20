﻿"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAUrl
	instanceVariableNames: 'scheme user password host port path slash queryFields fragment pathParameters'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUrl guid: (GUID fromString: '{42cbe6c1-695f-475e-aedb-654e1ac6e3d0}')!
WAUrl comment: 'I represent all portions of an URL as described by the RFC 1738 and updated by RFC 3986. I include scheme, userinfo, host, port, path, parameter, query, and fragment.
!WAUrl categoriesForClass!Seaside-Core-HTTP! !
!WAUrl methodsFor!

= aUrl

addAllToPath: aCollectionOfStrings

addField: aKey

addField: aKey value: aValue

addPathParameterAt: anIndex key: aKey

addPathParameterAt: anIndex key: aKey value: aValue

addToPath: aString

decode: aString

decodedWith: aCodec

detectCommonPathElementClass

encodeFragmentOn: aDocument

encodeOn: aDocument

encodePathOn: aDocument

encodePathParametersAt: anIndex on: aDocument

encodeQueryOn: aDocument 

encodeSchemeAndAuthorityOn: aDocument

fragment

fragment: aString

hash

host

host: aString

initialize

initializeFromString: aString

isSeasideField: aString

isSsl

parseAuthority: aString from: start to: end

parseFragment: aString from: startIndex

parseHostPort: aString from: start to: end

parsePath: aString

parsePath: aString absolute: absolute from: start to: end

parsePathParameters: aString at: anIndex from: start to: end

parsePort: aString from: start to: end

parseQuery: aString from: queryStart to: queryEnd

parseUserPassword: aString from: start to: end

password

password: aString

path

path: aCollection

pathElementsIn: aString do: aOneArgumentBlock

pathEncodedWith: aCodec on: aStream

pathParameterAllAt: anIndex key: aKey ifAbsent: aZeroArgumentBlock

pathParameterAt: anIndex key: aKey ifAbsent: aZeroArgumentBlock

pathStringEncodedWith: aCodec

pathStringSafeUnencoded

pathStringUnencoded

pathStringUnencodedSize

pathUnencodedOn: aStream

port

port: aNumber

postCopy

printOn: aStream 

privatePathParameterMapAt: anIndex

privatePathParameterMapAt: anIndex ifPresentDo: aOneArgumentBlock ifAbsent: aZeroArgumentBlock

queryFields

queryFields: aDictionary

queryString

relativeTo: aUrl

scheme

scheme: aString

seasideUrl

slash

slash: aBoolean

takeServerParametersFromRequest: aRequest

user

user: aString

userinfo

userinfo: aString

with: pathString

withField: aString

withField: aString value: valueString

withoutFragment

withoutQuery
!WAUrl categoriesFor: #=!comparing!public! !
!WAUrl categoriesFor: #addAllToPath:!adding!public! !
!WAUrl categoriesFor: #addField:!adding!public! !
!WAUrl categoriesFor: #addField:value:!adding!public! !
!WAUrl categoriesFor: #addPathParameterAt:key:!adding!public! !
!WAUrl categoriesFor: #addPathParameterAt:key:value:!adding!public! !
!WAUrl categoriesFor: #addToPath:!adding!public! !
!WAUrl categoriesFor: #decode:!private! !
!WAUrl categoriesFor: #decodedWith:!converting!public! !
!WAUrl categoriesFor: #detectCommonPathElementClass!private! !
!WAUrl categoriesFor: #encodeFragmentOn:!encoding!public! !
!WAUrl categoriesFor: #encodeOn:!encoding!public! !
!WAUrl categoriesFor: #encodePathOn:!encoding!public! !
!WAUrl categoriesFor: #encodePathParametersAt:on:!encoding!public! !
!WAUrl categoriesFor: #encodeQueryOn:!encoding!public! !
!WAUrl categoriesFor: #encodeSchemeAndAuthorityOn:!encoding!public! !
!WAUrl categoriesFor: #fragment!accessing!public! !
!WAUrl categoriesFor: #fragment:!accessing!public! !
!WAUrl categoriesFor: #hash!comparing!public! !
!WAUrl categoriesFor: #host!accessing!public! !
!WAUrl categoriesFor: #host:!accessing!public! !
!WAUrl categoriesFor: #initialize!initialization!public! !
!WAUrl categoriesFor: #initializeFromString:!initialization!public! !
!WAUrl categoriesFor: #isSeasideField:!private! !
!WAUrl categoriesFor: #isSsl!public!testing! !
!WAUrl categoriesFor: #parseAuthority:from:to:!parsing!public! !
!WAUrl categoriesFor: #parseFragment:from:!parsing!public! !
!WAUrl categoriesFor: #parseHostPort:from:to:!parsing!public! !
!WAUrl categoriesFor: #parsePath:!parsing!public! !
!WAUrl categoriesFor: #parsePath:absolute:from:to:!parsing!public! !
!WAUrl categoriesFor: #parsePathParameters:at:from:to:!parsing!public! !
!WAUrl categoriesFor: #parsePort:from:to:!parsing!public! !
!WAUrl categoriesFor: #parseQuery:from:to:!parsing!public! !
!WAUrl categoriesFor: #parseUserPassword:from:to:!parsing!public! !
!WAUrl categoriesFor: #password!accessing!public! !
!WAUrl categoriesFor: #password:!accessing!public! !
!WAUrl categoriesFor: #path!accessing!public! !
!WAUrl categoriesFor: #path:!accessing!public! !
!WAUrl categoriesFor: #pathElementsIn:do:!private! !
!WAUrl categoriesFor: #pathEncodedWith:on:!converting!public! !
!WAUrl categoriesFor: #pathParameterAllAt:key:ifAbsent:!accessing!public! !
!WAUrl categoriesFor: #pathParameterAt:key:ifAbsent:!accessing!public! !
!WAUrl categoriesFor: #pathStringEncodedWith:!converting!public! !
!WAUrl categoriesFor: #pathStringSafeUnencoded!converting!public! !
!WAUrl categoriesFor: #pathStringUnencoded!converting!public! !
!WAUrl categoriesFor: #pathStringUnencodedSize!private! !
!WAUrl categoriesFor: #pathUnencodedOn:!converting!public! !
!WAUrl categoriesFor: #port!accessing!public! !
!WAUrl categoriesFor: #port:!accessing!public! !
!WAUrl categoriesFor: #postCopy!copying!public! !
!WAUrl categoriesFor: #printOn:!printing!public! !
!WAUrl categoriesFor: #privatePathParameterMapAt:!private! !
!WAUrl categoriesFor: #privatePathParameterMapAt:ifPresentDo:ifAbsent:!private! !
!WAUrl categoriesFor: #queryFields!accessing!public! !
!WAUrl categoriesFor: #queryFields:!accessing!public! !
!WAUrl categoriesFor: #queryString!converting!public! !
!WAUrl categoriesFor: #relativeTo:!converting!public! !
!WAUrl categoriesFor: #scheme!accessing!public! !
!WAUrl categoriesFor: #scheme:!accessing!public! !
!WAUrl categoriesFor: #seasideUrl!converting!public! !
!WAUrl categoriesFor: #slash!accessing!public! !
!WAUrl categoriesFor: #slash:!accessing!public! !
!WAUrl categoriesFor: #takeServerParametersFromRequest:!private! !
!WAUrl categoriesFor: #user!accessing!public! !
!WAUrl categoriesFor: #user:!accessing!public! !
!WAUrl categoriesFor: #userinfo!accessing!public! !
!WAUrl categoriesFor: #userinfo:!accessing!public! !
!WAUrl categoriesFor: #with:!copying!public! !
!WAUrl categoriesFor: #withField:!copying!public! !
!WAUrl categoriesFor: #withField:value:!copying!public! !
!WAUrl categoriesFor: #withoutFragment!copying!public! !
!WAUrl categoriesFor: #withoutQuery!copying!public! !

!WAUrl class methodsFor!

absolute: aString

absolute: aString relative: aRelativeString

decodePercent: aString

decodePercent: aString from: start

decodePercent: aString from: start to: end

decodePercentAndPlus: aString from: start to: end
!WAUrl class categoriesFor: #absolute:!parsing!public! !
!WAUrl class categoriesFor: #absolute:relative:!parsing!public! !
!WAUrl class categoriesFor: #decodePercent:!decoding!public! !
!WAUrl class categoriesFor: #decodePercent:from:!decoding!public! !
!WAUrl class categoriesFor: #decodePercent:from:to:!decoding!public! !
!WAUrl class categoriesFor: #decodePercentAndPlus:from:to:!decoding!public! !
