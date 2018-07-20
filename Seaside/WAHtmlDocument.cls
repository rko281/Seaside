"Filed out from Dolphin Smalltalk 7"!

WAXmlDocument subclass: #WAHtmlDocument
	instanceVariableNames: 'scriptGenerator'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHtmlDocument guid: (GUID fromString: '{4bdc048d-e977-4c2a-845c-f0353f315a4e}')!
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

