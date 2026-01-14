"Filed out from Dolphin Smalltalk"!

WAPlugin subclass: #WAConfigurationToolPlugin
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAConfigurationToolPlugin guid: (GUID fromString: '{4c205c8e-7a1d-48c7-92d3-0ad054b4641d}')!

WAConfigurationToolPlugin comment: 'Abstract root class for all plugins that add an action for an application to the dispatcher editor.'!

!WAConfigurationToolPlugin categoriesForClass!Seaside-Tools-Web! !

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

