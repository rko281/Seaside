"Filed out from Dolphin Smalltalk 7"!

WAHaloPlugin subclass: #WAModeHaloPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAModeHaloPlugin guid: (GUID fromString: '{b53d75af-4aaf-4d55-83ec-ab371caab68c}')!
WAModeHaloPlugin comment: 'I control the rendering modes of the halo.'!
!WAModeHaloPlugin categoriesForClass!Seaside-Development-Plugins! !
!WAModeHaloPlugin methodsFor!

priority	^ 900!

renderContentOn: html	html div class: self cssClass; with: [		self requestor modes			do: [ :each |				html anchor					class: 'active' if: self requestor mode = each;					callback: [ self requestor mode: each ];					with: (self labelForSelector: each) ]			separatedBy: [ html text: ' / ' ] ]! !
!WAModeHaloPlugin categoriesFor: #priority!accessing!public! !
!WAModeHaloPlugin categoriesFor: #renderContentOn:!public!rendering! !

