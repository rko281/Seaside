﻿"Filed out from Dolphin Smalltalk 7"!

GRSmallDictionary subclass: #WAHtmlAttributes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHtmlAttributes guid: (GUID fromString: '{c7c0fea6-5829-4559-9d85-7a0cd7093437}')!
WAHtmlAttributes comment: 'I represent the attributes of a (X)(HT)ML tag. Compared to my superclass I ignore requests to add a nil-values. I also don''t throw an exception when accessing a key that doesn''t exist, but instead return nil.'!
!WAHtmlAttributes categoriesForClass!Seaside-Core-Document! !
!WAHtmlAttributes methodsFor!

addClass: aString

addMedia: aString

addStyle: aString

at: aKey append: aValue

at: aKey append: aValue separator: aSeparator 

encodeOn: aDocument

errorKeyNotFound

privateAt: aKey put: aValue
!WAHtmlAttributes categoriesFor: #addClass:!convenience!public! !
!WAHtmlAttributes categoriesFor: #addMedia:!convenience!public! !
!WAHtmlAttributes categoriesFor: #addStyle:!convenience!public! !
!WAHtmlAttributes categoriesFor: #at:append:!accessing!public! !
!WAHtmlAttributes categoriesFor: #at:append:separator:!accessing!public! !
!WAHtmlAttributes categoriesFor: #encodeOn:!encoding!public! !
!WAHtmlAttributes categoriesFor: #errorKeyNotFound!private! !
!WAHtmlAttributes categoriesFor: #privateAt:put:!private! !
