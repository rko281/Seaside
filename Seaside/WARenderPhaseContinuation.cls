"Filed out from Dolphin Smalltalk"!

WARenderLoopContinuation subclass: #WARenderPhaseContinuation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARenderPhaseContinuation guid: (GUID fromString: '{a4b57270-6199-4068-8c5b-bb1b8e98f927}')!

WARenderPhaseContinuation comment: ''!

!WARenderPhaseContinuation categoriesForClass!Seaside-RenderLoop-Continuations! !

!WARenderPhaseContinuation methodsFor!

createHtmlRootWithContext: aRenderContext	^ WAHtmlRoot context: aRenderContext!

createRenderContext	| renderContext |	renderContext := WARenderContext new.		"Wrap the default visitor with a rendering guide"	renderContext visitor: (WARenderingGuide client: renderContext visitor).		^ renderContext!

documentOpened: aResponse	"callback sent once #updateRoot: has been send to:	 	- all the libraries		- the session		- all the components	and the document has been opened (the opening body tag has been written)	per default do nothing"!

handleFiltered: aRequestContext	self respond: [ :response | self processRendering: response ].	"The render phase should have returned a response"	WAMissingResponseError signal!

processRendering: aResponse 	| document actionContinuation renderContext actionUrl actionBaseUrl htmlRoot |	"Prepare the response"	aResponse contentType: self application contentType.	"Create objects we need"	document := self requestContext newDocument.	renderContext := self createRenderContext.	actionContinuation := self createActionContinuationWithContext: renderContext.		"Create URL"	actionUrl := actionContinuation registerForUrl: false.	actionBaseUrl := actionUrl copy.	self updateUrl: actionUrl.	"Hook objects together"	renderContext		document: document;		actionUrl: actionUrl;		actionBaseUrl: actionBaseUrl;		resourceUrl: self application resourceBaseUrl.	actionContinuation renderContext: renderContext.	htmlRoot := self createHtmlRootWithContext: renderContext.	self updateRoot: htmlRoot.	self toPresenterSendRoot: htmlRoot.	"Render"	document open: htmlRoot.	self documentOpened: aResponse.	self presenter renderWithContext: renderContext.	document close.	renderContext destroy! !

!WARenderPhaseContinuation categoriesForMethods!
createHtmlRootWithContext:!private! !
createRenderContext!private! !
documentOpened:!processing!public! !
handleFiltered:!handling!public! !
processRendering:!processing!public! !
!

!WARenderPhaseContinuation class methodsFor!

isRenderContinuation	^ true! !

!WARenderPhaseContinuation class categoriesForMethods!
isRenderContinuation!public!testing! !
!

