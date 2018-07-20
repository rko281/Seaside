"Filed out from Dolphin Smalltalk 7"!

WAAbstractCanvasBrushTest subclass: #WACanvasDocumentTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACanvasDocumentTest guid: (GUID fromString: '{a0587d36-8551-440c-a188-acb587b406bd}')!
WACanvasDocumentTest comment: ''!
!WACanvasDocumentTest categoriesForClass!Seaside-Tests-Session! !
!WACanvasDocumentTest methodsFor!

createHandlers	| application session |	application := WAApplication new		cache: WAPredictableCache new;		yourself.	session := WASession new		cache: WAPredictableCache new;		yourself.	application register: session.	^ Array		with: application		with: session!

testAnchorAttributesDocument	self		assert: [ :html | html anchor document: 'income: 1$' mimeType: 'text/plain' fileName: 'taxes.txt' ]		gives: '<a type="text/plain" href="/?_s=1&amp;_d=1"></a>'.	self		assert: [ :html | html anchor document: 'income: 2$' mimeType: 'text/plain' ]		gives: '<a type="text/plain" href="/?_s=1&amp;_d=2"></a>'.	self		assert: [ :html | html anchor document: 'income: 3$' ]		gives: '<a href="/?_s=1&amp;_d=3"></a>'! !
!WACanvasDocumentTest categoriesFor: #createHandlers!configuration!public! !
!WACanvasDocumentTest categoriesFor: #testAnchorAttributesDocument!public!tests/tags/anchors! !

