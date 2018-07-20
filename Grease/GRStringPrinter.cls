"Filed out from Dolphin Smalltalk 7"!

GRPrinter subclass: #GRStringPrinter
	instanceVariableNames: 'trim length pad character'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRStringPrinter guid: (GUID fromString: '{5ea2531b-5f0a-4528-aedb-1d01da09e450}')!
GRStringPrinter comment: ''!
!GRStringPrinter categoriesForClass!Grease-Core-Text! !
!GRStringPrinter methodsFor!

character: aCharacter	"The character to pad the string with."		character := aCharacter!

initialize	super initialize.	self character: $ ; length: nil.	self trimNone; padNone!

length: anInteger	"The maximal size of the string, or the size to pad to."	length := anInteger!

padCenter	"Pad to the center."		pad := #pad:center:to:!

padLeft	"Pad to the left."		pad := #pad:left:to:!

padNone	"Do not pad the input."		pad := nil!

padRight	"Pad to the right."		pad := #pad:right:to:!

print: anObject on: aStream 	| string |	string := anObject greaseString.	trim isNil		ifFalse: [ string := string perform: trim ].	length isNil ifFalse: [		length < string size 			ifTrue: [ string := string copyFrom: 1to: length ].		(pad isNil or: [ character isNil ])			ifFalse: [ string := self perform: pad with: string with: character with: length ] ].	aStream nextPutAll: string!

trimBoth	"Trim to the left and to the right."	trim := #trimBoth!

trimLeft	"Trim to the left and to the right."	trim := #trimLeft!

trimNone	"Do not trim the input."	trim := nil!

trimRight	"Trim to the left and to the right."	trim := #trimRight! !
!GRStringPrinter categoriesFor: #character:!accessing!public! !
!GRStringPrinter categoriesFor: #initialize!initialization!public! !
!GRStringPrinter categoriesFor: #length:!accessing!public! !
!GRStringPrinter categoriesFor: #padCenter!padding!public! !
!GRStringPrinter categoriesFor: #padLeft!padding!public! !
!GRStringPrinter categoriesFor: #padNone!padding!public! !
!GRStringPrinter categoriesFor: #padRight!padding!public! !
!GRStringPrinter categoriesFor: #print:on:!printing!public! !
!GRStringPrinter categoriesFor: #trimBoth!public!trimming! !
!GRStringPrinter categoriesFor: #trimLeft!public!trimming! !
!GRStringPrinter categoriesFor: #trimNone!public!trimming! !
!GRStringPrinter categoriesFor: #trimRight!public!trimming! !

