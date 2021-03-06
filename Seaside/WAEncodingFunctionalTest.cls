﻿"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAEncodingFunctionalTest
	instanceVariableNames: 'urlencoded multipart get'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAEncodingFunctionalTest guid: (GUID fromString: '{91b51dec-b93a-4a9e-a8bd-4daaf2257e64}')!
WAEncodingFunctionalTest comment: 'A WAEncodingFunctionalTest test whether Seaside correctly handles non-ASCII strings. Unfortunately due to differences in server setup and source code encodings this test requires manual interaction.'!
!WAEncodingFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WAEncodingFunctionalTest methodsFor!

get	^ get!

get: aString	get := aString!

initialize	super initialize.	self urlencoded: 'urlencoded'.	self multipart: 'multipart'.	self get: 'get'!

multipart	^ multipart!

multipart: aString	multipart := aString!

renderCharacterByCharacter: aString on: html	"Display aString character by character, but wrap each character into a span so it ends up individually in the output stream. If the codec does not convert to the internal encoding of Smalltalk the result is broken. Either choose an appropriate codec or be aware of the concequences."		self requestContext codec name = '(none)'	"Character by character rendering will fail for the NullCoded in case of multi byte characters. Don't test it."		ifTrue: [ ^ self ].	aString 	do: [ :each | html span: each ]!

renderClassName: aString on: html 	aString isNil ifTrue: [ ^ self ].	html paragraph: [		html strong: 'Class: '.		html text: aString class name ]!

renderContentOn: html	self renderExplanationOn: html.	self renderUrlencodedOn: html.	self renderMultipartOn: html.	self renderGetOn: html!

renderExplanationOn: html	html unorderedList: [		html listItem: [			html text: 'Go to the '.			html anchor				url: 'http://www.columbia.edu/kermit/utf8.html';				with: 'UTF-8 Sampler'.			html text: ' and select some "foreign" text.' ].		html listItem: 'Copy and paste it into the urlencoded text field below and click the submit button.'.		html listItem: 'The heading, textfield, character field and submitt button should all display the text without any error.'.		html listItem: 'Submit again without changing anything, again everything should display normally.'.		html listItem: 'Repeat this process for the multipart field. Make sure to pick at least every of these languages: German, Czech, Korean.' ]!

renderGetOn: html	html heading level2;		with: 'GET'.	html heading level3;		with: self get.	self renderCharacterByCharacter: self get on: html.	html form		get;		with: [			html div: [				html textInput					on: #get of: self.				html submitButton					text: self get ] ].	self renderClassName: self get on: html!

renderMultipartOn: html	html heading level2;		with: 'Multipart'.	html heading level3;		with: self multipart.	self renderCharacterByCharacter: self multipart on: html.	html form		multipart;		with: [			html div: [				html textInput					on: #multipart of: self.				html submitButton					text: self multipart ] ].	self renderClassName: self multipart on: html!

renderUrlencodedOn: html	html heading level2;		with: 'Urlencoded'.	html heading level3;		with: self urlencoded.	self renderCharacterByCharacter: self urlencoded on: html.	html form: [		html div: [			html textInput				on: #urlencoded of: self.			html submitButton				text: self urlencoded ] ].	self renderClassName: self urlencoded on: html!

urlencoded	^ urlencoded!

urlencoded: aString	urlencoded := aString! !
!WAEncodingFunctionalTest categoriesFor: #get!accessing!public! !
!WAEncodingFunctionalTest categoriesFor: #get:!accessing!public! !
!WAEncodingFunctionalTest categoriesFor: #initialize!initialization!public! !
!WAEncodingFunctionalTest categoriesFor: #multipart!accessing!public! !
!WAEncodingFunctionalTest categoriesFor: #multipart:!accessing!public! !
!WAEncodingFunctionalTest categoriesFor: #renderCharacterByCharacter:on:!public!rendering! !
!WAEncodingFunctionalTest categoriesFor: #renderClassName:on:!public!rendering! !
!WAEncodingFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WAEncodingFunctionalTest categoriesFor: #renderExplanationOn:!public!rendering! !
!WAEncodingFunctionalTest categoriesFor: #renderGetOn:!public!rendering! !
!WAEncodingFunctionalTest categoriesFor: #renderMultipartOn:!public!rendering! !
!WAEncodingFunctionalTest categoriesFor: #renderUrlencodedOn:!public!rendering! !
!WAEncodingFunctionalTest categoriesFor: #urlencoded!accessing!public! !
!WAEncodingFunctionalTest categoriesFor: #urlencoded:!accessing!public! !

