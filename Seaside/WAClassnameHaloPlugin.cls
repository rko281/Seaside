"Filed out from Dolphin Smalltalk"!

WAHaloPlugin subclass: #WAClassnameHaloPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAClassnameHaloPlugin guid: (GUID fromString: '{7baeb23a-bd02-4f41-81bb-95e9b5769013}')!

WAClassnameHaloPlugin comment: 'I display the class name of the component class.'!

!WAClassnameHaloPlugin categoriesForClass!Seaside-Development-Plugins! !

!WAClassnameHaloPlugin methodsFor!

priority	^ 100!

renderContentOn: html	html div class: self cssClass; with: self root className! !

!WAClassnameHaloPlugin categoriesForMethods!
priority!accessing!public! !
renderContentOn:!public!rendering! !
!

