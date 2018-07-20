"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WARenderContext
	instanceVariableNames: 'visitor actionUrl actionBaseUrl resourceUrl callbacks document properties'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARenderContext guid: (GUID fromString: '{ebcddc19-b98c-4473-91a1-3b7d342e4773}')!
WARenderContext comment: 'A WARenderContext provides all the state needed by a Renderer to do its work.It is a decoupling device between whatever is initiating rendering and the Renderer itself.'!
!WARenderContext categoriesForClass!Seaside-Core-Rendering! !
!WARenderContext methodsFor!

absoluteUrlForResource: aString 	| url |	aString isNil ifTrue: [ ^ nil ].	url := self resourceUrl.	(url isNil or: [ (aString indexOfSubCollection: '://' startingAt: 1) ~= 0 ]) ifTrue: [		^ WAUrl absolute: aString ].	^ url copy addToPath: aString; yourself!

actionBaseUrl	"Answer the action URL, that was not modified by #updateUrl:."		^ actionBaseUrl!

actionBaseUrl: anObject	actionBaseUrl := anObject seasideUrl!

actionUrl	"Answer the action URL that was modified by #updateUrl:."	^ actionUrl!

actionUrl: anObject	actionUrl := anObject seasideUrl!

callbackAt: aString	self greaseDeprecatedApi: 'WARenderContext>>#callbackAt:' details: 'Report if you still need it.'.	^ callbacks at: aString ifAbsent: [ ]!

callbacks	^ callbacks!

defaultVisitor	^ WARenderVisitor context: self!

destroy	self document destroy.	document := nil!

document	"Answer the value of document"	^ document!

document: anObject	"Set the value of document"	document := anObject!

document: aDocument during: aBlock	"Set the value of document for the duration of aBlock"	| previous |	previous := document.	[ document := aDocument.	aBlock value ]		ensure: [ document := previous ]!

initialize	super initialize.	callbacks := WACallbackRegistry new!

postCopy	super postCopy.	visitor := visitor copyForRenderContext: self.	actionUrl := actionUrl copy.	resourceUrl := resourceUrl copy.	properties := properties copy!

properties	"Answer a property dictionary."	^ properties ifNil: [ properties := GRSmallDictionary new ]!

resourceUrl	^ resourceUrl!

resourceUrl: anObject	resourceUrl := anObject seasideUrl!

visitor	^ visitor ifNil: [ visitor := self defaultVisitor ]!

visitor: anObject	visitor := anObject! !
!WARenderContext categoriesFor: #absoluteUrlForResource:!accessing!public! !
!WARenderContext categoriesFor: #actionBaseUrl!accessing!public! !
!WARenderContext categoriesFor: #actionBaseUrl:!accessing!public! !
!WARenderContext categoriesFor: #actionUrl!accessing!public! !
!WARenderContext categoriesFor: #actionUrl:!accessing!public! !
!WARenderContext categoriesFor: #callbackAt:!callbacks!public! !
!WARenderContext categoriesFor: #callbacks!accessing!public! !
!WARenderContext categoriesFor: #defaultVisitor!private! !
!WARenderContext categoriesFor: #destroy!initialization!public! !
!WARenderContext categoriesFor: #document!accessing!public! !
!WARenderContext categoriesFor: #document:!accessing!public! !
!WARenderContext categoriesFor: #document:during:!accessing!public! !
!WARenderContext categoriesFor: #initialize!initialization!public! !
!WARenderContext categoriesFor: #postCopy!copying!public! !
!WARenderContext categoriesFor: #properties!accessing!public! !
!WARenderContext categoriesFor: #resourceUrl!accessing!public! !
!WARenderContext categoriesFor: #resourceUrl:!accessing!public! !
!WARenderContext categoriesFor: #visitor!accessing!public! !
!WARenderContext categoriesFor: #visitor:!accessing!public! !

