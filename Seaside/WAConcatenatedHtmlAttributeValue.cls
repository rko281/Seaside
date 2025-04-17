"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAConcatenatedHtmlAttributeValue
	instanceVariableNames: 'values separator'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAConcatenatedHtmlAttributeValue guid: (GUID fromString: '{b808c2a7-2584-4a23-8ffb-db3790a7732c}')!

WAConcatenatedHtmlAttributeValue comment: 'I am used to represent html attribute values that can be sent separately to a brush but eventually need to be printed as a single attribute string. I was introduced to optimize html rendering where String concatentation is slow. See https://github.com/seasidest/seaside/issues/816E.g. in the following code, multiple values for ''class'' are sent to the anchor brush and they are eventually concatenated in the outputhtml anchor   class: ''mycss-strong'';   class: ''mycss-bold'';   class: ''mycss-alignright'';   with: ''some text'''!

!WAConcatenatedHtmlAttributeValue categoriesForClass!Document! !

!WAConcatenatedHtmlAttributeValue methodsFor!

addValue: anObject	values add: anObject!

encodeOn: aDocument 	values		do: [ :each | aDocument print: each ]		separatedBy: [ aDocument print: separator ]!

initializeWithSeparator: aSeparator value: anFirstObject value: aSecondObject	self initialize.	separator := aSeparator.	values := OrderedCollection new: 4.	values add: anFirstObject.	values add: aSecondObject!

isConcatenatedHtmlAttributeValue	^ true! !

!WAConcatenatedHtmlAttributeValue categoriesForMethods!
addValue:!public! !
encodeOn:!printing!public! !
initializeWithSeparator:value:value:!initialization!public! !
isConcatenatedHtmlAttributeValue!public!testing! !
!

!WAConcatenatedHtmlAttributeValue class methodsFor!

separator: aSeparator value: anFirstObject value: aSecondObject	^ self basicNew initializeWithSeparator: aSeparator value: anFirstObject value: aSecondObject! !

!WAConcatenatedHtmlAttributeValue class categoriesForMethods!
separator:value:value:!instance creation!public! !
!

