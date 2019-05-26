"Filed out from Dolphin Smalltalk 7"!

WAContextTest subclass: #WAScriptGeneratorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAScriptGeneratorTest guid: (GUID fromString: '{5ad1519c-0352-4827-91b6-3e9614052260}')!
WAScriptGeneratorTest comment: 'Abstract base class for all script generator tests.'!
!WAScriptGeneratorTest categoriesForClass!Seaside-Tests-Canvas! !
!WAScriptGeneratorTest methodsFor!

assert: aBlock gives: aString	| html |	html := WAHtmlCanvas builder		fullDocument: true;		scriptGeneratorClass: self scriptGeneratorClass;		render: aBlock.	self assert: aString = html!

scriptGeneratorClass	self subclassResponsibility! !
!WAScriptGeneratorTest categoriesFor: #assert:gives:!private! !
!WAScriptGeneratorTest categoriesFor: #scriptGeneratorClass!configuration!public! !

!WAScriptGeneratorTest class methodsFor!

isAbstract	^ self name = #WAScriptGeneratorTest! !
!WAScriptGeneratorTest class categoriesFor: #isAbstract!public!testing! !

