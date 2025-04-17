"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WARoot
	instanceVariableNames: 'context'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARoot guid: (GUID fromString: '{867e7a42-5f50-4338-94a4-658ea6c47857}')!

WARoot comment: 'A WARoot is the root of a document. It is responsible to generate header and footer of a document.'!

!WARoot categoriesForClass!Document! !

!WARoot methodsFor!

absoluteUrlForResource: aString	^ self context absoluteUrlForResource: aString!

closeOn: aDocument	"Close aDocument and optionally write its footer."!

context	^ context!

openOn: aDocument	"Open aDocument and optionally write its header."!

setContext: aRenderContext	context := aRenderContext! !

!WARoot categoriesForMethods!
absoluteUrlForResource:!accessing!public! !
closeOn:!public!writing! !
context!accessing!public! !
openOn:!public!writing! !
setContext:!initialization!public! !
!

!WARoot class methodsFor!

context: aRenderContext	^ self new setContext: aRenderContext! !

!WARoot class categoriesForMethods!
context:!instance creation!public! !
!

