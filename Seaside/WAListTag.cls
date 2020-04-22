"Filed out from Dolphin Smalltalk 7"!

WACollectionTag subclass: #WAListTag
	instanceVariableNames: 'callbackBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAListTag guid: (GUID fromString: '{0e99f6cb-328d-4acb-a623-6c8a90cc3e29}')!
WAListTag comment: 'Abstract base class for ordered and unordered list tags.Ordered and unordered lists are rendered in an identical manner except that visual user agents number ordered list items. User agents may present those numbers in a variety of ways. Unordered list items are not numbered.Both types of lists are made up of sequences of list items defined by the LI element (whose end tag may be omitted).Lists may also be nested.'!
!WAListTag categoriesForClass!Seaside-Canvas-Tags! !
!WAListTag methodsFor!

callback: aBlock	callbackBlock := aBlock!

hasCallback	^ callbackBlock notNil!

performCallback: anObject	self hasCallback ifTrue: [ callbackBlock value: anObject ]!

renderListItem: anObject labelled: aString	canvas listItem		class: 'option-selected' if: (self isSelected: anObject);		with: [			self hasCallback				ifFalse: [ canvas render: aString ]				ifTrue: [					canvas anchor						callback: [ self performCallback: anObject ];						with: aString ] ]! !
!WAListTag categoriesFor: #callback:!callbacks!public! !
!WAListTag categoriesFor: #hasCallback!public!testing! !
!WAListTag categoriesFor: #performCallback:!private! !
!WAListTag categoriesFor: #renderListItem:labelled:!private! !

