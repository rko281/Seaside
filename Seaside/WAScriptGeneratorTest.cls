"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WAScriptGeneratorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAScriptGeneratorTest guid: (GUID fromString: '{0b3c3abf-f57e-429f-9319-164a9874484c}')!

WAScriptGeneratorTest comment: 'Abstract base class for all script generator tests.'!

!WAScriptGeneratorTest categoriesForClass!Base! !

!WAScriptGeneratorTest methodsFor!

assert: aBlock gives: aString	| html |	html := WAHtmlCanvas builder		fullDocument: true;		scriptGeneratorClass: self scriptGeneratorClass;		render: aBlock.	self assert: aString equals: html!

scriptGeneratorClass	self subclassResponsibility! !

!WAScriptGeneratorTest categoriesForMethods!
assert:gives:!private! !
scriptGeneratorClass!configuration!public! !
!

!WAScriptGeneratorTest class methodsFor!

isAbstract	^ self name = #WAScriptGeneratorTest! !

!WAScriptGeneratorTest class categoriesForMethods!
isAbstract!public!testing! !
!

