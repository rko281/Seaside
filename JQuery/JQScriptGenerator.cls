"Filed out from Dolphin Smalltalk 7"!

WAScriptGenerator subclass: #JQScriptGenerator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQScriptGenerator guid: (GUID fromString: '{5bc4988d-abe2-4def-9c0d-6d907b47a5da}')!
JQScriptGenerator comment: ''!
!JQScriptGenerator categoriesForClass!JQuery-Core-Objects! !
!JQScriptGenerator methodsFor!

close: aHtmlRoot on: aDocument	self loadScripts isEmpty		ifTrue: [ ^ self ].	self 		writeScriptTag: [ 			aDocument nextPutAll: JQuery functionName; nextPutAll: '(function(){'.			self writeLoadScriptsOn: aDocument.			aDocument nextPutAll: '});' ]		on: aDocument!

event: aString do: anObject on: aBrush	anObject ifNil: [ ^ self ].	self addLoadScript: (JQueryInstance new		id: aBrush ensureId;		on: aString do: anObject)! !
!JQScriptGenerator categoriesFor: #close:on:!actions!public! !
!JQScriptGenerator categoriesFor: #event:do:on:!public! !

