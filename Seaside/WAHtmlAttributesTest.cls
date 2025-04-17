"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WAHtmlAttributesTest
	instanceVariableNames: 'attributes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHtmlAttributesTest guid: (GUID fromString: '{4121b100-1ed4-4d1f-aedf-6f2d095e5217}')!

WAHtmlAttributesTest comment: ''!

!WAHtmlAttributesTest categoriesForClass!Document! !

!WAHtmlAttributesTest methodsFor!

assert: aBlock gives: aString 	| stream |	aBlock value: (attributes := WAHtmlAttributes new).	(WAHtmlDocument 		on: (stream := WriteStream on: String new)		codec: self requestContext codec) print: attributes.	self 		assert: stream contents = aString		description: 'Expected ' , aString printString , ', but got ' , stream contents printString		resumable: true!

setUp	attributes := WAHtmlAttributes new!

testAddClass	self		assert: [ :attr | attr addClass: 'foo' ]		gives: ' class="foo"'.	self		assert: [ :attr | attr addClass: 'foo'; addClass: 'bar' ]		gives: ' class="foo bar"'!

testAddStyle	self		assert: [ :attr | attr addStyle: 'display: hidden' ]		gives: ' style="display: hidden"'.	self		assert: [ :attr | attr addStyle: 'display: hidden'; addStyle: 'position: absolute' ]		gives: ' style="display: hidden;position: absolute"'!

testAt	attributes at: 'foo' put: 'bar'.	self assert: (attributes at: 'foo') = 'bar'.	self assert: (attributes at: 'bar') isNil!

testAtAppend	self		assert: [ :attr | attr at: 'onclick' append: 'this' separator: ';' ]		gives: ' onclick="this"'.	self		assert: [ :attr |			attr				at: 'onclick' append: 'this' separator: ';';				at: 'onclick' append: 'that' separator: ';' ]		gives: ' onclick="this;that"'.	self		assert: [ :attr |			attr				at: 'onclick' append: 'this' separator: ';';				at: 'onclick' append: nil separator: ';' ]		gives: ' onclick="this"'.	self		assert: [ :attr |			attr				at: 'onclick' append: 1 separator: ';';				at: 'onclick' append: 2 separator: ';' ]		gives: ' onclick="1;2"'!

testAtPut	self		assert: [ :attr | attr at: 'id' put: 'foo' ]		gives: ' id="foo"'.	self		assert: [ :attr | attr at: 'tabindex' put: 6 ]		gives: ' tabindex="6"'.	self		assert: [ :attr | attr at: 'checked' put: true ]		gives: ' checked'.	self		assert: [ :attr | attr at: 'readonly' put: false ]		gives: ''.	self		assert: [ :attr | attr at: 'disabled' put: nil ]		gives: ''!

testCaseSensititve	self		assert: [ :attr | attr at: 'lastBuildDate' put: 'Sat, 07 Sep 2002 09:42:31 GMT' ]		gives: ' lastBuildDate="Sat, 07 Sep 2002 09:42:31 GMT"'!

testOrder	self		assert: [ :attr | attr at: 'a' put: 1; at: 'b' put: 2; at: 'c' put: 3 ]		gives: ' a="1" b="2" c="3"'.	self		assert: [ :attr | attr at: 'a' put: 1; at: 'b' put: 2; at: 'c' put: 3; at: 'b' put: 4 ]		gives: ' a="1" b="4" c="3"'!

testRemoveKey	attributes at: 'id' put: 'foo'.	self assert: (attributes removeKey: 'id') = 'foo'.	self assert: (attributes removeKey: 'id') isNil! !

!WAHtmlAttributesTest categoriesForMethods!
assert:gives:!private! !
setUp!public!running! !
testAddClass!public!tests/convenience! !
testAddStyle!public!tests/convenience! !
testAt!public!tests! !
testAtAppend!public!tests! !
testAtPut!public!tests! !
testCaseSensititve!public!tests/fixtures! !
testOrder!public!tests! !
testRemoveKey!public!tests! !
!

