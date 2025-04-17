"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WARequestFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARequestFunctionalTest guid: (GUID fromString: '{8a0d7483-0f8d-4df9-a4f9-3cd070f24adc}')!

WARequestFunctionalTest comment: ''!

!WARequestFunctionalTest categoriesForClass!Unclassified! !

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

!WARequestFunctionalTest categoriesForMethods!
renderAcceptCharsetFor:on:!public!rendering! !
renderAcceptEncodingFor:on:!public!rendering! !
renderAcceptFor:on:!public!rendering! !
renderAcceptLanguageFor:on:!public!rendering! !
renderContentOn:!public!rendering! !
renderOtherHeadersFor:on:!public!rendering! !
renderQualifiedValue:on:!public!rendering! !
renderQualifiedValues:on:!public!rendering! !
renderRemoteAddressFor:on:!public!rendering! !
renderSslSessionIdFor:on:!public!rendering! !
!

