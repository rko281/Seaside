"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAStatusItem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAStatusItem guid: (GUID fromString: '{389ce790-6e66-4844-8630-2322a306f741}')!

WAStatusItem comment: ''!

!WAStatusItem categoriesForClass!Seaside-Tools-Web! !

!WAStatusItem methodsFor!

<= otherStatusItem	^ (self priority < otherStatusItem priority) or: [		(self priority = otherStatusItem priority) and: [			self label <= otherStatusItem label ] ]!

isSupported	^ true!

label	^ self title!

priority	self subclassResponsibility!

renderContentOn: html		html table: [		self renderHeaderOn: html.		self renderFooterOn: html.		html tableBody			class: self tableBodyCssClass;			with: [ self renderValuesOn: html ] ]!

renderFooterOn: html	"subclasses can implement"!

renderHeaderOn: html	"subclasses can implement"!

renderLabel: aLabelString on: html	html tableHeading: aLabelString, ':'!

renderLabel: aLabelString value: anObject on: html	html tableRow: [		self renderLabel: aLabelString on: html.		self renderValue: anObject on: html ]!

renderLabel: aLabelString value: aFirstObject value: aSecondObject on: html	html tableRow: [		self renderLabel: aLabelString on: html.		self renderValue: aFirstObject on: html.		self renderValue: aSecondObject on: html ]!

renderLabel: aLabelString value: aFirstObject value: aSecondObject value: aThirdObject on: html	html tableRow: [		self renderLabel: aLabelString on: html.		self renderValue: aFirstObject on: html.		self renderValue: aSecondObject on: html.		self renderValue: aThirdObject on: html ]!

renderValue: anObject on: html	html tableData: anObject!

renderValuesOn: html		self subclassResponsibility!

tableBodyCssClass	^ 'left'!

title	self subclassResponsibility! !

!WAStatusItem categoriesForMethods!
<=!comparing!public! !
isSupported!public!testing! !
label!accessing!public! !
priority!accessing!public! !
renderContentOn:!public!rendering! !
renderFooterOn:!public!rendering! !
renderHeaderOn:!public!rendering! !
renderLabel:on:!public!rendering! !
renderLabel:value:on:!public!rendering! !
renderLabel:value:value:on:!public!rendering! !
renderLabel:value:value:value:on:!public!rendering! !
renderValue:on:!public!rendering! !
renderValuesOn:!public!rendering! !
tableBodyCssClass!accessing!public! !
title!accessing!public! !
!

!WAStatusItem class methodsFor!

isAbstract	^ self name = #WAStatusItem!

sortedConcreteSubinstances	^ ((self allSubclasses		reject: [ :each | each isAbstract ])		collect: [ :each | each new ])			sorted! !

!WAStatusItem class categoriesForMethods!
isAbstract!public!testing! !
sortedConcreteSubinstances!instance creation!public! !
!

