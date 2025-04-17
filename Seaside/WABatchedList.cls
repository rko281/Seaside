"Filed out from Dolphin Smalltalk"!

WACanvasWidget subclass: #WABatchedList
	instanceVariableNames: 'items batchSize currentPage'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABatchedList guid: (GUID fromString: '{75040b44-43b7-4b0b-995c-03d8f70302bf}')!

WABatchedList comment: 'WABatchedList helps display a collection of items across multiple pages. WABatchedList organizes a collection into pages (or batches) of batchSize items each and renders navigation links for a user to moved between pages. WABatchedList>>batch returns the items to display in the current page or batch. Your code has to display the items.See WABatchSelection for example of usage.Instance Variables:	batchSize	<Integer>	number of items to display on a single page	currentPage	<Integer>	 index of current page, starts a 1	items	<SequenceableCollection of Objects>	objects organized into pages for display'!

!WABatchedList categoriesForClass!Components! !

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

!WABatchedList categoriesForMethods!
batch!accessing/calculated!public! !
batchSize!accessing!public! !
batchSize:!accessing!public! !
currentPage!accessing!public! !
currentPage:!accessing!public! !
endIndex!accessing/calculated!public! !
hasMultiplePages!public!testing! !
initialize!initialization!public! !
isOnFirstPage!public!testing! !
isOnLastPage!public!testing! !
items!accessing!public! !
items:!accessing!public! !
maxPages!accessing/calculated!public! !
nextPage!actions!public! !
pageRange!accessing/calculated!public! !
pageRangeEnd!accessing/calculated!public! !
pageRangeStart!accessing/calculated!public! !
previousPage!actions!public! !
renderContentOn:!public!rendering! !
renderNextOn:!public!rendering! !
renderPagesOn:!public!rendering! !
renderPreviousOn:!public!rendering! !
startIndex!accessing/calculated!public! !
states!hooks!public! !
!

!WABatchedList class methodsFor!

exampleComponent	^ self new		items: (1 to: 100);		yourself! !

!WABatchedList class categoriesForMethods!
exampleComponent!accessing!public! !
!

