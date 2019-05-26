"Filed out from Dolphin Smalltalk 7"!

WARenderLoopContinuation subclass: #WARenderPhaseContinuation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARenderPhaseContinuation guid: (GUID fromString: '{24200790-d930-4c94-b077-144e25ce9cff}')!
WARenderPhaseContinuation comment: ''!
!WARenderPhaseContinuation categoriesForClass!Seaside-RenderLoop! !
!WARenderPhaseContinuation methodsFor!

addRedirectedToHeader: aRequestContext	"The Ajaxifier needs to know the URL of the render continuation (in order to save it).	Unfortunately the redirect from the action to the render continuation happens totally transparently to the JavaScript.	So we add a custom header to the response so that the JavaScript can find out the URL of the render continuation."	 (aRequestContext request headerAt: 'x-requested-with') = 'Ajaxifier' ifTrue: [		aRequestContext response headerAt: 'X-RedirectedTo' put: aRequestContext request url greaseString ]!

createHtmlRootWithContext: aRenderContext	^ WAHtmlRoot context: aRenderContext!

createRenderContext	| renderContext |	renderContext := WARenderContext new.		"Wrap the default visitor with a rendering guide"	renderContext visitor: (WARenderingGuide client: renderContext visitor).		^ renderContext		!

documentOpened: aResponse	"callback sent once #updateRoot: has been send to:	 	- all the libraries		- the session		- all the components	and the document has been opened (the opening body tag has been written)	per default do nothing"!

handleFiltered: aRequestContext	self addRedirectedToHeader: aRequestContext.	self respond: [ :response | self processRendering: response ].	"The render phase should have returned a response"	WAMissingResponseError signal!

processRendering: aResponse 	| document actionContinuation renderContext actionUrl actionBaseUrl htmlRoot |	"Prepare the response"	aResponse contentType: self application contentType.	"Create objects we need"	document := self requestContext newDocument.	renderContext := self createRenderContext.	actionContinuation := self createActionContinuationWithContext: renderContext.		"Create URL"	actionUrl := actionContinuation registerForUrl: false.	actionBaseUrl := actionUrl copy.	self updateUrl: actionUrl.	"Hook objects together"	renderContext		document: document;		actionUrl: actionUrl;		actionBaseUrl: actionBaseUrl;		resourceUrl: self application resourceBaseUrl.	actionContinuation renderContext: renderContext.	htmlRoot := self createHtmlRootWithContext: renderContext.	self updateRoot: htmlRoot.	self toPresenterSendRoot: htmlRoot.	"Render"	document open: htmlRoot.	self documentOpened: aResponse.	self presenter renderWithContext: renderContext.	document close.	renderContext destroy! !
!WARenderPhaseContinuation categoriesFor: #addRedirectedToHeader:!processing!public! !
!WARenderPhaseContinuation categoriesFor: #createHtmlRootWithContext:!private! !
!WARenderPhaseContinuation categoriesFor: #createRenderContext!private! !
!WARenderPhaseContinuation categoriesFor: #documentOpened:!processing!public! !
!WARenderPhaseContinuation categoriesFor: #handleFiltered:!handling!public! !
!WARenderPhaseContinuation categoriesFor: #processRendering:!processing!public! !

!WARenderPhaseContinuation class methodsFor!

isRenderContinuation	^ true! !
!WARenderPhaseContinuation class categoriesFor: #isRenderContinuation!public!testing! !

