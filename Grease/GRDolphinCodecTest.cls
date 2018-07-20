"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #GRDolphinCodecTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRDolphinCodecTest guid: (GUID fromString: '{297b0823-6b50-45ca-8416-a61a666f31d1}')!
GRDolphinCodecTest comment: ''!
!GRDolphinCodecTest categoriesForClass!Unclassified! !
!GRDolphinCodecTest methodsFor!

testAllCodesIncludesIso88591
	self assert: (GRCodec allCodecs anySatisfy: [ :each |
		each name = 'iso-8859-1' ])! !
!GRDolphinCodecTest categoriesFor: #testAllCodesIncludesIso88591!public!testing! !

