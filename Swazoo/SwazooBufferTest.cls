"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #SwazooBufferTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SwazooBufferTest guid: (GUID fromString: '{9f4a1fec-5641-491f-8d12-667e12ea2d48}')!
SwazooBufferTest comment: ''!
!SwazooBufferTest categoriesForClass!Unclassified! !
!SwazooBufferTest methodsFor!

testBoundaryFull
	| boundary buffer |
	boundary := '--boundary--'.
	buffer := SwazooBuffer on: 'just--boundary--something'.  "full boundary"
	self assert: (buffer signsOfBoundary: boundary) = boundary size.!

testBoundaryMixed
	| boundary buffer |
	boundary := '--boundary--'.
	buffer := SwazooBuffer on: 'yes,--just--boundary--something'.  "partial, later full boundary"
	self assert: (buffer signsOfBoundary: boundary) = boundary size.!

testBoundaryOnEdge
	"part of boundary at the end of this buffer, remaining probably in the next"
	| boundary buffer |
	boundary := '--boundary--'.
	buffer := SwazooBuffer on: 'just something-'.  "just first char of boundary"
	self assert: (buffer signsOfBoundary: boundary) = 1.
	buffer := SwazooBuffer on: 'just something--'.  "two chars"
	self assert: (buffer signsOfBoundary: boundary) = 2.
	buffer := SwazooBuffer on: 'just something--bound'.  "half"
	self assert: (buffer signsOfBoundary: boundary) = 7.
	buffer := SwazooBuffer on: 'just something--boundary--'.  "full boundary at the edge"
	self assert: (buffer signsOfBoundary: boundary) = boundary size.!

testBoundaryOnEdgeMixed
	"signs of boundary in the middle part at the end of this buffer, remaining probably in the next"
	| boundary buffer |
	boundary := '--boundary--'.
	buffer := SwazooBuffer on: 'just-something-'.  "sign in the middle, one char at the end"
	self assert: (buffer signsOfBoundary: boundary) = 1.
	buffer := SwazooBuffer on: 'just-something--'.  "two chars"
	self assert: (buffer signsOfBoundary: boundary) = 2.
	buffer := SwazooBuffer on: 'just-so--mething--bound'.  "even more mixed case"
	self assert: (buffer signsOfBoundary: boundary) = 7.!

testBoundarySimple
	| boundary buffer |
	boundary := '--boundary--'.
	buffer := SwazooBuffer on: 'just something'.  "no boundary"
	self assert: (buffer signsOfBoundary: boundary) = 0.
	buffer := SwazooBuffer on: 'just-something'.  "sign of boundary"
	self assert: (buffer signsOfBoundary: boundary) = 0.
	buffer := SwazooBuffer on: 'just--something'.  "more sign of boundary"
	self assert: (buffer signsOfBoundary: boundary) = 0.
	buffer := SwazooBuffer on: 'just--boundary--something'.  "full boundary"
	self assert: (buffer signsOfBoundary: boundary) = boundary size.!

testIndexOfBoundary
	"index of start of boundary in buffer, both full or partial at the edge/end of buffer"
	| boundary buffer |
	boundary := '--boundary--'.
	buffer := SwazooBuffer on: 'just something'.  "no boundary"
	self assert: (buffer indexOfBoundary: boundary) = 0.
	buffer := SwazooBuffer on: 'just--boundary--something-'.  "full boundary"
	self assert: (buffer indexOfBoundary: boundary) = 5.
	buffer := SwazooBuffer on: 'just something--boun'.  "partial boundary at the edge"
	self assert: (buffer indexOfBoundary: boundary) = 15.
	buffer := SwazooBuffer on: 'just something-'.  "partial boundary, one char only"
	self assert: (buffer indexOfBoundary: boundary) = 15.
	buffer := SwazooBuffer on: 'just-som--ething--boun'.  "mixed case with partial at the edge"
	self assert: (buffer indexOfBoundary: boundary) = 17.! !
!SwazooBufferTest categoriesFor: #testBoundaryFull!public!testing-mime boundary! !
!SwazooBufferTest categoriesFor: #testBoundaryMixed!public!testing-mime boundary! !
!SwazooBufferTest categoriesFor: #testBoundaryOnEdge!public!testing-mime boundary! !
!SwazooBufferTest categoriesFor: #testBoundaryOnEdgeMixed!public!testing-mime boundary! !
!SwazooBufferTest categoriesFor: #testBoundarySimple!public!testing-mime boundary! !
!SwazooBufferTest categoriesFor: #testIndexOfBoundary!public!testing-mime boundary! !

