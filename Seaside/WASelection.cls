"Filed out from Dolphin Smalltalk"!

WACanvasWidget subclass: #WASelection
	instanceVariableNames: 'items labelBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASelection guid: (GUID fromString: '{0dceff15-5dec-4e3b-93cf-b0e9d2e991ab}')!

WASelection comment: 'WASelection creates a selectable list. Items can be any object. If optional labelBlock is not given the string versions of the items are displayed to user, otherwise labelBlock is used to generate the text to display for each item. Returns the item selected by user, (not the index nor the text shown the user). 	| selection |	selection := WASelection new.	selection items: #(1 ''cat'' ''rat'').	selection 		labelBlock: [:item | item = 1 ifTrue: [''First''] ifFalse: [item asUppercase]].	result := self call: selection.	self inform: result printStringInstance Variables:	items	<Array of Objects> 		labelBlock	<One arg Block>	'!

!WASelection categoriesForClass!Components! !

!WASelection methodsFor!

initialize	super initialize.	items := #().	labelBlock := [ :each | each greaseString ]!

items	^ items!

items: aCollection	items := aCollection!

labelBlock	^ labelBlock!

labelBlock: aBlock	labelBlock := aBlock!

renderContentOn: html	html unorderedList		list: self items;		labels: self labelBlock;		callback: [ :value | self answer: value ]! !

!WASelection categoriesForMethods!
initialize!initialization!public! !
items!accessing!public! !
items:!accessing!public! !
labelBlock!accessing!public! !
labelBlock:!accessing!public! !
renderContentOn:!public!rendering! !
!

