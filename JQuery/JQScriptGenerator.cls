"Filed out from Dolphin Smalltalk"!

WAScriptGenerator subclass: #JQScriptGenerator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQScriptGenerator guid: (GUID fromString: '{f74292ca-7cdd-430d-8da2-3d6430ffb122}')!

JQScriptGenerator comment: ''!

!JQScriptGenerator categoriesForClass!JQuery-Core-Objects! !

!JQScriptGenerator methodsFor!

close: aHtmlRoot on: aDocument	self loadScripts isEmpty		ifTrue: [ ^ self ].	self 		writeScriptTag: [ 			aDocument nextPutAll: JQuery functionName; nextPutAll: '(function(){'.			self writeLoadScriptsOn: aDocument.			aDocument nextPutAll: '});' ]		on: aDocument!

event: aString do: anObject on: aBrush	anObject ifNil: [ ^ self ].	self addLoadScript: (JQueryInstance new		id: aBrush ensureId;		on: aString do: anObject)! !

!JQScriptGenerator categoriesForMethods!
close:on:!actions!public! !
event:do:on:!public! !
!

