"Filed out from Dolphin Smalltalk"!

JSObject subclass: #JSString
	instanceVariableNames: 'renderable'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSString guid: (GUID fromString: '{9b271eff-5c93-44ab-9529-88e4e8814ee3}')!

JSString comment: ''!

!JSString categoriesForClass!Javascript-Core-Base! !

!JSString methodsFor!

javascriptContentOn: aRenderer	"Need to render the renderable as a Javascript string with embedded html"	| jsEncoder document |	aRenderer document stream nextPut: $".	jsEncoder := GRPlatform current javascriptStringEncoderOn: aRenderer context document stream.	document := (WAHtmlDocument		on: jsEncoder		codec: self requestContext codec)		scriptGenerator: self requestContext handler scriptGeneratorClass new;		yourself.	self renderContext document: document during: [		(self rendererClass context: self renderContext)			render: renderable; flush ].	jsEncoder flushBuffer.	document scriptGenerator closeOn: document.	aRenderer document stream nextPut: $".!

setRenderable: aRenderable	renderable := aRenderable ! !

!JSString categoriesForMethods!
javascriptContentOn:!public!utilities! !
setRenderable:!accessing!public! !
!

