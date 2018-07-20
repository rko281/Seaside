"Filed out from Dolphin Smalltalk 7"!

JQWidget subclass: #JQTabs
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQTabs guid: (GUID fromString: '{1439b3a9-b746-467e-b5fd-3efe193da155}')!
JQTabs comment: ''!
!JQTabs categoriesForClass!JQuery-UI-Widgets! !
!JQTabs methodsFor!

active: aJSObject	"Which panel is currently open"	self optionAt: 'active' put: aJSObject!

collapsible: aBoolean	"Set to true to allow an already selected tab to become unselected again upon reselection."	self optionAt: 'collapsible' put: aBoolean!

destroy	"Removes the tabs functionality completely. This will return the element back to its pre-init state."		self action: 'destroy'!

disable: anInteger	"=Disable a tab. The selected tab cannot be disabled. To disable more than one tab at once use: <code>$('#example').data('disabled.tabs', [1, 2, 3]);</code>  The second argument is the zero-based index of the tab to be disabled. "		self action: 'disable' arguments: (Array with: anInteger)!

disabled: anArrayNumber	"An array containing the position of the tabs (zero-based index) that should be disabled on initialization."	self optionAt: 'disabled' put: anArrayNumber!

enable: anInteger	"Enable a disabled tab.  To enable more than one tab at once reset the disabled property like: <code>$('#example').data('disabled.tabs', []);</code>. The second argument is the zero-based index of the tab to be enabled."		self action: 'enable' arguments: (Array with: anInteger)!

event: aString	"The type of event to be used for selecting a tab."	self optionAt: 'event' put: aString!

heightStyle: aString	"Controls the height of the tabs widget and each panel. Possible values: 		'auto': All panels will be set to the height of the tallest panel. 		'fill': Expand to the available height based on the tabs' parent height.		'content': Each panel will be only as tall as its content."	self optionAt: 'heightStyle' put: aString!

hide: aJSObject	"If and how to animate the hiding of the panel"	self optionAt: 'hide' put: aJSObject!

load: anInteger	"Reload the content of an Ajax tab programmatically. This method always loads the tab content from the remote location, even if cache is set to true. The second argument is the zero-based index of the tab to be reloaded."		self action: 'load' arguments: (Array with: anInteger)!

method	^ 'tabs'!

onActivate: anObject	"Triggered after a tab has been activated (after animation completes). If the tabs were previously collapsed, ui.oldTab and ui.oldPanel will be empty jQuery objects. If the tabs are collapsing, ui.newTab and ui.newPanel will be empty jQuery objects."	self optionAt: 'activate' put: anObject asFunction!

onBeforeActivate: anObject	"Triggered immediately before a tab is activated. Can be canceled to prevent the tab from activating. If the tabs are currently collapsed, ui.oldTab and ui.oldPanel will be empty jQuery objects. If the tabs are collapsing, ui.newTab and ui.newPanel will be empty jQuery objects."	self optionAt: 'beforeActivate' put: anObject asFunction!

onBeforeLoad: anObject	"Triggered when a remote tab is about to be loaded, after the beforeActivate event. Can be canceled to prevent the tab panel from loading content; though the panel will still be activated. This event is triggered just before the Ajax request is made, so modifications can be made to ui.jqXHR and ui.ajaxSettings."	self optionAt: 'beforeload' put: anObject asFunction!

onCreate: anObject	"Triggered when the tabs are created. If the tabs are collapsed, ui.tab and ui.panel will be empty jQuery objects."	self optionAt: 'create' put: anObject asFunction!

onLoad: anObject	"This event is triggered after the content of a remote tab has been loaded."	self optionAt: 'load' put: anObject asFunction!

refresh	"Process any tabs that were added or removed directly in the DOM and recompute the height of the tab panels. "		self action: 'refresh'!

show: aJSObject	"If and how to animate the showing of the panel"	self optionAt: 'show' put: aJSObject! !
!JQTabs categoriesFor: #active:!options/generated!public! !
!JQTabs categoriesFor: #collapsible:!options/generated!public! !
!JQTabs categoriesFor: #destroy!actions!public! !
!JQTabs categoriesFor: #disable:!actions!public! !
!JQTabs categoriesFor: #disabled:!options/generated!public! !
!JQTabs categoriesFor: #enable:!actions!public! !
!JQTabs categoriesFor: #event:!options/generated!public! !
!JQTabs categoriesFor: #heightStyle:!options/generated!public! !
!JQTabs categoriesFor: #hide:!options/generated!public! !
!JQTabs categoriesFor: #load:!actions!public! !
!JQTabs categoriesFor: #method!accessing!public! !
!JQTabs categoriesFor: #onActivate:!events/generated!public! !
!JQTabs categoriesFor: #onBeforeActivate:!events/generated!public! !
!JQTabs categoriesFor: #onBeforeLoad:!events/generated!public! !
!JQTabs categoriesFor: #onCreate:!events/generated!public! !
!JQTabs categoriesFor: #onLoad:!events/generated!public! !
!JQTabs categoriesFor: #refresh!actions!public! !
!JQTabs categoriesFor: #show:!options/generated!public! !

