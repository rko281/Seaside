"Filed out from Dolphin Smalltalk"!

WACanvasWidget subclass: #WABatchSelection
	instanceVariableNames: 'batcher linkSelector textSelector'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABatchSelection guid: (GUID fromString: '{65de995c-a8ea-4c39-b257-2f26ef9800ca}')!

WABatchSelection comment: 'WABatchSelection displays a list of objects. The list is show N (currently 8) items per page, with links to navigate to other pages if needed. Objects in the list must implement one method that returns text description of the item and one method that returns a name or label used as the link users click to select the item. The text description is displayed below the link.Example	items := OrderedCollection new.	1 to: 20 do: [:each | items add: (Contact new name: each; phoneNumber: ''54321'';yourself)].	selection := WABatchSelection items: items link: #name text: #phoneNumber.	result := self call: selection.	where the Contact class has methodsinstance vars "phoneNumber" and "name", with	setter & getter methods.Instance Variables:	batcher	<WABatchedList>	description of batcher	linkSelector	<Symbol>	method sent to items in list for link text	textSelector	<Symbol>	method sent to items in list for text description'!

!WABatchSelection categoriesForClass!Seaside-Widgets-Components! !

!WABatchSelection methodsFor!

batchSize	^ batcher batchSize!

batchSize: aSize    batcher batchSize: aSize!

children	^ Array with: batcher!

choose: anItem	self answer: anItem!

items: aCollection	batcher := WABatchedList new		items: aCollection;		batchSize: 8;		yourself!

linkSelector: aSymbol	linkSelector := aSymbol!

renderContentOn: html	html unorderedList: [		batcher batch do: [ :each |			html anchor				callback: [ self choose: each ];				with: (each perform: linkSelector).			html break.			html text: (each perform: textSelector).			html paragraph ] ].	html div		style: 'text-align: center';		with: batcher!

textSelector: aSymbol	textSelector := aSymbol! !

!WABatchSelection categoriesForMethods!
batchSize!accessing!public! !
batchSize:!accessing!public! !
children!hooks!public! !
choose:!commands!public! !
items:!accessing!public! !
linkSelector:!accessing!public! !
renderContentOn:!public!rendering! !
textSelector:!accessing!public! !
!

!WABatchSelection class methodsFor!

items: aCollection link: linkSelector text: textSelector	^ self new		items: aCollection;		linkSelector: linkSelector;		textSelector: textSelector;		yourself! !

!WABatchSelection class categoriesForMethods!
items:link:text:!instance creation!public! !
!

