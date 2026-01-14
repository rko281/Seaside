"Filed out from Dolphin Smalltalk"!

WACanvasWidget subclass: #WATree
	instanceVariableNames: 'root selected expanded childrenBlock labelBlock canSelectBlock selectBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATree guid: (GUID fromString: '{eee3643a-b5a6-472e-9d62-b805defe3f4c}')!

WATree comment: 'WATree implements a tree menu, which supports nesting, collapsing and expanding. Prefixes items with "+/-" to indicate items that can be expanded/collapsed.See class methods for simple example.Instance Variables:	canSelectBlock	<BlockClosure [:nodeInTree | ]>	returns true if user can select the argument of the block, if true node is an anchor	childrenBlock	<BlockClosure [:nodeInTree | ]>	returns children (or subnodes) of the given node in the tree, sent to all nodes	expanded	<IdentitySet>	Collection of all nodes that are currently expanded	labelBlock	<[:nodeInTree | ]> returns text to display for given node	root	<Object>	root or top level node in tree, childrenBlock is used to determine roots subnodes	selectBlock	<BlockClosure [:selectedNode | ]>	called when an node is selected, put a callback to your code here	selected	<Object>	currently selected node'!

!WATree categoriesForClass!Seaside-Widgets-Components! !

!WATree methodsFor!

canSelect: aNode	^ self selectBlock notNil and: [ self canSelectBlock isNil or: [ self canSelectBlock value: aNode ] ]!

canSelectBlock	^ canSelectBlock!

canSelectBlock: aBlock	canSelectBlock := aBlock!

childrenBlock	^ childrenBlock!

childrenBlock: aBlock	childrenBlock := aBlock!

childrenOf: aNode	| children |	children := self childrenBlock value: aNode.	^ children ifNil: [ Array new ]!

collapse: aNode	expanded remove: aNode!

expand: aNode	expanded add: aNode!

expandAll: aCollection	expanded addAll: aCollection!

hasChildren: aNode	^ (self childrenOf: aNode) isEmpty not!

initialize	super initialize.	expanded := IdentitySet new.	self selectBlock: [ :node | self answer: node ].	self childrenBlock: [ :node | Array new ].	self labelBlock: [ :node | node greaseString ]!

isExpanded: aNode	^ expanded includes: aNode!

labelBlock	^ labelBlock!

labelBlock: aBlock	labelBlock := aBlock!

labelOf: aNode	^ self labelBlock value: aNode!

renderContentOn: html	self renderTreeOn: html!

renderNode: aNode on: html	html listItem: [		self renderNodeButton: aNode on: html.		self renderNodeLabel: aNode on: html.		self renderNodeChildren: aNode on: html ]!

renderNodeButton: aNode on: html 	| isExpanded |	html span		class: 'button';		with: 			[ (self hasChildren: aNode) ifTrue: 				[ isExpanded := self isExpanded: aNode.				self 					renderNodeButtonLink: aNode					action: (GRDelayedSend 							receiver: self							selector: (isExpanded 									ifTrue: [ #collapse: ]									ifFalse: [ #expand: ])							argument: aNode)					text: (isExpanded 							ifTrue: [ '-' ]							ifFalse: [ '+' ])					on: html ] ]!

renderNodeButtonLink: aNode action: aBlock text: anObject on: html	html anchor callback: aBlock; with: anObject!

renderNodeChildren: aNode on: html	| children |	children := self childrenOf: aNode.	children isEmpty ifFalse: [		(self isExpanded: aNode) ifTrue: [			html unorderedList: [				children do: [ :each |					self renderNode: each on: html ] ] ] ]!

renderNodeLabel: aNode on: html 	| label |	html span		class: 'label';		class: (self selected == aNode 				ifTrue: [ 'active' ]				ifFalse: [ 'inactive' ]);		with: 			[ label := self labelOf: aNode.			(self canSelect: aNode) 				ifFalse: [ html render: label ]				ifTrue: 					[ self 						renderNodeLabelLink: aNode						action: (GRDelayedSend 								receiver: self								selector: #select:								argument: aNode)						text: label						on: html ] ]!

renderNodeLabelLink: aNode action: aBlock text: anObject on: html	html anchor callback: aBlock; with: anObject!

renderTreeOn: html	html unorderedList: [ self renderNode: self root on: html ]!

root	^ root!

root: aNode	root := aNode!

select: aNode 	(self canSelect: aNode) ifFalse: [ ^ self ].	self selected: aNode.	self selectBlock isNil ifFalse: [ self selectBlock value: aNode ]!

selectBlock	^ selectBlock!

selectBlock: aBlock	selectBlock := aBlock!

selected	^ selected!

selected: aNode	selected := aNode!

states	^ Array with: expanded! !

!WATree categoriesForMethods!
canSelect:!public!testing! !
canSelectBlock!accessing/configuration!public! !
canSelectBlock:!accessing/configuration!public! !
childrenBlock!accessing/configuration!public! !
childrenBlock:!accessing/configuration!public! !
childrenOf:!accessing/nodes!public! !
collapse:!actions!public! !
expand:!actions!public! !
expandAll:!actions!public! !
hasChildren:!public!testing! !
initialize!initialization!public! !
isExpanded:!public!testing! !
labelBlock!accessing/configuration!public! !
labelBlock:!accessing/configuration!public! !
labelOf:!accessing/nodes!public! !
renderContentOn:!public!rendering! !
renderNode:on:!public!rendering/nodes! !
renderNodeButton:on:!public!rendering/nodes! !
renderNodeButtonLink:action:text:on:!public!rendering/nodes! !
renderNodeChildren:on:!public!rendering/nodes! !
renderNodeLabel:on:!public!rendering/nodes! !
renderNodeLabelLink:action:text:on:!public!rendering/nodes! !
renderTreeOn:!public!rendering! !
root!accessing!public! !
root:!accessing!public! !
select:!actions!public! !
selectBlock!accessing/configuration!public! !
selectBlock:!accessing/configuration!public! !
selected!accessing!public! !
selected:!accessing!public! !
states!hooks!public! !
!

!WATree class methodsFor!

exampleClassBrowser	^ self new		root: Collection;		labelBlock: [ :class | class name ];		childrenBlock: [ :class | class subclasses ];		yourself!

root: anObject	^ self new		root: anObject;		yourself!

root: anObject path: anArray	^ (self root: anObject)		expandAll: anArray;		selected: anArray last;		yourself! !

!WATree class categoriesForMethods!
exampleClassBrowser!examples!public! !
root:!instance creation!public! !
root:path:!instance creation!public! !
!

