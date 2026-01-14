"Filed out from Dolphin Smalltalk"!

JQWidget subclass: #JQAccordion
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQAccordion guid: (GUID fromString: '{cdee17f0-9619-4562-ad61-2171f5c0cf3a}')!

JQAccordion comment: 'An expandable/collapsible content pane. Applicable when content must be displayed within limited space.'!

!JQAccordion categoriesForClass!JQuery-UI-Widgets! !

!JQAccordion methodsFor!

active: aSelectorOrElementOrjQueryOrBooleanOrNumber	"Selector for the active element. Set to false to display none at start. Needs collapsible: true."	self optionAt: 'active' put: aSelectorOrElementOrjQueryOrBooleanOrNumber!

animate: aBooleanOrString	"Choose your favorite animation, or disable them (set to false). In addition to the default, 'bounceslide' and all defined easing methods are supported ('bounceslide' requires UI Effects Core)."	self optionAt: 'animate' put: aBooleanOrString!

beforeActivate: anObject	"Triggered directly before a panel is activated. Can be canceled to prevent the panel from activating. If the accordion is currently collapsed, ui.oldHeader and ui.oldPanel will be empty jQuery objects. If the accordion is collapsing, ui.newHeader and ui.newPanel will be empty jQuery objects."	self optionAt: 'beforeActivate' put: anObject asFunction!

collapsible: aBoolean	"Whether all the sections can be closed at once. Allows collapsing the active section by the triggering event (click is the default)."	self optionAt: 'collapsible' put: aBoolean!

disabled: aBoolean	"Disables the accordion if set to true."	self optionAt: 'disabled' put: aBoolean!

event: aString	"The event on which to trigger the accordion."	self optionAt: 'event' put: aString!

header: aSelectorOrjQuery	"Selector for the header element."	self optionAt: 'header' put: aSelectorOrjQuery!

heightStyle: aBoolean	"Controls the height of the accordion and each panel. Possible values: 'auto': All panels will be set to the height of the tallest panel. 'fill': Expand to the available height based on the accordion's parent height. 'content': Each panel will be only as tall as its content."	self optionAt: 'heightStyle' put: aBoolean!

icons: anObject	"Icons to use for headers, matching an icon provided by the jQuery UI CSS Framework. Set to false to have no icons displayed."	self optionAt: 'icons' put: anObject!

method	^ 'accordion'!

onActivate: anObject	"Triggered after a panel has been activated (after animation completes). If the accordion was previously collapsed, ui.oldHeader and ui.oldPanel will be empty jQuery objects. If the accordion is collapsing, ui.newHeader and ui.newPanel will be empty jQuery objects."	self optionAt: 'activate' put: anObject asFunction!

onCreate: anObject	"Triggered when the accordion is created. If the accordion is collapsed, ui.header and ui.panel will be empty jQuery objects"	self optionAt: 'create' put: anObject asFunction!

refresh	"Process any headers and panels that were added or removed directly in the DOM and recompute the height of the accordion panels. Results depend on the content and the heightStyle option."		self action: 'refresh'! !

!JQAccordion categoriesForMethods!
active:!options/generated!public! !
animate:!options/generated!public! !
beforeActivate:!events/generated!public! !
collapsible:!options/generated!public! !
disabled:!options/generated!public! !
event:!options/generated!public! !
header:!options/generated!public! !
heightStyle:!options/generated!public! !
icons:!options/generated!public! !
method!accessing!public! !
onActivate:!events/generated!public! !
onCreate:!events/generated!public! !
refresh!actions!public! !
!

