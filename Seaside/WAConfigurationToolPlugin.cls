﻿"Filed out from Dolphin Smalltalk 7"!

WAPlugin subclass: #WAConfigurationToolPlugin
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAConfigurationToolPlugin guid: (GUID fromString: '{f5484100-5404-4cc0-9f3d-c50d34a35b1f}')!
WAConfigurationToolPlugin comment: 'Abstract root class for all plugins that add an action for an application to the dispatcher editor.'!
!WAConfigurationToolPlugin categoriesForClass!Seaside-Tools-Web! !
!WAConfigurationToolPlugin methodsFor!

cssClass

handler

initializeHandler: aHandlerObject requestor: aRequestorObject
!WAConfigurationToolPlugin categoriesFor: #cssClass!accessing!public! !
!WAConfigurationToolPlugin categoriesFor: #handler!accessing!public! !
!WAConfigurationToolPlugin categoriesFor: #initializeHandler:requestor:!initialization!public! !

!WAConfigurationToolPlugin class methodsFor!

allSubclassesOn: aTargetObject for: aRequestorObject

on: aTargetObject for: aRequestorObject
!WAConfigurationToolPlugin class categoriesFor: #allSubclassesOn:for:!instance creation!public! !
!WAConfigurationToolPlugin class categoriesFor: #on:for:!instance creation!public! !
