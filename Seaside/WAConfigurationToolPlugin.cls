"Filed out from Dolphin Smalltalk"!

WAPlugin subclass: #WAConfigurationToolPlugin
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAConfigurationToolPlugin guid: (GUID fromString: '{aded05dd-2969-4231-965d-335bf087be5e}')!

WAConfigurationToolPlugin comment: 'Abstract root class for all plugins that add an action for an application to the dispatcher editor.'!

!WAConfigurationToolPlugin categoriesForClass!Unclassified! !

!WAConfigurationToolPlugin methodsFor!

cssClass	"Answer a CSS class that will be applied to an automatically rendered link."	^ 'wa-action'!

handler	^ handler!

initializeHandler: aHandlerObject requestor: aRequestorObject	self initializeRequestor: aRequestorObject.	handler := aHandlerObject! !

!WAConfigurationToolPlugin categoriesForMethods!
cssClass!accessing!public! !
handler!accessing!public! !
initializeHandler:requestor:!initialization!public! !
!

!WAConfigurationToolPlugin class methodsFor!

allSubclassesOn: aTargetObject for: aRequestorObject	| plugins |	plugins := self allSubclasses		collect: [ :each | each on: aTargetObject for: aRequestorObject ].	^ plugins sorted!

on: aTargetObject for: aRequestorObject	^ self basicNew initializeHandler: aTargetObject requestor: aRequestorObject! !

!WAConfigurationToolPlugin class categoriesForMethods!
allSubclassesOn:for:!instance creation!public! !
on:for:!instance creation!public! !
!

