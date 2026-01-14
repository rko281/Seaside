"Filed out from Dolphin Smalltalk"!

WACanvasWidget subclass: #WAAlphabeticBatchedList
	instanceVariableNames: 'items currentPage'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAlphabeticBatchedList guid: (GUID fromString: '{25cafd17-5c8e-48a1-a3e0-acbf694cf456}')!

WAAlphabeticBatchedList comment: 'WAAlphabeticBatchedList organizes a collection of items into pages for display. A page contains all items whose string representation (item displayString) starts with the same character. WAAlphabeticBatchedList only displays the navigation (alphabet with links) for the list. Your code needs to display the current page.Use WAAlphabeticBatchedList>>items: to set the collections of items.Use WAAlphabeticBatchedList>>batch to get the items to display on the current pageSee WABatchFunctionalTest for example of usage.Select "Batch" tab of the Functional Seaside Test Suite to run an example  (http://127.0.0.1:xxxx/seaside/tests/alltests)Instance Variables:	currentPage	<Character>	the character of the curent page	items	<(Collection of: (Object ))> collection of the items managed by WAAlphabeticBatchedList. Collection is sorted before items are displayed.'!

!WAAlphabeticBatchedList categoriesForClass!Seaside-Widgets-Components! !

!WAAlphabeticBatchedList methodsFor!

allPages	^ 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'!

batch	^ items select: [ :each |		each greaseString asUppercase first = self currentPage ]!

currentPage	^ currentPage ifNil: [ currentPage := self validPages first ]!

currentPage: aCharacter	currentPage := aCharacter!

isOnFirstPage	^ self validPages first = self currentPage!

isOnLastPage	^ self validPages last = self currentPage!

items	^ items!

items: aCollection	items := aCollection!

nextPage	self isOnLastPage		ifFalse: [ currentPage := self validPages after: currentPage ]!

previousPage	self isOnFirstPage		ifFalse: [ currentPage := self validPages before: currentPage ]!

renderContentOn: html	items isEmpty		ifTrue: [ ^ self ].	html div		class: 'batch';		with: [			self renderPreviousOn: html.			self renderPagesOn: html.			self renderNextOn: html ]!

renderNextOn: html	html space.	self isOnLastPage		ifFalse: [ html anchor callback: [ self nextPage ]; with: '>>' ]		ifTrue: [ html text: '>>' ]!

renderPagesOn: html	self allPages		do: [ :char |			currentPage = char				ifFalse: [					(self validPages includes: char)						ifTrue: [ html anchor callback: [ self currentPage: char ] ; with: char ]						ifFalse: [ html text: char ] ]				ifTrue: [ html strong: char ] ]		separatedBy: [ html space ]!

renderPreviousOn: html	self isOnFirstPage		ifFalse: [ html anchor callback: [ self previousPage ]; with: '<<' ]		ifTrue: [ html text: '<<' ].	html space!

states	^ Array with: self!

validPages	^ (items collect: [ :each |		each greaseString asUppercase first ]) asSet sorted! !

!WAAlphabeticBatchedList categoriesForMethods!
allPages!accessing/calculated!public! !
batch!accessing/calculated!public! !
currentPage!accessing!public! !
currentPage:!accessing!public! !
isOnFirstPage!public!testing! !
isOnLastPage!public!testing! !
items!accessing!public! !
items:!accessing!public! !
nextPage!actions!public! !
previousPage!actions!public! !
renderContentOn:!public!rendering! !
renderNextOn:!public!rendering! !
renderPagesOn:!public!rendering! !
renderPreviousOn:!public!rendering! !
states!hooks!public! !
validPages!accessing/calculated!public! !
!

