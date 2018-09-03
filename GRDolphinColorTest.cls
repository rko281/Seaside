"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #GRDolphinColorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRDolphinColorTest guid: (GUID fromString: '{0aefe2cb-4b37-49da-9acb-767763b9f3db}')!
GRDolphinColorTest comment: ''!
!GRDolphinColorTest categoriesForClass!Unclassified! !
!GRDolphinColorTest methodsFor!

expectedFailures
	^#( testFromStringThreeDigit )!

testAllColors
	| toTest |
	toTest := #(
		16r000000 16r000001 16r000101 16r010101 16r010100 16r010000 16r001001 16r101001
		16r001122 16r334455 16r667788 16r99AABB 16rCCDDEE 16rFF0011
		16r123456 16r789ABC 16rDEFEDC
		16rFEFEEF 16rFEFEFF 16rFEFEFE 16rFFFEFE 16rFFFFFE 16rFFFFFF).
	toTest do: [:int | 
		| hex |
		hex := int printPaddedWith: $0 to: 6 base: 16.
		self assert: (Color fromString: hex) asHTMLColor asLowercase = ('#', hex) asLowercase ]!

testColorAsHtmlColor
	"test for:
	Color >> #hex
	| aStream |
	aStream := (String new: 6) writeStream.
	aStream nextPutAll: (((self red * 255) asInteger printStringBase: 16)
		padded: #left to: 2 with: $0).
	aStream nextPutAll: (((self green * 255) asInteger printStringBase: 16)
		padded: #left to: 2 with: $0).
	aStream nextPutAll: (((self blue * 255) asInteger printStringBase: 16)
		padded: #left to: 2 with: $0).
	^ aStream contents

	Color >> #asHTMLColor
	^ '#', self hex"
	self assert: (#('#ffffff' '#FFFFFF' ) includes: Color white asHTMLColor).
	self assert: (Color black asHTMLColor = '#000000').
	self assert: (#('#ff0000' '#FF0000' ) includes: Color red asHTMLColor)!

testFromSixDigit
	self assert: (Color fromString: 'ff0000') = Color red asRGB.
	self assert: (Color fromString: 'FF0000') = Color red asRGB.
	self assert: (Color fromString: '#ff0000') = Color red asRGB.
	self assert: (Color fromString: '#FF0000') = Color red asRGB
!

testFromStringName
	self assert: (Color fromString: 'red') = Color red asRGB.
	self assert: (Color fromString: 'RED') = Color red asRGB.
	self assert: (Color fromString: '#red') = Color red asRGB.
	self assert: (Color fromString: '#RED') = Color red asRGB.
!

testFromStringSixDigit
	self assert: (Color fromString: 'ff0000') = Color red asRGB.
	self assert: (Color fromString: 'FF0000') = Color red asRGB.
	self assert: (Color fromString: '#ff0000') = Color red asRGB.
	self assert: (Color fromString: '#FF0000') = Color red asRGB
!

testFromStringThreeDigit
	self assert: (Color fromString: 'f00') = Color red asRGB.
	self assert: (Color fromString: 'F00') = Color red asRGB.
	self assert: (Color fromString: '#f00') = Color red asRGB.
	self assert: (Color fromString: '#F00') = Color red asRGB.! !
!GRDolphinColorTest categoriesFor: #expectedFailures!public!testing! !
!GRDolphinColorTest categoriesFor: #testAllColors!public!testing! !
!GRDolphinColorTest categoriesFor: #testColorAsHtmlColor!public!testing! !
!GRDolphinColorTest categoriesFor: #testFromSixDigit!public!testing! !
!GRDolphinColorTest categoriesFor: #testFromStringName!public!testing! !
!GRDolphinColorTest categoriesFor: #testFromStringSixDigit!public!testing! !
!GRDolphinColorTest categoriesFor: #testFromStringThreeDigit!public!testing! !

