"Filed out from Dolphin Smalltalk 7"!

WAXmlDocument subclass: #WAHtmlDocument
	instanceVariableNames: 'scriptGenerator'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHtmlDocument guid: (GUID fromString: '{ff4ab7a3-b4ae-4515-aa1b-cc3aef244422}')!
WAHtmlDocument comment: 'A WAHtmlDocument controls how a string is created from a series of brushes.'!
!WAHtmlDocument categoriesForClass!Seaside-Core-Document! !
!WAHtmlDocument methodsFor!

addLoadScript: anObject	^ self scriptGenerator addLoadScript: anObject!

addLoadScriptFirst: anObject	^ self scriptGenerator addLoadScriptFirst: anObject!

loadScripts	^ self scriptGenerator loadScripts!

scriptGenerator	^ scriptGenerator ifNil: [ scriptGenerator := WADefaultScriptGenerator new ]!

scriptGenerator: aScriptGenerator	scriptGenerator := aScriptGenerator! !
!WAHtmlDocument categoriesFor: #addLoadScript:!public!scripting! !
!WAHtmlDocument categoriesFor: #addLoadScriptFirst:!public!scripting! !
!WAHtmlDocument categoriesFor: #loadScripts!public!scripting! !
!WAHtmlDocument categoriesFor: #scriptGenerator!accessing!public! !
!WAHtmlDocument categoriesFor: #scriptGenerator:!accessing!public! !

