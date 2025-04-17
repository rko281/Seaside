"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAUrlDecodingFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUrlDecodingFunctionalTest guid: (GUID fromString: '{f6ccf938-6016-461c-b619-a4088a544b15}')!

WAUrlDecodingFunctionalTest comment: ''!

!WAUrlDecodingFunctionalTest categoriesForClass!Unclassified! !

!WAUrlDecodingFunctionalTest methodsFor!

renderContentOn: html	| anchor |	self renderExplanationOn: html.	anchor := html anchor.	anchor url rawAddToPath: self testPath.	anchor		callback: [ self runTest ];		with: 'Run Test'!

renderExplanationOn: html	html paragraph: 'This tests whether url encoding works. Just click on "Run Test"'.!

runTest	| success |	success := self requestContext request url path last = self testPath.	success		ifTrue: [ self inform: 'Success!!' onAnswer: [ "ignore" ] ]		ifFalse: [ self inform: 'Failed!!' onAnswer: [ "ignore" ] ].!

testPath	"answers 'tests/functional/WAUrlDecodingFunctionalTest'"	| url path |	url := self requestContext request url.	"this method is also called in #runTest where the path is already added, we don't want this"	path := url path first: (self application url path size + 1).	^ String streamContents: [ :stream |		path			do: [ :each  | stream nextPutAll: each ]			 separatedBy: [ stream nextPut: $/ ] ]! !

!WAUrlDecodingFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
renderExplanationOn:!public!rendering! !
runTest!actions!public! !
testPath!private! !
!

