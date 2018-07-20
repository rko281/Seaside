"Filed out from Dolphin Smalltalk 7"!

JQWidget subclass: #JQButton
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQButton guid: (GUID fromString: '{de5acf8f-4d2b-4dcd-8f48-319b4d730a0e}')!
JQButton comment: 'Button enhances standard form elements like button, input of type submit or reset or anchors to themable buttons with appropiate mouseover and active styles.In addition to basic push buttons, radio buttons and checkboxes (inputs of type radio and checkbox) can be converted to buttons: Their associated label is styled to appear as the button, while the underlying input is updated on click.Buttons can be grouped using the buttonSet method, which should be always applied for radio buttons.'!
!JQButton categoriesForClass!JQuery-UI-Widgets! !
!JQButton methodsFor!

disabled: aBoolean	"Disables (true) or enables (false) the button. Can be set when initialising (first creating) the button."	self optionAt: 'disabled' put: aBoolean!

icons	^ self options at: 'icons' ifAbsentPut: [ GRSmallDictionary new ]!

icons: anOptions	"Icons to display, with or without text (see text option). The primary icon is displayed by default on the left of the label text, the secondary by default is on the right. Value for the primary and secondary properties must be a classname (String), eg. 'ui-icon-gear'. For using only one icon: icons: {primary:'ui-icon-locked'}. For using two icons: icons: {primary:'ui-icon-gear',secondary:'ui-icon-triangle-1-s'}"	self optionAt: 'icons' put: anOptions!

label: aString	"Text to show on the button. When not specified (null), the element's html content is used, or its value attribute when it's an input element of type submit or reset; or the html content of the associated label element if its an input of type radio or checkbox"	self optionAt: 'label' put: aString!

method	^ 'button'!

primaryIcon: aString	self icons at: 'primary' put: aString!

secondaryIcon: aString	self icons at: 'secondary' put: aString!

text: aBoolean	"Whether to show any text - when set to false (display no text), icons (see icons option) must be enabled, otherwise it'll be ignored."	self optionAt: 'text' put: aBoolean! !
!JQButton categoriesFor: #disabled:!options!public! !
!JQButton categoriesFor: #icons!accessing!public! !
!JQButton categoriesFor: #icons:!options/generated!public! !
!JQButton categoriesFor: #label:!options/generated!public! !
!JQButton categoriesFor: #method!accessing!public! !
!JQButton categoriesFor: #primaryIcon:!options!public! !
!JQButton categoriesFor: #secondaryIcon:!options!public! !
!JQButton categoriesFor: #text:!options/generated!public! !

