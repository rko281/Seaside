"Filed out from Dolphin Smalltalk 7"!

WAScriptGeneratorTest subclass: #WANullScriptGeneratorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WANullScriptGeneratorTest guid: (GUID fromString: '{7205813e-0297-4580-8d1a-d5b0edf0083e}')!
WANullScriptGeneratorTest comment: ''!
!WANullScriptGeneratorTest categoriesForClass!Seaside-Tests-Canvas! !
!WANullScriptGeneratorTest methodsFor!

scriptGeneratorClass	^ WANullScriptGenerator!

testEmpty	self		assert: [ :html | ]		gives: '<html><head><title></title></head><body></body></html>'!

testEvent	self		assert: [ :html |				html					anchor					onClick: 'console.log("clicked")';					with: 'click' ]		gives: '<html><head><title></title></head><body><a onclick="console.log(&quot;clicked&quot;)">click</a></body></html>'! !
!WANullScriptGeneratorTest categoriesFor: #scriptGeneratorClass!configuration!public! !
!WANullScriptGeneratorTest categoriesFor: #testEmpty!public!testing! !
!WANullScriptGeneratorTest categoriesFor: #testEvent!public!testing! !

