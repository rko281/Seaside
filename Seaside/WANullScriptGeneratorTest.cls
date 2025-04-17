"Filed out from Dolphin Smalltalk"!

WAScriptGeneratorTest subclass: #WANullScriptGeneratorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WANullScriptGeneratorTest guid: (GUID fromString: '{02dbfd02-ca46-4868-9eba-229ffc612318}')!

WANullScriptGeneratorTest comment: ''!

!WANullScriptGeneratorTest categoriesForClass!Base! !

!WANullScriptGeneratorTest methodsFor!

scriptGeneratorClass	^ WANullScriptGenerator!

testEmpty	self		assert: [ :html | ]		gives: '<html><head><title></title></head><body></body></html>'!

testEvent	self		assert: [ :html |				html					anchor					onClick: 'console.log("clicked")';					with: 'click' ]		gives: '<html><head><title></title></head><body><a onclick="console.log(&quot;clicked&quot;)">click</a></body></html>'! !

!WANullScriptGeneratorTest categoriesForMethods!
scriptGeneratorClass!configuration!public! !
testEmpty!public!testing! !
testEvent!public!testing! !
!

