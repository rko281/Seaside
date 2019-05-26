"Filed out from Dolphin Smalltalk 7"!

WACanvasWidget subclass: #WAAlphabeticBatchedList
	instanceVariableNames: 'items currentPage'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAlphabeticBatchedList guid: (GUID fromString: '{91d7f9cf-43da-43af-b7f3-ef2d5de5c82f}')!
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
!WAAlphabeticBatchedList categoriesFor: #allPages!accessing/calculated!public! !
!WAAlphabeticBatchedList categoriesFor: #batch!accessing/calculated!public! !
!WAAlphabeticBatchedList categoriesFor: #currentPage!accessing!public! !
!WAAlphabeticBatchedList categoriesFor: #currentPage:!accessing!public! !
!WAAlphabeticBatchedList categoriesFor: #isOnFirstPage!public!testing! !
!WAAlphabeticBatchedList categoriesFor: #isOnLastPage!public!testing! !
!WAAlphabeticBatchedList categoriesFor: #items!accessing!public! !
!WAAlphabeticBatchedList categoriesFor: #items:!accessing!public! !
!WAAlphabeticBatchedList categoriesFor: #nextPage!actions!public! !
!WAAlphabeticBatchedList categoriesFor: #previousPage!actions!public! !
!WAAlphabeticBatchedList categoriesFor: #renderContentOn:!public!rendering! !
!WAAlphabeticBatchedList categoriesFor: #renderNextOn:!public!rendering! !
!WAAlphabeticBatchedList categoriesFor: #renderPagesOn:!public!rendering! !
!WAAlphabeticBatchedList categoriesFor: #renderPreviousOn:!public!rendering! !
!WAAlphabeticBatchedList categoriesFor: #states!hooks!public! !
!WAAlphabeticBatchedList categoriesFor: #validPages!accessing/calculated!public! !

