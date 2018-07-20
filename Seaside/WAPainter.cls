"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAPainter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPainter guid: (GUID fromString: '{b06b1d99-cd64-4c1c-86f4-96be0984618f}')!
WAPainter comment: 'A Painter is an object that renders onto a Document using a Renderer (typically a subclass of WACanvas). The class of the Renderer is specified by #rendererClass.Subclasses should implement #renderContentOn: to do the actual rendering.Painters do not store or backtrack state and do not provide call/answer semantics or decorations. They are often created for each request, used, and then discarded. If you want any of the above features, you should use a subclass of WAPresenter or WAComponent.To cause a Painter to render itself, you should pass it to the #render: message of a Renderer. For example, from within a Component you could do the following:	renderContentOn: html		html render: MyPainterSubclass new'!
!WAPainter categoriesForClass!Seaside-Core-Rendering! !
!WAPainter methodsFor!

accept: aVisitor	aVisitor visitPainter: self!

renderContentOn: aRenderer	"This is the main rendering method of WAPainter. It will be called with an instance of	the Renderer class returned by #rendererClass whenever this Painter is asked to render	itself. By convention, implementations of this method that expect a Canvas renderer	use 'html' as the parameter name."		self subclassResponsibility!

rendererClass	"Returns a subclass of WARenderer to use when rendering this Painter."		^ WARenderer default!

renderOn: aRenderer	"This method allows Painters to be passed into the #render: method of a Renderer.	It should not normally be overridden. Subclasses should override #renderContentOn:.		DO NOT call this method directly. Instead, pass this Painter as a parameter to the	#render: method of aRenderer."		self renderWithContext: aRenderer context!

renderWithContext: aRenderContext	"This is the main entry point when attempting to render a Painter.	It should not normally be overridden. Subclasses should override #renderContentOn:.		You DO NOT normally need to call this method directly. Usually you have an instance	of a Renderer (e.g. a WAHtmlCanvas) and can call the #render: method."		aRenderContext visitor visit: self!

updateRoot: anHtmlRoot	"Override this method to modify the Root object of a Document while rendering. This	method is usually called by a WAUpdateRootVisitor.		If you are using Painters within a tree of Presenters/Components, this method will not	be called unless the Painter is included in the list of children of the Presenter."!

updateUrl: aUrl	"Override this method to modify the WAUrl object which will be used as a base URL	while rendering. This method is usually called by a WAUpdateUrlVisitor.		If you are using Painters within a tree of Presenters/Components, this method will not	be called unless the Painter is included in the list of children of the Presenter."! !
!WAPainter categoriesFor: #accept:!public!visiting! !
!WAPainter categoriesFor: #renderContentOn:!public!rendering! !
!WAPainter categoriesFor: #rendererClass!public!rendering! !
!WAPainter categoriesFor: #renderOn:!public!rendering! !
!WAPainter categoriesFor: #renderWithContext:!public!rendering! !
!WAPainter categoriesFor: #updateRoot:!public!updating! !
!WAPainter categoriesFor: #updateUrl:!public!updating! !

