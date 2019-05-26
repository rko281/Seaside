"Filed out from Dolphin Smalltalk 7"!

WAPlugin subclass: #WAConfigurationToolPlugin
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAConfigurationToolPlugin guid: (GUID fromString: '{af7fd704-66b0-44c2-8dec-edff5471c47c}')!
WAConfigurationToolPlugin comment: 'Abstract root class for all plugins that add an action for an application to the dispatcher editor.'!
!WAConfigurationToolPlugin categoriesForClass!Seaside-Tools-Web! !
!WAConfigurationToolPlugin methodsFor!

cssClass	"Answer a CSS class that will be applied to an automatically rendered link."	^ 'wa-action'!

handler	^ handler!

initializeHandler: aHandlerObject requestor: aRequestorObject	self initializeRequestor: aRequestorObject.	handler := aHandlerObject! !
!WAConfigurationToolPlugin categoriesFor: #cssClass!accessing!public! !
!WAConfigurationToolPlugin categoriesFor: #handler!accessing!public! !
!WAConfigurationToolPlugin categoriesFor: #initializeHandler:requestor:!initialization!public! !

!WAConfigurationToolPlugin class methodsFor!

allSubclassesOn: aTargetObject for: aRequestorObject	| plugins |	plugins := self allSubclasses		collect: [ :each | each on: aTargetObject for: aRequestorObject ].	^ plugins sorted!

on: aTargetObject for: aRequestorObject	^ self basicNew initializeHandler: aTargetObject requestor: aRequestorObject! !
!WAConfigurationToolPlugin class categoriesFor: #allSubclassesOn:for:!instance creation!public! !
!WAConfigurationToolPlugin class categoriesFor: #on:for:!instance creation!public! !

