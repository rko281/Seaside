"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAHtmlElement
	instanceVariableNames: 'root attributes children'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHtmlElement guid: (GUID fromString: '{a63599c0-54a1-4668-804d-272560c53081}')!
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
!WAHtmlElement categoriesFor: #add:!accessing/children!public! !
!WAHtmlElement categoriesFor: #attributeAt:!accessing/attributes!public! !
!WAHtmlElement categoriesFor: #attributeAt:ifAbsent:!accessing/attributes!public! !
!WAHtmlElement categoriesFor: #attributeAt:put:!accessing/attributes!public! !
!WAHtmlElement categoriesFor: #attributes!accessing!public! !
!WAHtmlElement categoriesFor: #childrenDo:!accessing/children!public! !
!WAHtmlElement categoriesFor: #encodeAfterOn:!printing!public! !
!WAHtmlElement categoriesFor: #encodeBeforeOn:!printing!public! !
!WAHtmlElement categoriesFor: #encodeChildrenOn:!printing!public! !
!WAHtmlElement categoriesFor: #encodeOn:!printing!public! !
!WAHtmlElement categoriesFor: #initializeWithRoot:!initialization!public! !
!WAHtmlElement categoriesFor: #isClosed!public!testing! !
!WAHtmlElement categoriesFor: #tag!accessing!public! !
!WAHtmlElement categoriesFor: #with:!public! !

!WAHtmlElement class methodsFor!

root: aRoot	^ self basicNew initializeWithRoot: aRoot; yourself! !
!WAHtmlElement class categoriesFor: #root:!instance creation!public! !

