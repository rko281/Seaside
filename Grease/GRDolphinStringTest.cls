"Filed out from Dolphin Smalltalk 7"!

GRStringTest subclass: #GRDolphinStringTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRDolphinStringTest guid: (GUID fromString: '{a383d99e-b6f2-4309-966a-8a84eedc6545}')!
GRDolphinStringTest comment: ''!
!GRDolphinStringTest categoriesForClass!Grease-Tests-Core! !
!GRDolphinStringTest methodsFor!

testSubStrings

	"Use greaseSubStrings: since Dolphin subStrings: differs from ANSI"
	"#subStrings: is defined by ANSI 5.7.10.15:	Answer an array containing the substrings in the receiver separated by the elements of separators."	| mimeType tokens |	mimeType := 'application/xhtml+xml'.	tokens := mimeType subStrings: '/'.	self assert: tokens size = 2.	self assert: tokens first = 'application'.	self assert: tokens second = 'xhtml+xml'.		"ANSI is a bit unclear on how multiple sequential delimiters should be treated.	Make sure behaviour is consistent for several delimiters in a row (taken from	Squeak's behaviour)"	tokens := 'abc,.def.ghi' greaseSubStrings: '.,'.	self assert: tokens size = 3.	self assert: tokens first = 'abc'.	self assert: tokens second = 'def'.	self assert: tokens third = 'ghi'.	"also ensure behavior consistent for several delimiters in a row at beginning and end of string...for completeness"	tokens := ',.abc,.def.ghi.,' greaseSubStrings: '.,'.	self assert: tokens size = 3.	self assert: tokens first = 'abc'.	self assert: tokens second = 'def'.	self assert: tokens third = 'ghi'! !
!GRDolphinStringTest categoriesFor: #testSubStrings!public!tests! !

!GRDolphinStringTest class methodsFor!

allTestSelectors

	^self subStringsTestSelectors!

testSelectors

	^self subStringsTestSelectors! !
!GRDolphinStringTest class categoriesFor: #allTestSelectors!public! !
!GRDolphinStringTest class categoriesFor: #testSelectors!public! !

