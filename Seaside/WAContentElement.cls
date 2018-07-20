"Filed out from Dolphin Smalltalk 7"!

WAHtmlElement subclass: #WAContentElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAContentElement guid: (GUID fromString: '{13e56fac-c10c-41e6-91fc-981687df8bd3}')!
WAContentElement comment: 'Common superclass of all elements inside a <head> that can have content. Either between the start and end tag or a (mime) document pointed to by an URL.'!
!WAContentElement categoriesForClass!Seaside-Core-Document-Elements! !
!WAContentElement methodsFor!

charset: aString	self attributeAt: 'charset' put: aString!

contents: aString	self document: aString!

encodeChildrenOn: aDocument 	children isEmptyOrNil ifTrue: [ ^ self ].	children do: [ :each | aDocument nextPutAll: each greaseString ]!

isClosed	^ false!

resourceUrl: aString	self url: (root absoluteUrlForResource: aString)!

type: aMimeTypeOrString	self attributeAt: 'type' put: aMimeTypeOrString!

typeOrNil	^ self attributeAt: 'type' ifAbsent:  [ nil ]!

url: aString	self subclassResponsibility! !
!WAContentElement categoriesFor: #charset:!attributes!public! !
!WAContentElement categoriesFor: #contents:!attributes!public! !
!WAContentElement categoriesFor: #encodeChildrenOn:!printing!public! !
!WAContentElement categoriesFor: #isClosed!public!testing! !
!WAContentElement categoriesFor: #resourceUrl:!attributes!public! !
!WAContentElement categoriesFor: #type:!attributes!public! !
!WAContentElement categoriesFor: #typeOrNil!private! !
!WAContentElement categoriesFor: #url:!attributes!public! !

