"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WAPlugin
	instanceVariableNames: 'requestor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPlugin guid: (GUID fromString: '{c1abdd67-dc17-414d-8418-66673bf33d22}')!
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
!WAPlugin categoriesFor: #<=!comparing!public! !
!WAPlugin categoriesFor: #clickScript!accessing!public! !
!WAPlugin categoriesFor: #cssClass!accessing!public! !
!WAPlugin categoriesFor: #execute!actions!public! !
!WAPlugin categoriesFor: #initializeRequestor:!initialization!public! !
!WAPlugin categoriesFor: #isActive!public!testing! !
!WAPlugin categoriesFor: #label!accessing!public! !
!WAPlugin categoriesFor: #open:!actions!public! !
!WAPlugin categoriesFor: #open:onAnswer:!actions!public! !
!WAPlugin categoriesFor: #priority!accessing!public! !
!WAPlugin categoriesFor: #renderContentOn:!public!rendering! !
!WAPlugin categoriesFor: #rendererClass!public!rendering! !
!WAPlugin categoriesFor: #requestor!accessing!public! !
!WAPlugin categoriesFor: #title!accessing!public! !
!WAPlugin categoriesFor: #tooltip!accessing!public! !

