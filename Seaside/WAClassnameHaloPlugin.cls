"Filed out from Dolphin Smalltalk 7"!

WAHaloPlugin subclass: #WAClassnameHaloPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAClassnameHaloPlugin guid: (GUID fromString: '{cdcf639e-353c-4bf4-b303-be82724f2cd3}')!
WAClassnameHaloPlugin comment: 'I display the class name of the component class.'!
!WAClassnameHaloPlugin categoriesForClass!Seaside-Development-Plugins! !
!WAClassnameHaloPlugin methodsFor!

priority	^ 100!

renderContentOn: html	html div class: self cssClass; with: self root className! !
!WAClassnameHaloPlugin categoriesFor: #priority!accessing!public! !
!WAClassnameHaloPlugin categoriesFor: #renderContentOn:!public!rendering! !

