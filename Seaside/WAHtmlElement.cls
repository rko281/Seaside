"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAHtmlElement
	instanceVariableNames: 'root attributes children'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHtmlElement guid: (GUID fromString: '{b2ed8db4-76c9-4e71-9aff-a67dfc4172de}')!

WAHtmlElement comment: 'Root class of all elements inside a <head> section.'!

!WAHtmlElement categoriesForClass!Seaside-Core-Document-Elements! !

!WAHtmlElement methodsFor!

add: anElement	children ifNil: [ children := OrderedCollection new ].	children add: anElement!

attributeAt: aString	^ self attributes at: aString!

attributeAt: aString ifAbsent: aBlock	^ self attributes at: aString ifAbsent: aBlock!

attributeAt: aString put: anObject	^ self attributes at: aString put: anObject!

attributes	^ attributes ifNil: [ attributes := WAHtmlAttributes new ]!

childrenDo: aBlock	children isNil		ifFalse: [ children do: aBlock ]!

encodeAfterOn: aDocument	aDocument closeTag: self tag!

encodeBeforeOn: aDocument	aDocument openTag: self tag attributes: attributes closed: self isClosed!

encodeChildrenOn: aDocument	self childrenDo: [ :each | each encodeOn: aDocument ]!

encodeOn: aDocument	self encodeBeforeOn: aDocument.	self isClosed ifTrue: [ ^ self ].	self encodeChildrenOn: aDocument.	self encodeAfterOn: aDocument!

initializeWithRoot: aRoot	self initialize.	root := aRoot!

isClosed	^ true!

tag	self subclassResponsibility!

with: anObject	self add: anObject! !

!WAHtmlElement categoriesForMethods!
add:!accessing/children!public! !
attributeAt:!accessing/attributes!public! !
attributeAt:ifAbsent:!accessing/attributes!public! !
attributeAt:put:!accessing/attributes!public! !
attributes!accessing!public! !
childrenDo:!accessing/children!public! !
encodeAfterOn:!printing!public! !
encodeBeforeOn:!printing!public! !
encodeChildrenOn:!printing!public! !
encodeOn:!printing!public! !
initializeWithRoot:!initialization!public! !
isClosed!public!testing! !
tag!accessing!public! !
with:!public! !
!

!WAHtmlElement class methodsFor!

root: aRoot	^ self basicNew initializeWithRoot: aRoot; yourself! !

!WAHtmlElement class categoriesForMethods!
root:!instance creation!public! !
!

