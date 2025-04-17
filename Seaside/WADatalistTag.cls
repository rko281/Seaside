"Filed out from Dolphin Smalltalk"!

WACollectionTag subclass: #WADatalistTag
	instanceVariableNames: 'valueBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADatalistTag guid: (GUID fromString: '{73d4b8c8-63dd-453b-b4f6-11c2cf6d459f}')!

WADatalistTag comment: 'datalist together with the a new list attribute for input is used to make comboboxes:<input list=browsers><datalist id=browsers> <option value="Safari"> <option value="Internet Explorer"> <option value="Opera"> <option value="Firefox"></datalist>'!

!WADatalistTag categoriesForClass!Tags! !

!WADatalistTag methodsFor!

renderListItem: anObject labelled: labelString	canvas option		value: (self valueFor: anObject);		selected: (self isSelected: anObject);		with: labelString!

tag	^ 'datalist'!

valueFor: anObject	^ valueBlock isNil		ifTrue: [ anObject ]		ifFalse: [ valueBlock value: anObject ]!

values: aBlock	"Allows to customize the rendering of list items by passing a one argument block that converts each option to a string for use in the 'value' attribute. If you need to do more customized html rendering for the options use #with: or override #renderOn: in your objects."	valueBlock := aBlock! !

!WADatalistTag categoriesForMethods!
renderListItem:labelled:!private! !
tag!accessing!public! !
valueFor:!private! !
values:!accessing!public! !
!

