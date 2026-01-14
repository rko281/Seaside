"Filed out from Dolphin Smalltalk"!

WAHtmlElement subclass: #WAContentElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAContentElement guid: (GUID fromString: '{d4cc23ba-d920-4f29-901c-2f4cc560a787}')!

WAContentElement comment: 'Common superclass of all elements inside a <head> that can have content. Either between the start and end tag or a (mime) document pointed to by an URL.'!

!WAContentElement categoriesForClass!Seaside-Core-Document-Elements! !

!WAContentElement methodsFor!

charset: aString	self		greaseDeprecatedApi: 'WAContentElement>>charset:'		details: 'Use an HTTP Content-Type header on the linked resource instead. https://www.geeksforgeeks.org/what-are-the-html-tags-that-deprecated-in-html5/'.		self attributeAt: 'charset' put: aString!

contents: aString	self document: aString!

encodeChildrenOn: aDocument 	children isEmptyOrNil ifTrue: [ ^ self ].	children do: [ :each | aDocument nextPutAll: each greaseString ]!

isClosed	^ false!

resourceUrl: aString	self url: (root absoluteUrlForResource: aString)!

type: aMimeTypeOrString	self attributeAt: 'type' put: aMimeTypeOrString!

typeOrNil	^ self attributeAt: 'type' ifAbsent:  [ nil ]!

url: aString	self subclassResponsibility! !

!WAContentElement categoriesForMethods!
charset:!attributes!public! !
contents:!attributes!public! !
encodeChildrenOn:!printing!public! !
isClosed!public!testing! !
resourceUrl:!attributes!public! !
type:!attributes!public! !
typeOrNil!private! !
url:!attributes!public! !
!

