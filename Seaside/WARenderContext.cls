"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WARenderContext
	instanceVariableNames: 'visitor actionUrl actionBaseUrl resourceUrl callbacks document properties'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARenderContext guid: (GUID fromString: '{abe5174f-8cf2-4982-9fb4-4ec359cfa64c}')!

WARenderContext comment: 'A WARenderContext provides all the state needed by a Renderer to do its work.It is a decoupling device between whatever is initiating rendering and the Renderer itself.'!

!WARenderContext categoriesForClass!Seaside-Core-Rendering! !

!WARenderContext methodsFor!

absoluteUrlForResource: aString 	| url |	aString isNil ifTrue: [ ^ nil ].	url := self resourceUrl.	(url isNil or: [ (aString indexOfSubCollection: '://' startingAt: 1) ~= 0 ]) ifTrue: [		^ WAUrl absolute: aString ].	^ url copy addToPath: aString; yourself!

actionBaseUrl	"Answer the action URL, that was not modified by #updateUrl:."		^ actionBaseUrl!

actionBaseUrl: anObject	actionBaseUrl := anObject seasideUrl!

actionUrl	"Answer the action URL that was modified by #updateUrl:."	^ actionUrl!

actionUrl: anObject	actionUrl := anObject seasideUrl!

callbacks	^ callbacks!

defaultVisitor	^ WARenderVisitor context: self!

destroy	self document destroy.	document := nil!

document	"Answer the value of document"	^ document!

document: anObject	"Set the value of document"	document := anObject!

document: aDocument during: aBlock	"Set the value of document for the duration of aBlock"	| previous |	previous := document.	[ document := aDocument.	aBlock value ]		ensure: [ document := previous ]!

initialize	super initialize.	callbacks := WACallbackRegistry new!

postCopy	super postCopy.	visitor := visitor copyForRenderContext: self.	actionUrl := actionUrl copy.	resourceUrl := resourceUrl copy.	properties := properties copy!

properties	"Answer a property dictionary."	^ properties ifNil: [ properties := GRSmallDictionary2 new ]!

resourceUrl	^ resourceUrl!

resourceUrl: anObject	resourceUrl := anObject seasideUrl!

visitor	^ visitor ifNil: [ visitor := self defaultVisitor ]!

visitor: anObject	visitor := anObject! !

!WARenderContext categoriesForMethods!
absoluteUrlForResource:!accessing!public! !
actionBaseUrl!accessing!public! !
actionBaseUrl:!accessing!public! !
actionUrl!accessing!public! !
actionUrl:!accessing!public! !
callbacks!accessing!public! !
defaultVisitor!private! !
destroy!initialization!public! !
document!accessing!public! !
document:!accessing!public! !
document:during:!accessing!public! !
initialize!initialization!public! !
postCopy!copying!public! !
properties!accessing!public! !
resourceUrl!accessing!public! !
resourceUrl:!accessing!public! !
visitor!accessing!public! !
visitor:!accessing!public! !
!

