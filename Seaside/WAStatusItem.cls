"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAStatusItem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAStatusItem guid: (GUID fromString: '{bf098994-8e0c-40ff-b5e4-1f63550f84e8}')!
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
!WAStatusItem categoriesFor: #<=!comparing!public! !
!WAStatusItem categoriesFor: #isSupported!public!testing! !
!WAStatusItem categoriesFor: #label!accessing!public! !
!WAStatusItem categoriesFor: #priority!accessing!public! !
!WAStatusItem categoriesFor: #renderContentOn:!public!rendering! !
!WAStatusItem categoriesFor: #renderFooterOn:!public!rendering! !
!WAStatusItem categoriesFor: #renderHeaderOn:!public!rendering! !
!WAStatusItem categoriesFor: #renderLabel:on:!public!rendering! !
!WAStatusItem categoriesFor: #renderLabel:value:on:!public!rendering! !
!WAStatusItem categoriesFor: #renderLabel:value:value:on:!public!rendering! !
!WAStatusItem categoriesFor: #renderLabel:value:value:value:on:!public!rendering! !
!WAStatusItem categoriesFor: #renderValue:on:!public!rendering! !
!WAStatusItem categoriesFor: #renderValuesOn:!public!rendering! !
!WAStatusItem categoriesFor: #tableBodyCssClass!accessing!public! !
!WAStatusItem categoriesFor: #title!accessing!public! !

!WAStatusItem class methodsFor!

isAbstract	^ self name = #WAStatusItem!

sortedConcreteSubinstances	^ ((self allSubclasses		reject: [ :each | each isAbstract ])		collect: [ :each | each new ])			sorted! !
!WAStatusItem class categoriesFor: #isAbstract!public!testing! !
!WAStatusItem class categoriesFor: #sortedConcreteSubinstances!instance creation!public! !

