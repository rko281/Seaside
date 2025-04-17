"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAHalo
	instanceVariableNames: 'root mode plugins'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHalo guid: (GUID fromString: '{823bfe1f-b7e2-4bd5-aa47-d9cc7e22a3d5}')!

WAHalo comment: ''!

!WAHalo categoriesForClass!Core! !

!WAHalo methodsFor!

initializeOn: aComponent	self initialize.	root := aComponent.	mode := WAValueHolder with: self modes first.	plugins := WAHaloPlugin allSubclassesOn: self root for: self!

mode	^ mode contents!

mode: aSymbol	mode contents: aSymbol!

modes	"Returns a list of possible display modes. These are selectors that are used to render the	object we are wrapping. The current mode is selected by WAModeHaloPlugin."	^ #( render source )!

modeSelector	^ (self mode greaseString , ':visitor:') asSymbol!

plugins	^ plugins!

render: html visitor: aPainterVisitor	"Render the object we are wrapping normally. See #modes."		aPainterVisitor visit: self root!

renderWithContext: aRenderContext visitor: aPainterVisitor	"Render the halo using aRenderContext. aPainterVisitor is the visitor that the halo	visitor is wrapping; calling #visit: on it will perform the action that would have taken	place had the halo wrapper not been present.	"	| html |	html := WAHtmlCanvas context: aRenderContext.	html div class: 'wa-halo'; with: [		html div class: 'wa-halo-header'; with: [			(self plugins select: [ :each | each isActive ])				do: [ :each | html render: each ]				separatedBy: [ html text: ' ' ] ].		html div class: 'wa-halo-body'; with: [			self perform: self modeSelector with: html with: aPainterVisitor ] ].	html flush!

root	^ root!

source: html visitor: aPainterVisitor	"Render the HTML source of the object we are wrapping using a pretty printed	document. See #modes.	Because we are using a new RenderContext, we can't use the passed-in visitor.	Since we know we want to immediately render, we create a new WARenderVisitor to get	things rolling. Rendering will then continue with the visitors in the context."		| context |	html div class: 'wa-halo-source'; with: [		context := html context copy.		context disableHalos.		context document: (WAPrettyPrintedDocument context: html context).		(WARenderVisitor context: context) start: self root.		context document close ]!

updateStates: aSnapshot	"This class is not a Presenter but WAToolDecoration will make sure we get a chance	to update the snapshot whenever it does."		aSnapshot register: mode! !

!WAHalo categoriesForMethods!
initializeOn:!initialization!public! !
mode!accessing!public! !
mode:!accessing!public! !
modes!accessing!public! !
modeSelector!accessing!public! !
plugins!accessing!public! !
render:visitor:!public!rendering/modes! !
renderWithContext:visitor:!public!rendering! !
root!accessing!public! !
source:visitor:!public!rendering/modes! !
updateStates:!public!updating! !
!

!WAHalo class methodsFor!

on: aComponent	^ self basicNew initializeOn: aComponent; yourself! !

!WAHalo class categoriesForMethods!
on:!instance creation!public! !
!

