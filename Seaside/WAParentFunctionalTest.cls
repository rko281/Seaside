"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAParentFunctionalTest
	instanceVariableNames: 'parent'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAParentFunctionalTest guid: (GUID fromString: '{d02049af-523d-4097-9f2e-c7c9121ba763}')!

WAParentFunctionalTest comment: ''!

!WAParentFunctionalTest categoriesForClass!Seaside-Tests-Functional! !

!WAParentFunctionalTest methodsFor!

parent: aComponent	parent := aComponent!

renderContentOn: html	self renderExplanationOn: html.	self renderSwapParentOn: html!

renderExplanationOn: html	html paragraph: 'This regression tests checks if #call:onAnswer: on the parent component works. If you click "swap parent" "Test passes!!" should appear without a tab panel.'!

renderSwapParentOn: html	html paragraph: [		html anchor			callback: [ self swap ];			with: 'swap parent' ]!

swap	parent inform: 'Test passes!!' onAnswer: [ ]! !

!WAParentFunctionalTest categoriesForMethods!
parent:!accessing!public! !
renderContentOn:!public!rendering! !
renderExplanationOn:!public!rendering! !
renderSwapParentOn:!public!rendering! !
swap!actions!public! !
!

