"Filed out from Dolphin Smalltalk"!

WAHaloPlugin subclass: #WAModeHaloPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAModeHaloPlugin guid: (GUID fromString: '{2b533d77-c417-45b1-a30b-f6908d13d913}')!

WAModeHaloPlugin comment: 'I control the rendering modes of the halo.'!

!WAModeHaloPlugin categoriesForClass!Seaside-Development-Plugins! !

!WAModeHaloPlugin methodsFor!

priority	^ 900!

renderContentOn: html	html div class: self cssClass; with: [		self requestor modes			do: [ :each |				html anchor					class: 'active' if: self requestor mode = each;					callback: [ self requestor mode: each ];					with: (self labelForSelector: each) ]			separatedBy: [ html text: ' / ' ] ]! !

!WAModeHaloPlugin categoriesForMethods!
priority!accessing!public! !
renderContentOn:!public!rendering! !
!

