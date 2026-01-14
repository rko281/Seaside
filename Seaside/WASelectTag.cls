"Filed out from Dolphin Smalltalk"!

WACollectionTag subclass: #WASelectTag
	instanceVariableNames: 'enabledBlock isOptional optionalLabel titleBlock values'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASelectTag guid: (GUID fromString: '{222a36d5-2778-4474-816f-e830d5b65551}')!

WASelectTag comment: 'This element allows the use to select one (in single selection mode) or multiple (in single selection mode) elements. Default is single selection. Multiple selection can be triggered with #beMultiple.Single selection is in general a drop-down list, so make sure the list of options is not too big.Multiple selection has in general crappy browser support and a list of checkboxes is in general the better option.If in single selection mode and you want enable "no selection" see #beOptional.If you absolutely need to you can render the options yourself with ''html option'' inside #with:Make sure to check the superclass for more methods.See WAInputTest >> #renderSingleSelectionOn: and WAInputTest >> #renderMultiSelectionOn: for examples.'!

!WASelectTag categoriesForClass!Seaside-Canvas-Tags! !

!WASelectTag methodsFor!

before	self isOptional ifTrue: [ self renderOptional ].	super before!

beOptional	"This adds a nil item to #list: which has the semantic of no selection. #optionalLabel: is the label for nil. This only really makes sense in single selection mode."	isOptional := true!

callback: aBlock	values := Dictionary new.	self name: (self storeCallback: (self callbackClass on: aBlock values: values))!

callbackClass	^ WAValuesCallback!

dispatchCallback	^ self name: (self storeCallback: WADispatchCallback new)!

enabled: aOneArgumentBlock	"Enable only those elements for selection for whom aBlock return true."	enabledBlock := aOneArgumentBlock!

hasCallback	^ values notNil!

initialize	super initialize.	isOptional := false!

isEnabled: anObject	"Test if anObject is enabled." 	^ enabledBlock isNil or: [ enabledBlock value: anObject ]!

isOptional	^ isOptional!

listId: aString	"aString is the id of a datalist"	self attributeAt: 'list' put: aString!

name: aString	"This attribute assigns the control name."	self attributes at: 'name' put: aString!

nextKey	^ values size + 1!

optionalLabel: aString	"The label for the nil element. See #beOptional."	optionalLabel := aString!

renderListItem: anObject labelled: aString	| option |	option := canvas option.	self hasCallback		ifTrue: [ option value: (self valueFor: anObject) ].	titleBlock isNil		ifFalse: [ option title: (self titleFor: anObject) ].	option		selected: (self isSelected: anObject);		disabled: (self isEnabled: anObject) not;		with: aString!

renderOptional	self renderListItem: nil labelled: optionalLabel!

size: aNumber	"If a SELECT element is presented as a scrolled list box, this attribute specifies the number of rows in the list that should be visible at the same time. Visual user agents are not required to present a SELECT element as a list box; they may use any other mechanism, such as a drop-down menu."	self attributes at: 'size' put: aNumber!

tag	^ 'select'!

titleFor: anObject	^ titleBlock isNil		ifTrue: [ anObject ]		ifFalse: [ titleBlock value: anObject ]!

titles: aOneArgumentBlock	"The given block will be used to generated title attributes for any of the options."	titleBlock := aOneArgumentBlock!

valueFor: anObject	^ self valuesAt: self nextKey put: anObject!

valuesAt: key put: anObject	values at: key put: anObject.	^ values size! !

!WASelectTag categoriesForMethods!
before!private! !
beOptional!attributes!public! !
callback:!callbacks!public! !
callbackClass!accessing!public! !
dispatchCallback!callbacks!public! !
enabled:!callbacks!public! !
hasCallback!accessing!public! !
initialize!initialization!public! !
isEnabled:!public!testing! !
isOptional!public!testing! !
listId:!attributes!public! !
name:!attributes!public! !
nextKey!private! !
optionalLabel:!attributes!public! !
renderListItem:labelled:!private! !
renderOptional!private! !
size:!attributes!public! !
tag!accessing!public! !
titleFor:!private! !
titles:!callbacks!public! !
valueFor:!private! !
valuesAt:put:!accessing!public! !
!

