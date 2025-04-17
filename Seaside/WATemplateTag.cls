"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WATemplateTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATemplateTag guid: (GUID fromString: '{899064e9-3cab-4dbe-b0f1-2cbea3de2152}')!

WATemplateTag comment: 'The template HTML element serves as a mechanism for holding HTML fragments, which can either be used later via JavaScript or generated immediately into shadow DOM.'!

!WATemplateTag categoriesForClass!Tags! !

!WATemplateTag methodsFor!

shadowRootClonable: aBoolean	"Sets the value of the clonable property of a ShadowRoot created using this element to true. If set, a clone of the shadow host (the parent element of this <template>) created with Node.cloneNode() or Document.importNode() will include a shadow root in the copy."	self attributeAt: 'shadowrootclonable' put: aBoolean!

shadowRootDelegatesFocus: aBoolean	"Sets the value of the delegatesFocus property of a ShadowRoot created using this element to true. If this is set and a non-focusable element in the shadow tree is selected, then focus is delegated to the first focusable element in the tree. The value defaults to false."	self attributeAt: 'shadowrootdelegatesfocus' put: aBoolean!

shadowRootMode: aString	"Creates a shadow root for the parent element. It is a declarative version of the Element.attachShadow() method and accepts the same enumerated values.		open		Exposes the internal shadow root DOM for JavaScript (recommended for most use cases).			closed		Hides the internal shadow root DOM from JavaScript."	self attributeAt: 'shadowrootmode' put: aString!

shadowRootSerializable: aBoolean	"Sets the value of the serializable property of a ShadowRoot created using this element to true. If set, the shadow root may be serialized by calling the Element.getHTML() or ShadowRoot.getHTML() methods with the options.serializableShadowRoots parameter set true. The value defaults to false."	self attributeAt: 'shadowrootserializable' put: aBoolean!

tag	^ 'template'! !

!WATemplateTag categoriesForMethods!
shadowRootClonable:!attributes!public! !
shadowRootDelegatesFocus:!attributes!public! !
shadowRootMode:!attributes!public! !
shadowRootSerializable:!attributes!public! !
tag!accessing!public! !
!

