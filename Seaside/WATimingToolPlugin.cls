"Filed out from Dolphin Smalltalk"!

WAToolPlugin subclass: #WATimingToolPlugin
	instanceVariableNames: 'filter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATimingToolPlugin guid: (GUID fromString: '{a35087ea-1b68-472c-86e4-4bb1d8f65c38}')!

WATimingToolPlugin comment: 'I display render and callback times.'!

!WATimingToolPlugin categoriesForClass!Seaside-Development-Plugins! !

!WATimingToolPlugin methodsFor!

initializeRequestor: aRequestorObject	super initializeRequestor: aRequestorObject.	filter := self session filters		detect: [ :each | each isKindOf: WATimingToolFilter ]		ifNone: [ self session addFilter: WATimingToolFilter new ]!

priority	^ 900!

renderContentOn: html	html span class: self cssClass; with: [		html span			title: 'Callback Time';			with: filter previousTiming.		html text: '/'.		html span			title: 'Render Time';			with: filter currentTiming.		html text: ' ms' ]! !

!WATimingToolPlugin categoriesForMethods!
initializeRequestor:!initialization!public! !
priority!accessing!public! !
renderContentOn:!public!rendering! !
!

