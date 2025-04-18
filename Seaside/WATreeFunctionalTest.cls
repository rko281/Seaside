﻿"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WATreeFunctionalTest
	instanceVariableNames: 'selected tree'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATreeFunctionalTest guid: (GUID fromString: '{dea4fd8b-f39b-4d05-a7d3-2f5623296ce6}')!

WATreeFunctionalTest comment: ''!

!WATreeFunctionalTest categoriesForClass!Unclassified! !

!WATreeFunctionalTest methodsFor!

children	^ Array with: tree!

initialize	super initialize.	tree := WATree new		root: Collection;		labelBlock: [ :class | class name ];		childrenBlock: [ :class | class subclasses ];		selectBlock: [ :class | selected := class name ];		canSelectBlock: [ :class | class subclasses notEmpty ];		yourself!

renderContentOn: html	self renderExplanationOn: html.	self renderTreeOn: html!

renderExplanationOn: html	html paragraph: [		html text: 'This is a functional test for WATree.'.		html orderedList: [			html listItem: 'Clicking on ''+'' should expand a node'.			html listItem: 'Clicking on ''-'' should collapse a node'.			html listItem: 'Clicking on a node should display its name after ''Selected:'''.			html listItem: 'Leaf nodes should not be clickable' ] ]!

renderTreeOn: html	html strong: 'Selected:'.	html span		id:'selecteditem';		with: selected.		html render: tree!

states	^ Array with: self! !

!WATreeFunctionalTest categoriesForMethods!
children!hooks!public! !
initialize!initialization!public! !
renderContentOn:!public!rendering! !
renderExplanationOn:!public!rendering! !
renderTreeOn:!public!rendering! !
states!hooks!public! !
!

