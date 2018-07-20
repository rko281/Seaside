"Filed out from Dolphin Smalltalk 7"!

WACanvasWidget subclass: #WASelection
	instanceVariableNames: 'items labelBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASelection guid: (GUID fromString: '{09edc2bd-178b-4435-89be-8bba5df19af7}')!
WASelection comment: 'WASelection creates a selectable list. Items can be any object. If optional labelBlock is not given the string versions of the items are displayed to user, otherwise labelBlock is used to generate the text to display for each item. Returns the item selected by user, (not the index nor the text shown the user). 	| selection |	selection := WASelection new.	selection items: #(1 ''cat'' ''rat'').	selection 		labelBlock: [:item | item = 1 ifTrue: [''First''] ifFalse: [item asUppercase]].	result := self call: selection.	self inform: result printStringInstance Variables:	items	<Array of Objects> 		labelBlock	<One arg Block>	'!
!WASelection categoriesForClass!Seaside-Widgets-Components! !
!WASelection methodsFor!

initialize	super initialize.	items := #().	labelBlock := [ :each | each greaseString ]!

items	^ items!

items: aCollection	items := aCollection!

labelBlock	^ labelBlock!

labelBlock: aBlock	labelBlock := aBlock!

renderContentOn: html	html unorderedList		list: self items;		labels: self labelBlock;		callback: [ :value | self answer: value ]! !
!WASelection categoriesFor: #initialize!initialization!public! !
!WASelection categoriesFor: #items!accessing!public! !
!WASelection categoriesFor: #items:!accessing!public! !
!WASelection categoriesFor: #labelBlock!accessing!public! !
!WASelection categoriesFor: #labelBlock:!accessing!public! !
!WASelection categoriesFor: #renderContentOn:!public!rendering! !

