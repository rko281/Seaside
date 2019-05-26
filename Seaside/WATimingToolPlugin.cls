"Filed out from Dolphin Smalltalk 7"!

WAToolPlugin subclass: #WATimingToolPlugin
	instanceVariableNames: 'filter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATimingToolPlugin guid: (GUID fromString: '{4426bf8d-ad2e-45fc-a60e-fb7eeb200bb9}')!
WATimingToolPlugin comment: 'I display render and callback times.'!
!WATimingToolPlugin categoriesForClass!Seaside-Development-Plugins! !
!WATimingToolPlugin methodsFor!

initializeRequestor: aRequestorObject	super initializeRequestor: aRequestorObject.	filter := self session filters		detect: [ :each | each isKindOf: WATimingToolFilter ]		ifNone: [ self session addFilter: WATimingToolFilter new ]!

priority	^ 900!

renderContentOn: html	html span class: self cssClass; with: [		html span			title: 'Callback Time';			with: filter previousTiming.		html text: '/'.		html span			title: 'Render Time';			with: filter currentTiming.		html text: ' ms' ]! !
!WATimingToolPlugin categoriesFor: #initializeRequestor:!initialization!public! !
!WATimingToolPlugin categoriesFor: #priority!accessing!public! !
!WATimingToolPlugin categoriesFor: #renderContentOn:!public!rendering! !

