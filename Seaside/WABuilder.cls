"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WABuilder
	instanceVariableNames: 'fullDocument rootBlock rootClass documentClass scriptGeneratorClass rendererClass codec actionUrl resourceUrl'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WABuilder guid: (GUID fromString: '{bf6fd7b3-387e-4c58-90a0-59166c28da14}')!
WABuilder comment: 'This is a convenience class which provides a result of a rendering operation as a string. It is expected to be used like this:WAHtmlCanvas builder render: [ :html |	html anchor		url: ''htttp://www.seaside.st'';		with: ''Seaside Homepage'' ]See WABuilderCanvasTest for more examples.'!
!WABuilder categoriesForClass!Seaside-Core-Rendering! !
!WABuilder methodsFor!

actionUrl	^ actionUrl ifNil: [ actionUrl := WAUrl new ]!

actionUrl: aUrl	actionUrl := aUrl!

closeDocument: aDocument	self fullDocument 		ifTrue: [ aDocument close ]		ifFalse: [ 			"hack to make it work"			(aDocument isKindOf: WAHtmlDocument)				ifTrue: [ aDocument scriptGenerator closeOn: aDocument ] ]!

codec	^ codec ifNil: [		 codec := [ self requestContext codec ] 			on: WARequestContextNotFound			do: [ :e | GRNullCodec new ] ]!

codec: aCodec	codec := aCodec!

documentClass	^ documentClass ifNil: [ documentClass := WADocument ]!

documentClass: aDocumentClass	documentClass := aDocumentClass!

fullDocument	^ fullDocument!

fullDocument: aBoolean	fullDocument := aBoolean!

initialize	super initialize.	self fullDocument: false!

openDocument: aDocument context: aContext 	| documentRoot |	self fullDocument ifFalse: [ ^ self ].	documentRoot := self rootClass context: aContext.	self rootBlock value: documentRoot.	aDocument open: documentRoot!

render: anObject	^ String streamContents: [ :stream |		self			render: anObject			on: stream ]!

render: anObject on: aStream	"Render anObject and return the contents of the resulting Document as a String.	anObject must understand #renderOn:. Commonly anObject will be a one-argument	block, which will be evaluated with the appropriate renderer."	| context document renderer |	document := self documentClass on: aStream codec: self codec.	document scriptGenerator: self scriptGeneratorClass new.	context := WARenderContext new.	context document: document.	context actionUrl: self actionUrl; resourceUrl: self resourceUrl.	renderer := self rendererClass context: context.		self openDocument: document context: context.	renderer render: anObject; flush.	self closeDocument: document!

rendererClass	^ rendererClass!

rendererClass: aRendererClass 	rendererClass := aRendererClass!

resourceUrl	^ resourceUrl!

resourceUrl: aUrl	resourceUrl := aUrl!

rootBlock	^ rootBlock ifNil: [ rootBlock := [ :root | ] ]!

rootBlock: anObject	rootBlock := anObject!

rootClass	^ rootClass ifNil: [ rootClass := WARoot ]!

rootClass: aRootClass	rootClass := aRootClass!

scriptGeneratorClass	^ scriptGeneratorClass ifNil: [ scriptGeneratorClass := WADefaultScriptGenerator  ]!

scriptGeneratorClass: aScriptGeneratorClass	scriptGeneratorClass := aScriptGeneratorClass! !
!WABuilder categoriesFor: #actionUrl!accessing!public! !
!WABuilder categoriesFor: #actionUrl:!accessing!public! !
!WABuilder categoriesFor: #closeDocument:!private! !
!WABuilder categoriesFor: #codec!accessing!public! !
!WABuilder categoriesFor: #codec:!accessing!public! !
!WABuilder categoriesFor: #documentClass!accessing!public! !
!WABuilder categoriesFor: #documentClass:!accessing!public! !
!WABuilder categoriesFor: #fullDocument!accessing!public! !
!WABuilder categoriesFor: #fullDocument:!accessing!public! !
!WABuilder categoriesFor: #initialize!initialization!public! !
!WABuilder categoriesFor: #openDocument:context:!private! !
!WABuilder categoriesFor: #render:!public!rendering! !
!WABuilder categoriesFor: #render:on:!public!rendering! !
!WABuilder categoriesFor: #rendererClass!accessing!public! !
!WABuilder categoriesFor: #rendererClass:!accessing!public! !
!WABuilder categoriesFor: #resourceUrl!accessing!public! !
!WABuilder categoriesFor: #resourceUrl:!accessing!public! !
!WABuilder categoriesFor: #rootBlock!accessing!public! !
!WABuilder categoriesFor: #rootBlock:!accessing!public! !
!WABuilder categoriesFor: #rootClass!accessing!public! !
!WABuilder categoriesFor: #rootClass:!accessing!public! !
!WABuilder categoriesFor: #scriptGeneratorClass!accessing!public! !
!WABuilder categoriesFor: #scriptGeneratorClass:!accessing!public! !

!WABuilder class methodsFor!

on: aRendererClass	^ self new		rendererClass: aRendererClass;		yourself! !
!WABuilder class categoriesFor: #on:!instance creation!public! !

