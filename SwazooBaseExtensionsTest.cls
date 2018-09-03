"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #SwazooBaseExtensionsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SwazooBaseExtensionsTest guid: (GUID fromString: '{a481d3b7-ec6c-4d22-b6e3-9583cb3150a2}')!
SwazooBaseExtensionsTest comment: ''!
!SwazooBaseExtensionsTest categoriesForClass!Unclassified! !
!SwazooBaseExtensionsTest methodsFor!

testCharacterArrayTrimBlanks
	self 
		assert: (HTTPString trimBlanksFrom: '   a b c d e f g') = 'a b c d e f g'.
	self assert: (HTTPString trimBlanksFrom: 'no blanks') = 'no blanks'.
	self assert: (HTTPString trimBlanksFrom: ' leading') = 'leading'.
	self assert: (HTTPString trimBlanksFrom: 'trailing ') = 'trailing'.
	self assert: (HTTPString trimBlanksFrom: '') = ''.
	self 
		assert: (HTTPString 
				trimBlanksFrom: (String with: Character cr with: Character lf)) isEmpty!

testFilenameEtag
	"The filename etag is a simple string and does not contain double quotes.  Header fields apply double quotes as necessary when writing themselves."

	| fn etag1 etag2 |
	fn := SpFilename named: 'etagTest'.
	[fn writeStream nextPut: $-; close. "create file"
	etag1 := fn etag.
	(Delay forSeconds: 1) wait.
	fn appendStream nextPut: $-; close. "modify file"
	etag2 := fn etag.

	self assert: (etag1 isKindOf: String).
	self assert: (etag2 isKindOf: String).
	self deny: etag1 = etag2] 
		ensure: [fn delete]!

testStringNewRandom
	| sizes strings |
	sizes := #(5 20 6127 2 100).
	strings := sizes collect: [:each |  HTTPString newRandomString: each].
	strings with: sizes do: [:string :size | self assert: string size = size]! !
!SwazooBaseExtensionsTest categoriesFor: #testCharacterArrayTrimBlanks!public!testing! !
!SwazooBaseExtensionsTest categoriesFor: #testFilenameEtag!public!testing! !
!SwazooBaseExtensionsTest categoriesFor: #testStringNewRandom!public!testing! !

