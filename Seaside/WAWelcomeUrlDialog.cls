"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WAWelcomeUrlDialog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAWelcomeUrlDialog guid: (GUID fromString: '{db67cf5f-319d-4206-8844-4610b7168ae1}')!
WAWelcomeUrlDialog comment: ''!
!WAWelcomeUrlDialog categoriesForClass!Seaside-Welcome! !
!WAWelcomeUrlDialog methodsFor!

renderContentOn: html	| url input |	html form		onSubmit: (html javascript return: false);		with: [ 			(input := html textInput)				value: self serverUrl greaseString;				callback: [ :urlString | url := WAUrl absolute: urlString ].			self serverUrl isNil ifTrue: [ 				"Setup a sample string"				input					value: 'http://localhost:8080/';					class: 'sampleValue';					script:						(html jQuery this onFocus:							((html jQuery this)								value: '';								removeClass: 'sampleValue';								unbind: 'focus')) ].			html button				bePush;				onClick:					(((html jQuery: #confirm) load)						html: '';						serializeForm;						html: [ :r | self renderTryingUrl: url on: r ]);				with: 'Test' ].	html div id: 'confirm'!

renderSuccessUrl: url on: html	html paragraph: [ 		html text: 'Success!! '.		html button			bePush;			onClick:				((html jQuery ajax)					callback: [ self serverUrl: url ];					onComplete: html javascript refresh);		with: 'Update Configuration' ]!

renderTryingUrl: url on: html	| testUrl |	testUrl := url copy addAllToPath: (WAAdmin defaultDispatcher url relativeTo: self requestContext handler url).	html paragraph: 'Trying ' , testUrl greaseString , ' ...'.	html script:		((html jQuery ajax)			script: [ :s | 				s <<					(s jQuery: '#confirm')						append: [ :r |  self renderSuccessUrl: url on: r ] ];						optionAt: 'url' put: testUrl;						yourself)!

serverUrl	^ self class serverUrl!

serverUrl: aUrl	self class serverUrl: aUrl! !
!WAWelcomeUrlDialog categoriesFor: #renderContentOn:!public!rendering! !
!WAWelcomeUrlDialog categoriesFor: #renderSuccessUrl:on:!public!rendering! !
!WAWelcomeUrlDialog categoriesFor: #renderTryingUrl:on:!public!rendering! !
!WAWelcomeUrlDialog categoriesFor: #serverUrl!private! !
!WAWelcomeUrlDialog categoriesFor: #serverUrl:!private! !

!WAWelcomeUrlDialog class methodsFor!

clearServerUrl	WAAdmin defaultDispatcher		serverProtocol: nil;		serverHostname: nil;		serverPort: nil;		serverPath: nil!

serverUrl	| dispatcher |	dispatcher := WAAdmin defaultDispatcher.	(dispatcher serverProtocol isNil and: [ dispatcher serverHostname isNil and: [		dispatcher serverPort isNil and: [ dispatcher serverPath isNil ] ] ])			ifTrue: [ ^ nil ].	^ dispatcher url!

serverUrl: aUrl	WAAdmin defaultDispatcher		serverProtocol: aUrl scheme;		serverHostname: aUrl host;		serverPort: aUrl port;		serverPath: aUrl pathStringUnencoded! !
!WAWelcomeUrlDialog class categoriesFor: #clearServerUrl!public!urls! !
!WAWelcomeUrlDialog class categoriesFor: #serverUrl!public!urls! !
!WAWelcomeUrlDialog class categoriesFor: #serverUrl:!public!urls! !

