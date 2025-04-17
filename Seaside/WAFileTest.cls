"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAFileTest
	instanceVariableNames: 'file'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFileTest guid: (GUID fromString: '{73740498-5b45-44c1-bf41-1b3f60a3fa4d}')!

WAFileTest comment: ''!

!WAFileTest categoriesForClass!HTTP! !

!WAFileTest methodsFor!

setUp	file := WAFile new!

testBorderline	file fileName: 'C'.	self assert: file fileName = 'C'.	file fileName: 'C:'.	self assert: file fileName = 'C:'.	file fileName: 'C:\'.	self assert: file fileName = ''!

testContents	file contents: #(83 101 97 115 105 100 101) asByteArray.	self assert: file rawContents = #(83 101 97 115 105 100 101) asByteArray.	self assert: (file contentsDecodedUsing: 'ISO-8859-1') = 'Seaside'!

testContentsDecoded	file contents: #(83 101 97 115 105 100 101) asByteArray.	self should: [ file contentsDecoded ] raise: WAIllegalStateException.	file contentType: 'text/plain'.	self should: [ file contentsDecoded ] raise: WAIllegalStateException.	file contentType: 'text/plain; charset=iso-8859-1' seasideMimeType.	self assert: file contentsDecoded = 'Seaside'!

testContentType	file contentType: 'text/plain'.	self assert: file contentType = 'text/plain' seasideMimeType.		file contentType: 'text/plain' seasideMimeType.	self assert: file contentType = 'text/plain' seasideMimeType.	file contentType: nil.	self assert: file contentType isNil!

testNonLatinWindowsPath	| koreanName |	"If the following assertion fails, your Smalltalk dialect most probably does not support non-latin characters. This is true for Squeak 3.7. If your Smalltalk dialect does support non-latin characters adjust the test."	self shouldnt:  [		koreanName := (String			with: (Character codePoint: 50976)			with: (Character codePoint: 47532)			with: (Character codePoint: 47484)), '.txt' ]		raise: Error.	file fileName: koreanName.	self assert: file fileName = koreanName.	file fileName: 'C:\important\', koreanName.	self assert: file fileName = koreanName!

testWindowsPath	file fileName: 'C:\important\passwords.txt'.	self assert: file fileName = 'passwords.txt'.	file fileName: '/important/passwords.txt'.	self assert: file fileName = '/important/passwords.txt'.	file fileName: 'passwords.txt'.	self assert: file fileName = 'passwords.txt'! !

!WAFileTest categoriesForMethods!
setUp!public!running! !
testBorderline!public!tests! !
testContents!public!tests! !
testContentsDecoded!public!tests! !
testContentType!public!tests! !
testNonLatinWindowsPath!public!tests! !
testWindowsPath!public!tests! !
!

