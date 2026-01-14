"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WABuilderWithComponentsCanvasTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABuilderWithComponentsCanvasTest guid: (GUID fromString: '{9aa0bbdf-855f-4d2f-829c-c5ddc170788c}')!

WABuilderWithComponentsCanvasTest comment: ''!

!WABuilderWithComponentsCanvasTest categoriesForClass!Seaside-Tests-RenderLoop! !

!WABuilderWithComponentsCanvasTest methodsFor!

testBodyWithDecorations	| actual |	actual := WAHtmlCanvas builder		render: [ :html | 			| component |			component := WACanvasTestComponent new				addDecoration: (WACanvasTestDecoration tagName: 'em');				yourself.			html render: component ].	self assert: actual = '<em><p>I should be decorated.</p></em>'! !

!WABuilderWithComponentsCanvasTest categoriesForMethods!
testBodyWithDecorations!public!tests! !
!

