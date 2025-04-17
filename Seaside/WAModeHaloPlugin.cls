"Filed out from Dolphin Smalltalk"!

WAHaloPlugin subclass: #WAModeHaloPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAModeHaloPlugin guid: (GUID fromString: '{6c851866-fe72-450e-8437-275197c308df}')!

WAModeHaloPlugin comment: 'I control the rendering modes of the halo.'!

!WAModeHaloPlugin categoriesForClass!Plugins! !

!WAModeHaloPlugin methodsFor!

priority	^ 900!

renderContentOn: html	html div class: self cssClass; with: [		self requestor modes			do: [ :each |				html anchor					class: 'active' if: self requestor mode = each;					callback: [ self requestor mode: each ];					with: (self labelForSelector: each) ]			separatedBy: [ html text: ' / ' ] ]! !

!WAModeHaloPlugin categoriesForMethods!
priority!accessing!public! !
renderContentOn:!public!rendering! !
!

