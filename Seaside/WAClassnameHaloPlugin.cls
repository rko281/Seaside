"Filed out from Dolphin Smalltalk"!

WAHaloPlugin subclass: #WAClassnameHaloPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAClassnameHaloPlugin guid: (GUID fromString: '{a9fb9d2d-2e52-42de-ae28-21ee2484fff4}')!

WAClassnameHaloPlugin comment: 'I display the class name of the component class.'!

!WAClassnameHaloPlugin categoriesForClass!Plugins! !

!WAClassnameHaloPlugin methodsFor!

priority	^ 100!

renderContentOn: html	html div class: self cssClass; with: self root className! !

!WAClassnameHaloPlugin categoriesForMethods!
priority!accessing!public! !
renderContentOn:!public!rendering! !
!

