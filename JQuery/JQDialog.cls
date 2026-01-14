"Filed out from Dolphin Smalltalk"!

JQWidget subclass: #JQDialog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQDialog guid: (GUID fromString: '{2fa9fe18-8e2b-4023-bd66-69a38f55eb11}')!

JQDialog comment: 'Make the selected elements Dialog boxes.'!

!JQDialog categoriesForClass!JQuery-UI-Widgets! !

!JQDialog methodsFor!

addButton: aString do: anObject 	"Adds a new button with the label aString and the action anObject."	(self options 		at: 'buttons'		ifAbsentPut: [ GRSmallDictionary2 new ]) 		at: aString		put: anObject asFunction!

appendTo: aString	"Which element the dialog (and overlay, if modal) should be appended to."	self optionAt: 'appendTo' put: aString!

autoOpen: aBoolean	"When 'autoOpen' is 'true' the dialog will open automatically when 'dialog' is called. If 'false' it will stay hidden until '.dialog('open')' is called on it."	self optionAt: 'autoOpen' put: aBoolean!

buttons: aDictionary	"Specifies which buttons should be displayed on the dialog. The property key is the text of the button. The value is the callback function for when the button is clicked. The context of the callback is the dialog element; if you need access to the button, it is available as the target of the event object."	self optionAt: 'buttons' put: aDictionary!

close	"Closes the specified dialog boxes."		self action: 'close'!

closeOnEscape: aBoolean	"Specifies whether the dialog should close when it has focus and the user presses the esacpe (ESC) key."	self optionAt: 'closeOnEscape' put: aBoolean!

closeText: aString	"Specifies the text for the close button. Note that the close text is visibly hidden when using a standard theme."	self optionAt: 'closeText' put: aString!

dialogClass: aString	"The specified class name(s) will be added to the dialog, for additional theming."	self optionAt: 'dialogClass' put: aString!

draggable: aBoolean	"If set to true, the dialog will be draggable will be draggable by the titlebar."	self optionAt: 'draggable' put: aBoolean!

height: aNumber	"The height of the dialog, in pixels. Specifying 'auto' is also supported to make the dialog adjust based on its content."	self optionAt: 'height' put: aNumber!

hide: aStringOrObject	"The effect to be used when the dialog is closed."	self optionAt: 'hide' put: aStringOrObject!

html: aBlock	"Conveniance method that takes a block that is used to render the contents of the window when being opened."	self autoOpen: false.	self onOpen: (self owner copy load		html: aBlock)!

isOpen	"Returns true if the dialog is currently open."		self action: 'isOpen'!

maxHeight: aNumber	"The maximum height to which the dialog can be resized, in pixels."	self optionAt: 'maxHeight' put: aNumber!

maxWidth: aNumber	"The maximum width to which the dialog can be resized, in pixels."	self optionAt: 'maxWidth' put: aNumber!

method	^ 'dialog'!

minHeight: aNumber	"The minimum height to which the dialog can be resized, in pixels."	self optionAt: 'minHeight' put: aNumber!

minWidth: aNumber	"The minimum width to which the dialog can be resized, in pixels."	self optionAt: 'minWidth' put: aNumber!

modal: aBoolean	"If set to true, the dialog will have modal behavior; other items on the page will be disabled (i.e. cannot be interacted with). Modal dialogs create an overlay below the dialog but above other page elements."	self optionAt: 'modal' put: aBoolean!

moveToTop	"Moves the speicifed dialog on top of the dialogs stack."		self action: 'moveToTop'!

onBeforeClose: anObject	"This event is triggered when a dialog attempts to close. If the beforeClose event handler (callback function) returns false, the close will be prevented."	self optionAt: 'beforeClose' put: anObject asFunction!

onClose: anObject	"This event is triggered when the dialog is closed."	self optionAt: 'close' put: anObject asFunction!

onDrag: anObject	"This event is triggered when the dialog is dragged."	self optionAt: 'drag' put: anObject asFunction!

onDragStart: anObject	"This event is triggered at the beginning of the dialog being dragged."	self optionAt: 'dragStart' put: anObject asFunction!

onDragStop: anObject	"This event is triggered after the dialog has been dragged."	self optionAt: 'dragStop' put: anObject asFunction!

onFocus: anObject	"This event is triggered when the dialog gains focus."	self optionAt: 'focus' put: anObject asFunction!

onOpen: anObject	"This event is triggered when dialog is opened."	self optionAt: 'open' put: anObject asFunction!

onResize: anObject	"This event is triggered when the dialog is resized. [http://www.jsfiddle.net/Jp7TM/18/ demo]"	self optionAt: 'resize' put: anObject asFunction!

onResizeStart: anObject	"This event is triggered at the beginning of the dialog being resized."	self optionAt: 'resizeStart' put: anObject asFunction!

onResizeStop: anObject	"This event is triggered after the dialog has been resized."	self optionAt: 'resizeStop' put: anObject asFunction!

open	"Opens the specified dialog boxes."		self action: 'open'!

position: aStringOrArray	"Specifies where the dialog should be displayed. See details at http://api.jqueryui.com/dialog/#option-position"	self optionAt: 'position' put: aStringOrArray!

resizable: aBoolean	"If set to true, the dialog will be resizeable."	self optionAt: 'resizable' put: aBoolean!

show: aStringOrObject	"The effect to be used when the dialog is opened."	self optionAt: 'show' put: aStringOrObject!

title: aString	"Specifies the title of the dialog. Any valid HTML may be set as the title. The title can also be specified by the title attribute on the dialog source element."	self optionAt: 'title' put: aString!

width: aNumber	"The width of the dialog, in pixels."	self optionAt: 'width' put: aNumber! !

!JQDialog categoriesForMethods!
addButton:do:!convenience!public! !
appendTo:!options/generated!public! !
autoOpen:!options/generated!public! !
buttons:!options/generated!public! !
close!actions!public! !
closeOnEscape:!options/generated!public! !
closeText:!options/generated!public! !
dialogClass:!options/generated!public! !
draggable:!options/generated!public! !
height:!options/generated!public! !
hide:!options/generated!public! !
html:!callbacks!public! !
isOpen!actions!public! !
maxHeight:!options/generated!public! !
maxWidth:!options/generated!public! !
method!accessing!public! !
minHeight:!options/generated!public! !
minWidth:!options/generated!public! !
modal:!options/generated!public! !
moveToTop!actions!public! !
onBeforeClose:!events/generated!public! !
onClose:!events/generated!public! !
onDrag:!events/generated!public! !
onDragStart:!events/generated!public! !
onDragStop:!events/generated!public! !
onFocus:!events/generated!public! !
onOpen:!events/generated!public! !
onResize:!events/generated!public! !
onResizeStart:!events/generated!public! !
onResizeStop:!events/generated!public! !
open!actions!public! !
position:!options/generated!public! !
resizable:!options/generated!public! !
show:!options/generated!public! !
title:!options/generated!public! !
width:!options/generated!public! !
!

