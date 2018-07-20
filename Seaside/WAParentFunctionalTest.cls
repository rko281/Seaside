"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAParentFunctionalTest
	instanceVariableNames: 'parent'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAParentFunctionalTest guid: (GUID fromString: '{7ba84ee8-696e-423d-91ab-b39f4eac1e61}')!
WAParentFunctionalTest comment: ''!
!WAParentFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WAParentFunctionalTest methodsFor!

parent: aComponent	parent := aComponent!

renderContentOn: html	self renderExplanationOn: html.	self renderSwapParentOn: html!

renderExplanationOn: html	html paragraph: 'This regression tests checks if #call:onAnswer: on the parent component works. If you click "swap parent" "Test passes!!" should appear without a tab panel.'!

renderSwapParentOn: html	html paragraph: [		html anchor			callback: [ self swap ];			with: 'swap parent' ]!

swap	parent inform: 'Test passes!!' onAnswer: [ ]! !
!WAParentFunctionalTest categoriesFor: #parent:!accessing!public! !
!WAParentFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WAParentFunctionalTest categoriesFor: #renderExplanationOn:!public!rendering! !
!WAParentFunctionalTest categoriesFor: #renderSwapParentOn:!public!rendering! !
!WAParentFunctionalTest categoriesFor: #swap!actions!public! !

