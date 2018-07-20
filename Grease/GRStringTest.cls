"Filed out from Dolphin Smalltalk 7"!

GRAbstractSequenceableCollectionTest subclass: #GRStringTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRStringTest guid: (GUID fromString: '{07251476-7b81-45b1-b9a4-0a1674caf433}')!
GRStringTest comment: ''!
!GRStringTest categoriesForClass!Grease-Tests-Core! !
!GRStringTest methodsFor!

allowsDuplicateValues	^ true!

arbitraryCollection	^ 'fadbbc' copy   "String literals are immutable"!

collectionClass	^ String!

duplicateElement	^ $b!

excludedElement	^ $Q!

includedElement	^ $d!

isExtensible	^ false!

isHomogeneous	^ true!

isInitializable	^ true!

isSequenced	^ true!

isUnique	^ false!

testAsUppercase	self assert: 'abc' asUppercase = 'ABC'.	self assert: 'ABC' asUppercase = 'ABC'!

testCapitalized	self assert: 'capitalized' capitalized = 'Capitalized'.	self assert: 'Capitalized' capitalized = 'Capitalized'.	self assert: 'CAPITALIZED' capitalized = 'CAPITALIZED'.	self assert: #'capitalized' capitalized = #'Capitalized'.	self assert: #'Capitalized' capitalized = #'Capitalized'.	self assert: #'CAPITALIZED' capitalized = #'CAPITALIZED'!

testCapitalizedUmlauts	self assert: 'äöü' capitalized = 'Äöü'.	self assert: 'Äöü' capitalized = 'Äöü'.	self assert: 'ÄÖÜ' capitalized = 'ÄÖÜ'.	self assert: #'äöü' capitalized = #'Äöü'.	self assert: #'Äöü' capitalized = #'Äöü'.	self assert: #'ÄÖÜ' capitalized = #'ÄÖÜ'!

testExcerpt	self assert: ('abcde' excerpt: 'c' radius: 0) = '...c...'.	self assert: ('abcde' excerpt: 'c' radius: 1) = '...bcd...'.	self assert: ('abcde' excerpt: 'c' radius: 2) = 'abcde'.	self assert: ('abcde' excerpt: 'c' radius: 3) = 'abcde'.		self assert: ('abcde' excerpt: 'c' radius: 0 ellipsis: 'x') = 'xcx'.	self assert: ('abcde' excerpt: 'c' radius: 1 ellipsis: 'x') = 'xbcdx'.	self assert: ('abcde' excerpt: 'c' radius: 2 ellipsis: 'x') = 'abcde'!

testExcerptEmpty	self assert: ('' excerpt: '') isNil.	self assert: ('' excerpt: 'x') isNil.	self assert: ('x' excerpt: '') isNil!

testExcerptLeft	self assert: ('abcde' excerpt: 'd' radius: 0 ellipsis: 'x') = 'xdx'.	self assert: ('abcde' excerpt: 'd' radius: 1 ellipsis: 'x') = 'xcde'.	self assert: ('abcde' excerpt: 'd' radius: 2 ellipsis: 'x') = 'xbcde'.	self assert: ('abcde' excerpt: 'd' radius: 3 ellipsis: 'x') = 'abcde'!

testExcerptRight	self assert: ('abcde' excerpt: 'b' radius: 0 ellipsis: 'x') = 'xbx'.	self assert: ('abcde' excerpt: 'b' radius: 1 ellipsis: 'x') = 'abcx'.	self assert: ('abcde' excerpt: 'b' radius: 2 ellipsis: 'x') = 'abcdx'.	self assert: ('abcde' excerpt: 'b' radius: 3 ellipsis: 'x') = 'abcde'!

testInflectorAssimilated	self assert: 'vertice' pluralize = 'vertices'.	self assert: 'index' pluralize = 'indices'!

testInflectorCommonSuffixes	self assert: 'mouse' pluralize = 'mice'.	self assert: 'synopse' pluralize = 'synopses'.	self assert: 'man' pluralize = 'men'!

testInflectorFfffSuffixes	self assert: 'life' pluralize = 'lives'.	self assert: 'wolf' pluralize = 'wolves'!

testInflectorIrregular	self assert: 'genie' pluralize = 'genies'.	self assert: 'ox' pluralize = 'oxen'.	self assert: 'cow' pluralize = 'kine'.	self assert: 'child' pluralize = 'children'.	self assert: 'woman' pluralize = 'women'!

testInflectorNotInflecting	self assert: 'fish' pluralize = 'fish'.	self assert: 'travois' pluralize = 'travois'.	self assert: 'chassis' pluralize = 'chassis'.	self assert: 'nationalities' pluralize = 'nationalities'!

testInflectorTsssSuffixes	self assert: 'church' pluralize = 'churches'.	self assert: 'class' pluralize = 'classes'!

testInflectorYyyySuffixes	self assert: 'story' pluralize = 'stories'.	self assert: 'lady' pluralize = 'ladies'.	self assert: 'stay' pluralize = 'stays'!

testSubStrings	"#subStrings: is defined by ANSI 5.7.10.15:	Answer an array containing the substrings in the receiver separated by the elements of separators."	| mimeType tokens |	mimeType := 'application/xhtml+xml'.	tokens := mimeType subStrings: '/'.	self assert: tokens size = 2.	self assert: tokens first = 'application'.	self assert: tokens second = 'xhtml+xml'.		"ANSI is a bit unclear on how multiple sequential delimiters should be treated.	Make sure behaviour is consistent for several delimiters in a row (taken from	Squeak's behaviour)"	tokens := 'abc,.def.ghi' subStrings: '.,'.	self assert: tokens size = 3.	self assert: tokens first = 'abc'.	self assert: tokens second = 'def'.	self assert: tokens third = 'ghi'.	"also ensure behavior consistent for several delimiters in a row at beginning and end of string...for completeness"	tokens := ',.abc,.def.ghi.,' subStrings: '.,'.	self assert: tokens size = 3.	self assert: tokens first = 'abc'.	self assert: tokens second = 'def'.	self assert: tokens third = 'ghi'!

testTrimBoth	self assert: '' trimBoth = ''.	self assert: ' ' trimBoth = ''.	self assert: '	' trimBoth = ''.	self assert: 'foo' trimBoth = 'foo'.	self assert: ' foo ' trimBoth = 'foo'.	self assert: '  foo  ' trimBoth = 'foo'.	self assert: ((String with: Character cr), '   foo  ') trimBoth = 'foo'.		self assert: ('aabbaa' trimBoth: [ :each | each = $a ]) = 'bb'.	self assert: ('bbaabb' trimBoth: [ :each | each = $a ]) = 'bbaabb'!

testTrimLeft	self assert: '' trimLeft = ''.	self assert: ' ' trimLeft = ''.	self assert: '	' trimLeft = ''.	self assert: 'foo' trimLeft = 'foo'.	self assert: ' foo ' trimLeft = 'foo '.	self assert: '  foo  ' trimLeft = 'foo  '.		self assert: ('aabbaa' trimLeft: [ :each | each = $a ]) = 'bbaa'.	self assert: ('bbaabb' trimLeft: [ :each | each = $a ]) = 'bbaabb'!

testTrimRight	self assert: '' trimRight = ''.	self assert: ' ' trimRight = ''.	self assert: '	' trimRight = ''.	self assert: 'foo' trimRight = 'foo'.	self assert: ' foo ' trimRight = ' foo'.	self assert: '  foo  ' trimRight = '  foo'.		self assert: ('aabbaa' trimRight: [ :each | each = $a ]) = 'aabb'.	self assert: ('bbaabb' trimRight: [ :each | each = $a ]) = 'bbaabb'!

testTruncate	self assert: ('abc' truncate) = 'abc'.	self assert: ('abc' truncate: 3) = 'abc'.	self assert: ('abc' truncate: 2) = 'ab...'.		self assert: ('abc' truncate: 1 ellipsis: '') = 'a'.	self assert: ('abc' truncate: 0 ellipsis: 'none') = 'none'!

testTruncateEmpty	self assert: '' truncate = ''! !
!GRStringTest categoriesFor: #allowsDuplicateValues!configuration!public! !
!GRStringTest categoriesFor: #arbitraryCollection!configuration!public! !
!GRStringTest categoriesFor: #collectionClass!configuration!public! !
!GRStringTest categoriesFor: #duplicateElement!configuration!public! !
!GRStringTest categoriesFor: #excludedElement!configuration!public! !
!GRStringTest categoriesFor: #includedElement!configuration!public! !
!GRStringTest categoriesFor: #isExtensible!public!testing/ansi! !
!GRStringTest categoriesFor: #isHomogeneous!public!testing! !
!GRStringTest categoriesFor: #isInitializable!public!testing/ansi! !
!GRStringTest categoriesFor: #isSequenced!public!testing/ansi! !
!GRStringTest categoriesFor: #isUnique!public!testing! !
!GRStringTest categoriesFor: #testAsUppercase!public!tests/converting! !
!GRStringTest categoriesFor: #testCapitalized!public!tests/converting! !
!GRStringTest categoriesFor: #testCapitalizedUmlauts!public!tests/converting! !
!GRStringTest categoriesFor: #testExcerpt!public!tests/excerpt! !
!GRStringTest categoriesFor: #testExcerptEmpty!public!tests/excerpt! !
!GRStringTest categoriesFor: #testExcerptLeft!public!tests/excerpt! !
!GRStringTest categoriesFor: #testExcerptRight!public!tests/excerpt! !
!GRStringTest categoriesFor: #testInflectorAssimilated!public!tests/pluralize! !
!GRStringTest categoriesFor: #testInflectorCommonSuffixes!public!tests/pluralize! !
!GRStringTest categoriesFor: #testInflectorFfffSuffixes!public!tests/pluralize! !
!GRStringTest categoriesFor: #testInflectorIrregular!public!tests/pluralize! !
!GRStringTest categoriesFor: #testInflectorNotInflecting!public!tests/pluralize! !
!GRStringTest categoriesFor: #testInflectorTsssSuffixes!public!tests/pluralize! !
!GRStringTest categoriesFor: #testInflectorYyyySuffixes!public!tests/pluralize! !
!GRStringTest categoriesFor: #testSubStrings!public!tests! !
!GRStringTest categoriesFor: #testTrimBoth!public!tests/trim! !
!GRStringTest categoriesFor: #testTrimLeft!public!tests/trim! !
!GRStringTest categoriesFor: #testTrimRight!public!tests/trim! !
!GRStringTest categoriesFor: #testTruncate!public!tests/truncate! !
!GRStringTest categoriesFor: #testTruncateEmpty!public!tests/truncate! !

