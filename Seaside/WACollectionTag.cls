﻿"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WACollectionTag
	instanceVariableNames: 'list selected labelBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACollectionTag guid: (GUID fromString: '{a5f13eb1-968a-42e5-afc2-d47e8140b17c}')!

WACollectionTag comment: 'This element allows the use to select one (in single selection mode) or multiple (in single selection mode) elements. Multiple selection can be triggered with #beMultiple, single selection can be triggered with #beSingle .Default is single selection.The general idea is that you pass the collection of options to #list: and use #labels: to customize their rendering. The selected option(s) can be set with: #selected:.This whole class is kind of an awkward hack, but nobody needs MI anyway. You can always get a way with composition and delegation'!

!WACollectionTag categoriesForClass!Tags! !

!WACollectionTag methodsFor!

add: anObject	self list add: anObject!

addAll: aCollection	self list addAll: aCollection!

before	super before.	self hasList ifTrue: [		self list do: [ :each |			self				renderListItem: each				labelled: (self labelForOption: each) ] ]!

callback: aBlock	self subclassResponsibility!

hasList	^ list notNil and: [ list notEmpty ]!

isSelected: anObject	"Test if anObject is currently selected." 	^ selected = anObject!

labelForOption: anObject	^ labelBlock isNil		ifTrue: [ anObject ]		ifFalse: [ labelBlock value: anObject ]!

labels: aBlock	"Allows to customize the rendering of list items by passing a one argument block that converts each option to a string. If you need to do custom html rendering for the options use #with: or override #renderOn: in your objects."	labelBlock := aBlock!

list	^ list ifNil: [ list := OrderedCollection new ]!

list: aCollection	"Append aCollection of items to display. The rendering can be customized using #labels:."	aCollection isNil		ifFalse: [ self addAll: aCollection ]!

on: aSelector of: anObject 	self selected: (anObject perform: aSelector).	self callback: (GRDelayedSend 			receiver: anObject			selector: aSelector greaseAsMutator)!

renderListItem: anObject labelled: aString	self subclassResponsibility!

selected: anObject	"Set anObject to be selected."	selected := anObject! !

!WACollectionTag categoriesForMethods!
add:!adding!public! !
addAll:!adding!public! !
before!private! !
callback:!callbacks!public! !
hasList!public!testing! !
isSelected:!public!testing! !
labelForOption:!private! !
labels:!callbacks!public! !
list!accessing!public! !
list:!accessing!public! !
on:of:!callbacks!public! !
renderListItem:labelled:!private! !
selected:!accessing!public! !
!

!WACollectionTag class methodsFor!

isAbstract 	^ self == WACollectionTag! !

!WACollectionTag class categoriesForMethods!
isAbstract!public!testing! !
!

