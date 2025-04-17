"Filed out from Dolphin Smalltalk"!

WAActionPhaseContinuation subclass: #WAInitialRenderLoopContinuation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAInitialRenderLoopContinuation guid: (GUID fromString: '{55a3df13-55b9-4350-acbf-2c660b31ce1a}')!

WAInitialRenderLoopContinuation comment: 'I''m the initial continuation of a render loop. I just render the initial page. Subclasses may want to override #shouldRedirect and answer true so that a redirect happens before displaying the first page.'!

!WAInitialRenderLoopContinuation categoriesForClass!Continuations! !

!WAInitialRenderLoopContinuation methodsFor!

basicPerformAction	| root |	root := self createRoot.	self session properties at: #presenter put: root.	self prepareRoot: root!

createRoot	| root |	root := self requestContext rootComponentIfAbsent: [ self rootClass new ].	^ self rootDecorationClasses		inject: root		into: [ :component :decorationClass |			component 				addDecoration: decorationClass new;				yourself ]!

prepareRoot: aComponent	(WAAllPresenterGuide client:		(WAInitialRequestVisitor request: self requestContext request))		start: aComponent.	(WAVisiblePresenterGuide client: (WATaskVisitor new)) start: aComponent!

rootClass	^ (self application preferenceAt: #rootClass) value!

rootDecorationClasses	^ (self application preferenceAt: #rootDecorationClasses) collect: [ :each | each value ]!

shouldRedirect	"This should probably be made configurable, but for backwards compatibility with Seaside 3.0,	where we do not redirect when you enter a session, we return false."		^ false! !

!WAInitialRenderLoopContinuation categoriesForMethods!
basicPerformAction!processing!public! !
createRoot!creational!public! !
prepareRoot:!processing!public! !
rootClass!accessing!public! !
rootDecorationClasses!accessing!public! !
shouldRedirect!private! !
!

