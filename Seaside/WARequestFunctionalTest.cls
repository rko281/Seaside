"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WARequestFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARequestFunctionalTest guid: (GUID fromString: '{f8feae0e-71c6-42cc-a0b7-d70b08201658}')!
WARequestFunctionalTest comment: ''!
!WARequestFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WARequestFunctionalTest methodsFor!

renderAcceptCharsetFor: aRequest on: html	html definitionTerm: 'Accept-Charset:'.	self renderQualifiedValues: aRequest acceptCharset on: html!

renderAcceptEncodingFor: aRequest on: html	html definitionTerm: 'Accept-Encoding:'.	self renderQualifiedValues: aRequest acceptEncoding on: html!

renderAcceptFor: aRequest on: html	html definitionTerm: 'Accept:'.	self renderQualifiedValues: aRequest accept on: html!

renderAcceptLanguageFor: aRequest on: html	html definitionTerm: 'Accept-Language:'.	self renderQualifiedValues: aRequest acceptLanguage on: html!

renderContentOn: html	| request |	html paragraph: 'This tests whether the server delivers the remote address correctly and headers can be parsed correctly.'.	request := self requestContext request.	html definitionList: [		self renderRemoteAddressFor: request on: html.		self renderSslSessionIdFor: request on: html.		self renderAcceptFor: request on: html.		self renderAcceptCharsetFor: request on: html.		self renderAcceptEncodingFor: request on: html.		self renderAcceptLanguageFor: request on: html.		self renderOtherHeadersFor: request on: html ]!

renderOtherHeadersFor: aRequest on: html	aRequest headers keys sorted do: [ :each |		(#('accept-charset' 'accept-encoding' 'accept' 'accept-language' 'cookie' '') includes: each) ifFalse: [			html definitionTerm: each, ':'.			html definitionData: (aRequest headerAt: each) ] ]!

renderQualifiedValue: aQualifiedValue on: html	html listItem: [		| quality |		html render: aQualifiedValue value.		quality := aQualifiedValue quality.		quality = Float infinity			ifTrue: [ html superscript: [ html html: '&infin;' ] ]			ifFalse: [ html superscript: quality ] ]!

renderQualifiedValues: aCollection on: html	html definitionData: [		aCollection isNil			ifTrue: [ html text: 'N/A' ]			ifFalse: [				html orderedList: [					aCollection do: [ :each |						self renderQualifiedValue: each on: html ] ] ] ]!

renderRemoteAddressFor: aRequest on: html	html definitionTerm: 'Remote Address:'.	html definitionData: aRequest remoteAddress!

renderSslSessionIdFor: aRequest on: html	aRequest isSsl ifTrue: [		html definitionTerm: 'SSL Session Id:'.		html definitionData: aRequest sslSessionId ]! !
!WARequestFunctionalTest categoriesFor: #renderAcceptCharsetFor:on:!public!rendering! !
!WARequestFunctionalTest categoriesFor: #renderAcceptEncodingFor:on:!public!rendering! !
!WARequestFunctionalTest categoriesFor: #renderAcceptFor:on:!public!rendering! !
!WARequestFunctionalTest categoriesFor: #renderAcceptLanguageFor:on:!public!rendering! !
!WARequestFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WARequestFunctionalTest categoriesFor: #renderOtherHeadersFor:on:!public!rendering! !
!WARequestFunctionalTest categoriesFor: #renderQualifiedValue:on:!public!rendering! !
!WARequestFunctionalTest categoriesFor: #renderQualifiedValues:on:!public!rendering! !
!WARequestFunctionalTest categoriesFor: #renderRemoteAddressFor:on:!public!rendering! !
!WARequestFunctionalTest categoriesFor: #renderSslSessionIdFor:on:!public!rendering! !

