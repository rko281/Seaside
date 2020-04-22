"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAUrlDecodingFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUrlDecodingFunctionalTest guid: (GUID fromString: '{4b4512cb-20e5-45cf-aee4-9fccde98e0eb}')!
WAUrlDecodingFunctionalTest comment: ''!
!WAUrlDecodingFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WAUrlDecodingFunctionalTest methodsFor!

renderContentOn: html	| url anchor |	self renderExplanationOn: html.	url := self requestContext request url.	anchor := html anchor.	anchor url rawAddToPath: self testPath.	anchor		callback: [ self runTest ];		with: 'Run Test'!

renderExplanationOn: html	html paragraph: 'This tests whether url encoding works. Just click on "Run Test"'.!

runTest	| success |	success := self requestContext request url path last = self testPath.	success		ifTrue: [ self inform: 'Success!!' onAnswer: [ "ignore" ] ]		ifFalse: [ self inform: 'Failed!!' onAnswer: [ "ignore" ] ].!

testPath	"answers 'tests/functional/WAUrlDecodingFunctionalTest'"	| url path |	url := self requestContext request url.	"this method is also called in #runTest where the path is already added, we don't want this"	path := url path first: (self application url path size + 1).	^ String streamContents: [ :stream |		path			do: [ :each  | stream nextPutAll: each ]			 separatedBy: [ stream nextPut: $/ ] ]! !
!WAUrlDecodingFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WAUrlDecodingFunctionalTest categoriesFor: #renderExplanationOn:!public!rendering! !
!WAUrlDecodingFunctionalTest categoriesFor: #runTest!actions!public! !
!WAUrlDecodingFunctionalTest categoriesFor: #testPath!private! !

