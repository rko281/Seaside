"Filed out from Dolphin Smalltalk"!

WAScriptGeneratorTest subclass: #WANullScriptGeneratorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WANullScriptGeneratorTest guid: (GUID fromString: '{cc41c08f-adf8-471e-8cbd-c0930bf59c13}')!

WANullScriptGeneratorTest comment: ''!

!WANullScriptGeneratorTest categoriesForClass!Seaside-Tests-Canvas-Base! !

!WANullScriptGeneratorTest methodsFor!

scriptGeneratorClass	^ WANullScriptGenerator!

testEmpty	self		assert: [ :html | ]		gives: '<html><head><title></title></head><body></body></html>'!

testEvent	self		assert: [ :html |				html					anchor					onClick: 'console.log("clicked")';					with: 'click' ]		gives: '<html><head><title></title></head><body><a onclick="console.log(&quot;clicked&quot;)">click</a></body></html>'! !

!WANullScriptGeneratorTest categoriesForMethods!
scriptGeneratorClass!configuration!public! !
testEmpty!public!testing! !
testEvent!public!testing! !
!

