"Filed out from Dolphin Smalltalk"!

WAXmlDocument subclass: #WAHtmlDocument
	instanceVariableNames: 'scriptGenerator'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHtmlDocument guid: (GUID fromString: '{3d44a83b-ab9d-49b3-95de-0e6aa50a6891}')!

WAHtmlDocument comment: 'A WAHtmlDocument controls how a string is created from a series of brushes.'!

!WAHtmlDocument categoriesForClass!Document! !

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

