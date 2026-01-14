"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAUtf8FileTest
	instanceVariableNames: 'file'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUtf8FileTest guid: (GUID fromString: '{265fd1c1-28f4-4733-ace0-a850b6c886ec}')!

WAUtf8FileTest comment: ''!

!WAUtf8FileTest categoriesForClass!Seaside-Tests-UTF8! !

!WAUtf8FileTest methodsFor!

asString: aCollectionOfIntegers	^ String streamContents: [ :stream |		aCollectionOfIntegers do: [ :each |			stream nextPut: (Character codePoint: each) ] ]!

brokenUnicodeString	^ self asString: #(83 195 169 195 164 115 195 174 100 195 169)!

setUp	file := WAFile new!

testContents	file contents: #(83 195 169 195 164 115 195 174 100 195 169) asByteArray.	self assert: file rawContents = #(83 195 169 195 164 115 195 174 100 195 169) asByteArray.	self assert: (file contentsDecodedUsing: 'ISO-8859-1') = self brokenUnicodeString.	self assert: (file contentsDecodedUsing: 'UTF-8') = self unicodeString!

testContentsDecoded	file contents:  #(83 195 169 195 164 115 195 174 100 195 169) asByteArray.	self should: [ file contentsDecoded ] raise: WAIllegalStateException.	file contentType: 'text/plain'.	self should: [ file contentsDecoded ] raise: WAIllegalStateException.	file contentType: 'text/plain; charset=utf-8' seasideMimeType.	self assert: file contentsDecoded = self unicodeString	!

unicodeString	^ self asString: #(83 233 228 115 238 100 233)! !

!WAUtf8FileTest categoriesForMethods!
asString:!private! !
brokenUnicodeString!private! !
setUp!public!running! !
testContents!public!tests! !
testContentsDecoded!public!tests! !
unicodeString!private! !
!

