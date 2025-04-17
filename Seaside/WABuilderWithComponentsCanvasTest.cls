"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WABuilderWithComponentsCanvasTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABuilderWithComponentsCanvasTest guid: (GUID fromString: '{9f29ad58-36b4-4a50-8684-842c754664e5}')!

WABuilderWithComponentsCanvasTest comment: ''!

!WABuilderWithComponentsCanvasTest categoriesForClass!Unclassified! !

!WABuilderWithComponentsCanvasTest methodsFor!

testBodyWithDecorations	| actual |	actual := WAHtmlCanvas builder		render: [ :html | 			| component |			component := WACanvasTestComponent new				addDecoration: (WACanvasTestDecoration tagName: 'em');				yourself.			html render: component ].	self assert: actual = '<em><p>I should be decorated.</p></em>'! !

!WABuilderWithComponentsCanvasTest categoriesForMethods!
testBodyWithDecorations!public!tests! !
!

