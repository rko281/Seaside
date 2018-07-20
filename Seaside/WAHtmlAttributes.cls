"Filed out from Dolphin Smalltalk 7"!

GRSmallDictionary subclass: #WAHtmlAttributes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHtmlAttributes guid: (GUID fromString: '{c7c0fea6-5829-4559-9d85-7a0cd7093437}')!
WAHtmlAttributes comment: 'I represent the attributes of a (X)(HT)ML tag. Compared to my superclass I ignore requests to add a nil-values. I also don''t throw an exception when accessing a key that doesn''t exist, but instead return nil.'!
!WAHtmlAttributes categoriesForClass!Seaside-Core-Document! !
!WAHtmlAttributes methodsFor!

addClass: aString	"Add an additional CSS class aString to the receiver."	self at: 'class' append: aString separator: Character space!

addMedia: aString	"Add an additional intended destination medium aString to the receiver."	self at: 'media' append: aString separator: ', '!

addStyle: aString	"Add an additional CSS style definition aString to the receiver."	self at: 'style' append: aString separator: $;!

at: aKey append: aValue	"Append aValue to the attribute aKey. If already present, concatenate it with a space. Ignore the request if aValue is nil."	self at: aKey append: aValue separator: Character space!

at: aKey append: aValue separator: aSeparator 	"Append aValue to the attribute aKey. If already present, concatenate it with aString. Ignore the request if aValue is nil.	https://code.google.com/p/seaside/issues/detail?id=816	we have to be frugal with allocation"		aValue isNil ifFalse: [		| current |		current := self at: aKey ifAbsentPut: [ aValue ].		current ~~ aValue ifTrue: [			"we couldn't store a value because there was already one"			current isConcatenatedHtmlAttributeValue				ifTrue: [ current addValue: aValue ]				ifFalse: [ self at: aKey put: (WAConcatenatedHtmlAttributeValue separator: aSeparator value: current value: aValue) ] ] ]!

encodeOn: aDocument	"Encode the receivers attribute onto aDocument. Note that this implementation reqires those two checks for true and false exactly the way they are here, to reliable encode boolean attributes in an XHTML compliant way."	self keysAndValuesDo: [ :key :value |		value == false ifFalse: [			aDocument nextPut: Character space; nextPutAll: key; nextPutAll: '="'.			value == true				ifTrue: [ aDocument nextPutAll: key ]				ifFalse: [ aDocument print: value ].			aDocument nextPut: $" ] ]!

errorKeyNotFound	^ nil!

privateAt: aKey put: aValue	aValue ifNil: [ ^ nil ].	^ super privateAt: aKey put: aValue! !
!WAHtmlAttributes categoriesFor: #addClass:!convenience!public! !
!WAHtmlAttributes categoriesFor: #addMedia:!convenience!public! !
!WAHtmlAttributes categoriesFor: #addStyle:!convenience!public! !
!WAHtmlAttributes categoriesFor: #at:append:!accessing!public! !
!WAHtmlAttributes categoriesFor: #at:append:separator:!accessing!public! !
!WAHtmlAttributes categoriesFor: #encodeOn:!encoding!public! !
!WAHtmlAttributes categoriesFor: #errorKeyNotFound!private! !
!WAHtmlAttributes categoriesFor: #privateAt:put:!private! !

