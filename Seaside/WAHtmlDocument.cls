"Filed out from Dolphin Smalltalk"!

WAXmlDocument subclass: #WAHtmlDocument
	instanceVariableNames: 'scriptGenerator'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHtmlDocument guid: (GUID fromString: '{3cf59ce2-12a3-41e7-b681-e210e7362df1}')!

WAHtmlDocument comment: 'A WAHtmlDocument controls how a string with html is created from a series of brushes.'!

!WAHtmlDocument categoriesForClass!Seaside-Core-Document! !

!WAHtmlDocument methodsFor!

addLoadScript: anObject	^ self scriptGenerator addLoadScript: anObject!

addLoadScriptFirst: anObject	^ self scriptGenerator addLoadScriptFirst: anObject!

loadScripts	^ self scriptGenerator loadScripts!

scriptGenerator	^ scriptGenerator ifNil: [ scriptGenerator := WADefaultScriptGenerator new ]!

scriptGenerator: aScriptGenerator	scriptGenerator := aScriptGenerator! !

!WAHtmlDocument categoriesForMethods!
addLoadScript:!public!scripting! !
addLoadScriptFirst:!public!scripting! !
loadScripts!public!scripting! !
scriptGenerator!accessing!public! !
scriptGenerator:!accessing!public! !
!

