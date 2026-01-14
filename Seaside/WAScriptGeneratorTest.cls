"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WAScriptGeneratorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAScriptGeneratorTest guid: (GUID fromString: '{08240947-48ed-4e7d-84fc-760430e37075}')!

WAScriptGeneratorTest comment: 'Abstract base class for all script generator tests.'!

!WAScriptGeneratorTest categoriesForClass!Seaside-Tests-Canvas-Base! !

!WAScriptGeneratorTest methodsFor!

assert: aBlock gives: aString	| html |	html := WAHtmlCanvas builder		fullDocument: true;		scriptGeneratorClass: self scriptGeneratorClass;		render: aBlock.	self assert: html equals: aString!

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

