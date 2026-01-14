"Filed out from Dolphin Smalltalk"!

WAPainter subclass: #WAPlugin
	instanceVariableNames: 'requestor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPlugin guid: (GUID fromString: '{dde67cfa-767f-43e1-8bbd-38a8356b9909}')!

WAPlugin comment: 'I am an abstract root class for all plugins. Plugins are an easy way to add or remove additional tools without changing the codebase. To add a new plugin make sure you choose the right superclass so that the tool can detect your code.The appearance of all plugins, such as icons, has to be configured using CSS.'!

!WAPlugin categoriesForClass!Seaside-Tools-Web! !

!WAPlugin methodsFor!

<= aPlugin	^ self priority <= aPlugin priority!

clickScript	"Answer a Javascript snippet that is added to the rendered link as a click-action."	^ nil!

cssClass	"Answer a CSS class that will be applied to an automatically rendered link."	^ 'wa-' , (self class name allButFirst: 2) asLowercase!

execute	"Execute the receiving plugin."!

initializeRequestor: aRequestorObject	self initialize.	requestor := aRequestorObject!

isActive	"Answer whether the plugin is usable with the current target."	^ true!

label	"Answer the menu label of the plugin."	^ self printString!

open: aComponent	self open: aComponent onAnswer: [ :value | ]!

open: aComponent onAnswer: aBlock	"Replace the current page with aComponent."	self session presenter		show: (aComponent			addDecoration: (WAWindowDecoration new				cssClass: self cssClass;				title: self title;				yourself);			yourself)		onAnswer: aBlock!

priority	"Answer a number used to sort the receiver. A lower number means it appears earlier on."	^ 0!

renderContentOn: html	"A default render method to display the interface of the receiving plugin. Might be overriden with specific behavior in subclasses."	html anchor		title: self tooltip;		class: self cssClass;		onClick: self clickScript;		callback: [ self execute ];		with: self label!

rendererClass	^ WAHtmlCanvas!

requestor	"Answer the requestor component the plugin is working on."	^ requestor!

title	"Answer the title used when opening a window."	^ self label!

tooltip	"Answer a tooltip string that is displayed on the plugin link or button."	^ nil! !

!WAPlugin categoriesForMethods!
<=!comparing!public! !
clickScript!accessing!public! !
cssClass!accessing!public! !
execute!actions!public! !
initializeRequestor:!initialization!public! !
isActive!public!testing! !
label!accessing!public! !
open:!actions!public! !
open:onAnswer:!actions!public! !
priority!accessing!public! !
renderContentOn:!public!rendering! !
rendererClass!public!rendering! !
requestor!accessing!public! !
title!accessing!public! !
tooltip!accessing!public! !
!

