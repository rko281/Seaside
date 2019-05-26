"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WARenderer
	instanceVariableNames: 'context lastId'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'default'!
WARenderer guid: (GUID fromString: '{0bf85666-13eb-4639-b1e4-34664accb5be}')!
WARenderer comment: 'A Renderer provides methods for rendering data (typically HTML) onto a Document. It gets all the information needed to do its work from a WARenderContext, which is passed in on initialization.Renderer are typically controlled by a Painter.'!
!WARenderer categoriesForClass!Seaside-Core-Rendering! !
!WARenderer methodsFor!

absoluteUrlForResource: aString	"Answer a resource URL for aString. The URL will always be absolute (ie. it will begin	with a / or a URL scheme like http://. If aString already looks like a URL, an instance	of WAUrl will be returned for it. If it looks like a path, it will be appended to the	resource base URL configured in the RenderContext if there is one."	^ self context absoluteUrlForResource: aString!

actionBaseUrl	^ self context actionBaseUrl!

actionUrl	^ self context actionUrl!

callbacks	"Answer the callback registry."	^ self context callbacks!

context	"Answer the rendering context."	^ context!

document	^ self context document!

flush	"Close any open elements and write any remaining data."!

initializeWithContext: aRenderContext	self initialize.	context := aRenderContext!

lastId	"Answer the last identifier that was generated with #nextId."		^ lastId!

nextId	"Answer an identifier string that is unique within this WARenderContext."		^ lastId := 'id', self callbacks advanceKey!

render: anObject	"Render anObject using this Renderer."		anObject renderOn: self!

text: anObject	"Emit anObject onto the target document."	self document print: anObject!

urlForAction: aBlock	"Answer an action URL that will evaluate aBlock when it is requested."	^ self actionUrl withField: (self callbacks store: (WAActionCallback on: aBlock))! !
!WARenderer categoriesFor: #absoluteUrlForResource:!public! !
!WARenderer categoriesFor: #actionBaseUrl!public! !
!WARenderer categoriesFor: #actionUrl!public! !
!WARenderer categoriesFor: #callbacks!accessing!public! !
!WARenderer categoriesFor: #context!accessing!public! !
!WARenderer categoriesFor: #document!accessing!public! !
!WARenderer categoriesFor: #flush!private! !
!WARenderer categoriesFor: #initializeWithContext:!initialization!public! !
!WARenderer categoriesFor: #lastId!public! !
!WARenderer categoriesFor: #nextId!public! !
!WARenderer categoriesFor: #render:!public! !
!WARenderer categoriesFor: #text:!public! !
!WARenderer categoriesFor: #urlForAction:!public! !

!WARenderer class methodsFor!

builder	^ WABuilder on: self!

context: aRenderContext	^ self basicNew initializeWithContext: aRenderContext; yourself!

default	^ default ifNil: [ default := WARenderer ]!

default: anObject	default := anObject!

resetDefault	WARenderer default: nil!

selectAsDefault	WARenderer default: self!

unselectAsDefault	(WARenderer default = self) ifTrue: [ WARenderer resetDefault ]! !
!WARenderer class categoriesFor: #builder!instance creation!public! !
!WARenderer class categoriesFor: #context:!instance creation!public! !
!WARenderer class categoriesFor: #default!defaults!public! !
!WARenderer class categoriesFor: #default:!defaults!public! !
!WARenderer class categoriesFor: #resetDefault!defaults!public! !
!WARenderer class categoriesFor: #selectAsDefault!defaults!public! !
!WARenderer class categoriesFor: #unselectAsDefault!defaults!public! !

