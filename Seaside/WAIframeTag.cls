"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WAIframeTag
	instanceVariableNames: 'rootBlock url'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAIframeTag guid: (GUID fromString: '{f152539f-a0df-4f13-bb3e-5cbf7eda58c8}')!

WAIframeTag comment: 'The IFRAME element allows authors to insert a frame within a block of text. Inserting an inline frame within a section of text is much like inserting an object via the OBJECT element: they both allow you to insert an HTML document in the middle of another, they may both be aligned with surrounding text, etc. The information to be inserted inline is designated by the src attribute of this element. The contents of the IFRAME element, on the other hand, should only be displayed by user agents that do not support frames or are configured not to display frames.Inline frames may not be resized.'!

!WAIframeTag categoriesForClass!Seaside-Canvas-Tags! !

!WAIframeTag methodsFor!

callback: aNiladicValuable	"Evaluates the given valuable when the content of the iframe is loaded.	You probably want to switch the presenter of the switch the presenter of the session. See WAIframeFunctionalTest for an example.	In Seaside 3.1 this may be replaced by a dedicated continuation."	aNiladicValuable argumentCount > 0 ifTrue: [ GRInvalidArgumentCount signal: 'Iframes expect a niladic callback.' ].	self url addField: (self storeCallback: (WAActionCallback on: aNiladicValuable))!

contents: anObject	self url: (canvas urlForAction: [ self performRendering: anObject ])!

height: anInteger	"The height of the inline frame."	self attributes at: 'height' put: anInteger!

name: aString	"This attribute assigns a name to the current frame. This name may be used as the target of subsequent links."	self attributes at: 'name' put: aString!

performRendering: anObject	| innerContext docRoot document renderer |	self requestContext respond: [ :response |		innerContext := canvas context copy.		docRoot := WAHtmlRoot context: innerContext.		response contentType: WAMimeType textHtml.		response doNotCache.		self rootBlock value: docRoot.		document := self requestContext handler documentClass 			on: response stream codec: self requestContext codec.		canvas context document: document.		document open: docRoot.		renderer := canvas species context: canvas context.		renderer render: anObject; flush.		document close ]!

rootBlock	"Anser the block to render the HTML root."	^ rootBlock isNil		ifTrue: [ [ :root | root base target: '_top' ] ]		ifFalse: [ rootBlock ]!

rootBlock: aOneArgumentBlock	"Set the block hat is used to render the html <head> element. An instance of WAHtmlRoot will be passed as an argument. You'll probably want to add:		root base target: '_top' 	to your block."	rootBlock := aOneArgumentBlock!

tag	^ 'iframe'!

url	^ url ifNil: [ url := canvas actionUrl copy ]!

url: aUrlOrString 	url := aUrlOrString!

width: anInteger	"The width of the inline frame."	self attributes at: 'width' put: anInteger!

with: aBlock	url isNil		ifFalse: [ self attributes at: 'src' put: url ].	super with: aBlock! !

!WAIframeTag categoriesForMethods!
callback:!callbacks!public! !
contents:!convenience!public! !
height:!attributes!public! !
name:!attributes!public! !
performRendering:!private! !
rootBlock!accessing!public! !
rootBlock:!accessing!public! !
tag!accessing!public! !
url!attributes!public! !
url:!attributes!public! !
width:!attributes!public! !
with:!public! !
!

