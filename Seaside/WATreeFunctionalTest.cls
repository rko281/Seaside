"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WATreeFunctionalTest
	instanceVariableNames: 'selected tree'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATreeFunctionalTest guid: (GUID fromString: '{b4da4ae2-0d11-4b46-bc5a-5062d22a98bf}')!
WATreeFunctionalTest comment: ''!
!WATreeFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WATreeFunctionalTest methodsFor!

children	^ Array with: tree!

initialize	super initialize.	tree := WATree new		root: Collection;		labelBlock: [ :class | class name ];		childrenBlock: [ :class | class subclasses ];		selectBlock: [ :class | selected := class name ];		canSelectBlock: [ :class | class subclasses notEmpty ];		yourself!

renderContentOn: html	self renderExplanationOn: html.	self renderTreeOn: html!

renderExplanationOn: html	html paragraph: [		html text: 'This is a functional test for WATree.'.		html orderedList: [			html listItem: 'Clicking on ''+'' should expand a node'.			html listItem: 'Clicking on ''-'' should collapse a node'.			html listItem: 'Clicking on a node should display its name after ''Selected:'''.			html listItem: 'Leaf nodes should not be clickable' ] ]!

renderTreeOn: html	html strong: 'Selected:'.	html render: selected.		html render: tree!

states	^ Array with: self! !
!WATreeFunctionalTest categoriesFor: #children!hooks!public! !
!WATreeFunctionalTest categoriesFor: #initialize!initialization!public! !
!WATreeFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WATreeFunctionalTest categoriesFor: #renderExplanationOn:!public!rendering! !
!WATreeFunctionalTest categoriesFor: #renderTreeOn:!public!rendering! !
!WATreeFunctionalTest categoriesFor: #states!hooks!public! !

