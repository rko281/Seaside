﻿"Filed out from Dolphin Smalltalk"!

WAPainter subclass: #WAWelcomeUrlDialog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAWelcomeUrlDialog guid: (GUID fromString: '{37d7f9b2-a290-48dc-bbd9-c826deb1b4c5}')!

WAWelcomeUrlDialog comment: ''!

!WAWelcomeUrlDialog categoriesForClass!Base! !

!WAWelcomeUrlDialog methodsFor!

renderContentOn: html	| url input |	html form		onSubmit: (html javascript return: false);		with: [ 			(input := html textInput)				value: self serverUrl greaseString;				callback: [ :urlString | url := WAUrl absolute: urlString ].			self serverUrl isNil ifTrue: [ 				"Setup a sample string"				input					value: 'http://localhost:8080/';					class: 'sampleValue';					script:						(html jQuery this onFocus:							((html jQuery this)								value: '';								removeClass: 'sampleValue';								unbind: 'focus')) ].			html button				bePush;				onClick:					(((html jQuery: #confirm) load)						html: '';						serializeForm;						html: [ :r | self renderTryingUrl: url on: r ]);				with: 'Test' ].	html div id: 'confirm'!

renderSuccessUrl: url on: html	html paragraph: [ 		html text: 'Success!! '.		html button			bePush;			onClick:				((html jQuery ajax)					callback: [ self serverUrl: url ];					onComplete: html javascript refresh);		with: 'Update Configuration' ]!

renderTryingUrl: url on: html	| testUrl |	testUrl := url copy addAllToPath: (WAAdmin defaultDispatcher url relativeTo: self requestContext handler url).	html paragraph: 'Trying ' , testUrl greaseString , ' ...'.	html script:		((html jQuery ajax)			script: [ :s | 				s <<					(s jQuery: '#confirm')						append: [ :r |  self renderSuccessUrl: url on: r ] ];						optionAt: 'url' put: testUrl;						yourself)!

serverUrl	^ self class serverUrl!

serverUrl: aUrl	self class serverUrl: aUrl! !

!WAWelcomeUrlDialog categoriesForMethods!
renderContentOn:!public!rendering! !
renderSuccessUrl:on:!public!rendering! !
renderTryingUrl:on:!public!rendering! !
serverUrl!private! !
serverUrl:!private! !
!

!WAWelcomeUrlDialog class methodsFor!

clearServerUrl	WAAdmin defaultDispatcher		serverProtocol: nil;		serverHostname: nil;		serverPort: nil;		serverPath: nil!

serverUrl	| dispatcher |	dispatcher := WAAdmin defaultDispatcher.	(dispatcher serverProtocol isNil and: [ dispatcher serverHostname isNil and: [		dispatcher serverPort isNil and: [ dispatcher serverPath isNil ] ] ])			ifTrue: [ ^ nil ].	^ dispatcher url!

serverUrl: aUrl	WAAdmin defaultDispatcher		serverProtocol: aUrl scheme;		serverHostname: aUrl host;		serverPort: aUrl port;		serverPath: aUrl pathStringUnencoded! !

!WAWelcomeUrlDialog class categoriesForMethods!
clearServerUrl!public!urls! !
serverUrl!public!urls! !
serverUrl:!public!urls! !
!

