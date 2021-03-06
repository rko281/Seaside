﻿"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAConcatenatedHtmlAttributeValue
	instanceVariableNames: 'values separator'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAConcatenatedHtmlAttributeValue guid: (GUID fromString: '{53b1333d-fbe3-4c20-b7f5-3ff5f99d2dc8}')!
WAConcatenatedHtmlAttributeValue comment: 'I am used to represent html attribute values that can be sent separately to a brush but eventually need to be printed as a single attribute string. I was introduced to optimize html rendering where String concatentation is slow. See https://github.com/seasidest/seaside/issues/816E.g. in the following code, multiple values for ''class'' are sent to the anchor brush and they are eventually concatenated in the outputhtml anchor   class: ''mycss-strong'';   class: ''mycss-bold'';   class: ''mycss-alignright'';   with: ''some text'''!
!WAConcatenatedHtmlAttributeValue categoriesForClass!Seaside-Core-Document! !
!WAConcatenatedHtmlAttributeValue methodsFor!

addValue: anObject	values add: anObject!

encodeOn: aDocument 	values		do: [ :each | aDocument print: each ]		separatedBy: [ aDocument print: separator ]!

initializeWithSeparator: aSeparator value: anFirstObject value: aSecondObject	self initialize.	separator := aSeparator.	values := OrderedCollection new: 4.	values add: anFirstObject.	values add: aSecondObject!

isConcatenatedHtmlAttributeValue	^ true! !
!WAConcatenatedHtmlAttributeValue categoriesFor: #addValue:!public! !
!WAConcatenatedHtmlAttributeValue categoriesFor: #encodeOn:!printing!public! !
!WAConcatenatedHtmlAttributeValue categoriesFor: #initializeWithSeparator:value:value:!initialization!public! !
!WAConcatenatedHtmlAttributeValue categoriesFor: #isConcatenatedHtmlAttributeValue!public!testing! !

!WAConcatenatedHtmlAttributeValue class methodsFor!

separator: aSeparator value: anFirstObject value: aSecondObject	^ self basicNew initializeWithSeparator: aSeparator value: anFirstObject value: aSecondObject! !
!WAConcatenatedHtmlAttributeValue class categoriesFor: #separator:value:value:!instance creation!public! !

