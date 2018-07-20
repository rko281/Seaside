"Filed out from Dolphin Smalltalk 7"!

WACanvasWidget subclass: #WABatchedList
	instanceVariableNames: 'items batchSize currentPage'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WABatchedList guid: (GUID fromString: '{01fc7aaf-add5-44d1-a769-851e838c0ec2}')!
WABatchedList comment: 'WABatchedList helps display a collection of items across multiple pages. WABatchedList organizes a collection into pages (or batches) of batchSize items each and renders navigation links for a user to moved between pages. WABatchedList>>batch returns the items to display in the current page or batch. Your code has to display the items.See WABatchSelection for example of usage.Instance Variables:	batchSize	<Integer>	number of items to display on a single page	currentPage	<Integer>	 index of current page, starts a 1	items	<SequenceableCollection of Objects>	objects organized into pages for display'!
!WABatchedList categoriesForClass!Seaside-Widgets-Components! !
!WABatchedList methodsFor!

batch	^ self items copyFrom: self startIndex to: self endIndex!

batchSize	^ batchSize!

batchSize: aNumber	batchSize := aNumber!

currentPage	^ currentPage!

currentPage: aNumber	currentPage := aNumber!

endIndex	^ self currentPage * self batchSize min: self items size!

hasMultiplePages	^ self maxPages > 1!

initialize	super initialize.	self batchSize: 10.	self currentPage: 1!

isOnFirstPage	^ self currentPage = 1!

isOnLastPage	^ self currentPage = self maxPages!

items	^ items!

items: aCollection	items := aCollection!

maxPages	^ (self items size / self batchSize) ceiling!

nextPage	self isOnLastPage		ifFalse: [ self currentPage: self currentPage + 1 ]!

pageRange	^ self pageRangeStart to: self pageRangeEnd!

pageRangeEnd	^ self maxPages min: self currentPage + 9!

pageRangeStart	^ 1 max: self currentPage - 9!

previousPage	self isOnFirstPage		ifFalse: [ self currentPage: self currentPage - 1 ]!

renderContentOn: html	self maxPages = 0		ifTrue: [ ^ self ].	html div		class: 'batch';		with: [			self renderPreviousOn: html.			self renderPagesOn: html.			self renderNextOn: html ]!

renderNextOn: html	html space.	self isOnLastPage		ifFalse: [ html anchor callback: [ self nextPage ]; with: '>>' ]		ifTrue: [ html text: '>>' ]!

renderPagesOn: html	self pageRange		do: [ :index |			self currentPage = index				ifFalse: [					html anchor						callback: [ self currentPage: index ];						with: index ]				ifTrue: [ html strong: index ] ]		separatedBy: [ html space ]!

renderPreviousOn: html	self isOnFirstPage		ifFalse: [ html anchor callback: [ self previousPage ]; with: '<<' ]		ifTrue: [ html text: '<<' ].	html space!

startIndex	^ (self currentPage - 1) * self batchSize + 1!

states	^ Array with: self! !
!WABatchedList categoriesFor: #batch!accessing/calculated!public! !
!WABatchedList categoriesFor: #batchSize!accessing!public! !
!WABatchedList categoriesFor: #batchSize:!accessing!public! !
!WABatchedList categoriesFor: #currentPage!accessing!public! !
!WABatchedList categoriesFor: #currentPage:!accessing!public! !
!WABatchedList categoriesFor: #endIndex!accessing/calculated!public! !
!WABatchedList categoriesFor: #hasMultiplePages!public!testing! !
!WABatchedList categoriesFor: #initialize!initialization!public! !
!WABatchedList categoriesFor: #isOnFirstPage!public!testing! !
!WABatchedList categoriesFor: #isOnLastPage!public!testing! !
!WABatchedList categoriesFor: #items!accessing!public! !
!WABatchedList categoriesFor: #items:!accessing!public! !
!WABatchedList categoriesFor: #maxPages!accessing/calculated!public! !
!WABatchedList categoriesFor: #nextPage!actions!public! !
!WABatchedList categoriesFor: #pageRange!accessing/calculated!public! !
!WABatchedList categoriesFor: #pageRangeEnd!accessing/calculated!public! !
!WABatchedList categoriesFor: #pageRangeStart!accessing/calculated!public! !
!WABatchedList categoriesFor: #previousPage!actions!public! !
!WABatchedList categoriesFor: #renderContentOn:!public!rendering! !
!WABatchedList categoriesFor: #renderNextOn:!public!rendering! !
!WABatchedList categoriesFor: #renderPagesOn:!public!rendering! !
!WABatchedList categoriesFor: #renderPreviousOn:!public!rendering! !
!WABatchedList categoriesFor: #startIndex!accessing/calculated!public! !
!WABatchedList categoriesFor: #states!hooks!public! !

!WABatchedList class methodsFor!

exampleComponent	^ self new		items: (1 to: 100);		yourself! !
!WABatchedList class categoriesFor: #exampleComponent!accessing!public! !

