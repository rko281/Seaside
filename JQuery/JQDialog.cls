"Filed out from Dolphin Smalltalk 7"!

JQWidget subclass: #JQDialog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQDialog guid: (GUID fromString: '{a0fd742c-3b68-4253-ae8e-21f2427e8f40}')!
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
!JQDialog categoriesFor: #addButton:do:!convenience!public! !
!JQDialog categoriesFor: #appendTo:!options/generated!public! !
!JQDialog categoriesFor: #autoOpen:!options/generated!public! !
!JQDialog categoriesFor: #buttons:!options/generated!public! !
!JQDialog categoriesFor: #close!actions!public! !
!JQDialog categoriesFor: #closeOnEscape:!options/generated!public! !
!JQDialog categoriesFor: #closeText:!options/generated!public! !
!JQDialog categoriesFor: #dialogClass:!options/generated!public! !
!JQDialog categoriesFor: #draggable:!options/generated!public! !
!JQDialog categoriesFor: #height:!options/generated!public! !
!JQDialog categoriesFor: #hide:!options/generated!public! !
!JQDialog categoriesFor: #html:!callbacks!public! !
!JQDialog categoriesFor: #isOpen!actions!public! !
!JQDialog categoriesFor: #maxHeight:!options/generated!public! !
!JQDialog categoriesFor: #maxWidth:!options/generated!public! !
!JQDialog categoriesFor: #method!accessing!public! !
!JQDialog categoriesFor: #minHeight:!options/generated!public! !
!JQDialog categoriesFor: #minWidth:!options/generated!public! !
!JQDialog categoriesFor: #modal:!options/generated!public! !
!JQDialog categoriesFor: #moveToTop!actions!public! !
!JQDialog categoriesFor: #onBeforeClose:!events/generated!public! !
!JQDialog categoriesFor: #onClose:!events/generated!public! !
!JQDialog categoriesFor: #onDrag:!events/generated!public! !
!JQDialog categoriesFor: #onDragStart:!events/generated!public! !
!JQDialog categoriesFor: #onDragStop:!events/generated!public! !
!JQDialog categoriesFor: #onFocus:!events/generated!public! !
!JQDialog categoriesFor: #onOpen:!events/generated!public! !
!JQDialog categoriesFor: #onResize:!events/generated!public! !
!JQDialog categoriesFor: #onResizeStart:!events/generated!public! !
!JQDialog categoriesFor: #onResizeStop:!events/generated!public! !
!JQDialog categoriesFor: #open!actions!public! !
!JQDialog categoriesFor: #position:!options/generated!public! !
!JQDialog categoriesFor: #resizable:!options/generated!public! !
!JQDialog categoriesFor: #show:!options/generated!public! !
!JQDialog categoriesFor: #title:!options/generated!public! !
!JQDialog categoriesFor: #width:!options/generated!public! !

