"Filed out from Dolphin Smalltalk"!

WAAbstractCanvasBrushTest subclass: #WACanvasDocumentTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACanvasDocumentTest guid: (GUID fromString: '{592c3ba6-e734-46f7-97f5-1ac9fdc5190e}')!

WACanvasDocumentTest comment: ''!

!WACanvasDocumentTest categoriesForClass!Unclassified! !

!WACanvasDocumentTest methodsFor!

createHandlers	| application session |	application := WAApplication new		cache: WAPredictableCache new;		yourself.	session := WASession new		documentHandlers: WAPredictableCache new;		yourself.	application register: session.	^ Array		with: application		with: session!

testAnchorAttributesDocument	self		assert: [ :html | html anchor document: 'income: 1$' mimeType: 'text/plain' fileName: 'taxes.txt' ]		gives: '<a type="text/plain" href="/?_s=1&amp;_d=1"></a>'.	self		assert: [ :html | html anchor document: 'income: 2$' mimeType: 'text/plain' ]		gives: '<a type="text/plain" href="/?_s=1&amp;_d=2"></a>'.	self		assert: [ :html | html anchor document: 'income: 3$' ]		gives: '<a href="/?_s=1&amp;_d=3"></a>'! !

!WACanvasDocumentTest categoriesForMethods!
createHandlers!configuration!public! !
testAnchorAttributesDocument!public!tests/tags/anchors! !
!

