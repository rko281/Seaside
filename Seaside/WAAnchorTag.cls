"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WAAnchorTag
	instanceVariableNames: 'url'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAnchorTag guid: (GUID fromString: '{42bd5f9c-e87f-4ecc-8d9a-c45dc70cf6bb}')!
WAAnchorTag comment: 'I''m the class responsible for adding anchors (links) to your webpage. There are multiple ways of using me.1. In the following case, the method #doSomethingOnClick will be sent to self when the user click on the anchor ''Click here to do something'':	html anchor		callback: [ self doSomethingOnClick ];		with: ''Click here to do something''.		The following code is a shortcut to create an anchor. The executed action is #doSomethingOnClick and the text is ''Do Something On Click'':	html anchor		on: #doSomethingOnClick of: self2. In the following case, a link to an external resource will be generated:	html anchor		url: ''http://www.seaside.st'';		with: ''Visit the Seaside'''!
!WAAnchorTag categoriesForClass!Seaside-Canvas-Tags! !
!WAAnchorTag methodsFor!

callback: aNiladicValuable 	aNiladicValuable argumentCount > 0 ifTrue: [ GRInvalidArgumentCount signal: 'Anchors expect a niladic callback.' ].	self url addField: (self storeCallback: (WAActionCallback on: aNiladicValuable))!

charset: aString	"This attribute specifies the character encoding of the resource designated by the link."		self attributes at: 'charset' put: aString!

extraParameters: aString	self url addField: aString!

extraPath: aString	self url addToPath: aString!

fragment: aString	self url fragment: aString!

media: aString	"This attribute specifies the intended destination medium for style information. It may be a single media descriptor or a comma-separated list. The default value for this attribute is 'screen'."	self attributeAt: 'media' put: aString!

name: aString	"This attribute names the current anchor so that it may be the destination of another link. The value of this attribute must be a unique anchor name. The scope of this name is the current document. Note that this attribute shares the same name space as the id attribute."	self attributes at: 'name' put: aString!

navigation	"Makes the receiving anchor a purely navigational link, this is it won't redirect after processing the callbacks but directly process with the render phase. Don't use this feature if you change your model in the callback'."	self url addField: '_n'!

on: aSymbol of: anObject 	self callback: (GRDelayedSend 			receiver: anObject			selector: aSymbol).	self with: (self 			labelForSelector: aSymbol			of: anObject)!

relationship: aString	"This attribute describes the relationship from the current document to the anchor specified by the href attribute. The value of this attribute is a space-separated list of link types."		self attributes at: 'rel' append: aString!

resourceUrl: aString	self url: (canvas absoluteUrlForResource: aString)!

reverse: aString	"This attribute is used to describe a reverse link from the anchor specified by the href attribute to the current document. The value of this attribute is a space-separated list of link types."		self attributes at: 'rev' append: aString!

tag	^ 'a'!

target: aString 	"This attribute specifies the name of a frame where a document is to be opened."		self attributes at: 'target' put: aString!

type: aString	"This attribute gives an advisory hint as to the content type of the content available at the link target address. It allows user agents to opt to use a fallback mechanism rather than fetch the content if they are advised that they will get content in a content type they do not support."		self attributes at: 'type' put: aString!

url	^ url ifNil: [ url := canvas actionUrl copy ]!

url: aUrlOrString	url := aUrlOrString!

useBaseUrl	"Instead of using the URL of the current page that has been modified through #updateUrl:, use the base URL."	self url: canvas actionBaseUrl copy!

with: aBlock	url isNil		ifFalse: [ self attributes at: 'href' put: url ].	super with: aBlock! !
!WAAnchorTag categoriesFor: #callback:!callbacks!public! !
!WAAnchorTag categoriesFor: #charset:!attributes!public! !
!WAAnchorTag categoriesFor: #extraParameters:!public!url! !
!WAAnchorTag categoriesFor: #extraPath:!public!url! !
!WAAnchorTag categoriesFor: #fragment:!public!url! !
!WAAnchorTag categoriesFor: #media:!attributes!public! !
!WAAnchorTag categoriesFor: #name:!attributes!public! !
!WAAnchorTag categoriesFor: #navigation!public! !
!WAAnchorTag categoriesFor: #on:of:!callbacks!public! !
!WAAnchorTag categoriesFor: #relationship:!attributes!public! !
!WAAnchorTag categoriesFor: #resourceUrl:!public!url! !
!WAAnchorTag categoriesFor: #reverse:!attributes!public! !
!WAAnchorTag categoriesFor: #tag!accessing!public! !
!WAAnchorTag categoriesFor: #target:!attributes!public! !
!WAAnchorTag categoriesFor: #type:!attributes!public! !
!WAAnchorTag categoriesFor: #url!accessing!public! !
!WAAnchorTag categoriesFor: #url:!accessing!public! !
!WAAnchorTag categoriesFor: #useBaseUrl!public! !
!WAAnchorTag categoriesFor: #with:!public! !

