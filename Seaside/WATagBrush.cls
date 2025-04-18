﻿"Filed out from Dolphin Smalltalk"!

WABrush subclass: #WATagBrush
	instanceVariableNames: 'attributes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATagBrush guid: (GUID fromString: '{026ac22e-117b-4650-ad63-5f0d10ac82bb}')!

WATagBrush comment: 'This is the superclass for all XML element classes. Its main additions are- element name (#tag)- attributes (instance of WAHtmlAttributes)- common events (onXXX), this is a hack and would better be solved with traits'!

!WATagBrush categoriesForClass!Base! !

!WATagBrush methodsFor!

accessKey: aString	"Set a keyboard shortcut to access an element. An access key is a single character from the document character set.	Pressing an access key assigned to an element gives focus to the element. The action that occurs when an element receives focus depends on the element. For example, when a user activates a link defined by the A element, the user agent generally follows the link. When a user activates a radio button, the user agent changes the value of the radio button. When the user activates a text field, it allows input, etc.The following elements support the accesskey attribute: A, AREA, BUTTON, INPUT, LABEL, and LEGEND, and TEXTAREA.	The invocation of access keys depends on the underlying system. For instance, on machines running MS Windows, one generally has to press the 'alt' key in addition to the access key. On Apple systems, one generally has to press the 'cmd' key in addition to the access key."	self attributes at: 'accesskey' put: aString!

after	"This template method is called directly after rendering the content of the receiver."!

attributeAt: aKey	^ self attributes at: aKey!

attributeAt: aKey ifAbsent: aBlock	^ self attributes at: aKey ifAbsent: aBlock!

attributeAt: aKey ifAbsentPut: aBlock	^ self attributes at: aKey ifAbsentPut: aBlock!

attributeAt: aKey ifPresent: aBlock	^ self attributes at: aKey ifPresent: aBlock!

attributeAt: aKey put: aValue	^ self attributes at: aKey put: aValue!

attributes	^ attributes ifNil: [ attributes := WAHtmlAttributes new ]!

attributes: anHtmlAttributes	attributes := anHtmlAttributes!

autofocus	"supported on:	- Opera 9"	self attributeAt: 'autofocus' put: true!

before	"This template method is called directly before rendering the content of the receiver."!

class: aString	"This attribute assigns one or more class names to an element; the element may be said to belong to these classes. A class name may be shared by several element instances. Multiple classes might be added to one brush."	self attributes addClass: aString!

class: aString if: aBoolean	"Adds the class aString to the receiving element if aBoolean is true. 		Example:		html div		class: 'error' if: self hasError;		with: self errorMessage"	aBoolean		ifTrue: [ self class: aString ]!

closeTag	"Close the receiving tag onto the document."	self document closeTag: self tag!

dataAttributeAt: aString put: aValue	self attributeAt: 'data-',aString put: aValue!

dataAttributeAt: aString put: aValue if: aBoolean	aBoolean ifTrue:[ self dataAttributeAt: aString put: aValue ]!

direction: aString	"Set the text direction ltr (left-to-right) or right-to-left (rtl).	Not supported on:	APPLET, BASE, BASEFONT, BR, FRAME, FRAMESET, IFRAME, PARAM, SCRIPT"	self attributes at: 'dir' put: aString!

disabled	"When set for a form control, this boolean attribute disables the control for user input.When set, the disabled attribute has the following effects on an element:	-	Disabled controls do not receive focus.	-	Disabled controls are skipped in tabbing navigation.	-	Disabled controls cannot be successful (= will not be submitted).			The following elements support the disabled attribute: BUTTON, INPUT, OPTGROUP, OPTION, SELECT, and TEXTAREA. This one other example of functionality implemented way too high in the class hierarchy because we don't have traits."	self disabled: true!

disabled: aBoolean	self attributes at: 'disabled' put: aBoolean!

document	^ canvas document!

ensureId	"Answer the id of the receiving attribute. In case the receiver doesn't have an id yet, generate a new one."	^ self attributes at: 'id' ifAbsentPut: [ canvas nextId ]!

id	^ self attributes at: 'id'!

id: aString	"The id attribute assigns a identifier to an element. The id of an element must be unique within a document."	self attributes at: 'id' put: aString!

irrelevant	"All elements may have the irrelevant content attribute set. The irrelevant  attribute is a boolean attribute. When specified on an element, it indicates that the element is not yet, or is no longer, relevant. User agents should not render elements that have the irrelevant  attribute specified."	self attributeAt: 'irrelevant' put: true!

isClosed	"Answer true if this tag should be closed immediately, such as <br />."	^ false!

isDisabled	"answers whether the receiver is disabled"	^ self attributes at: 'disabled' ifAbsent: [ false ]!

language: aString	"Set the language code."	self attributes		at: 'lang' put: aString;		at: 'xml:lang' put: aString!

onAbort: anObject	"The abort event occurs when page loading is stopped before an image has been allowed to completely load."	self document scriptGenerator		event: 'abort'		do: anObject		on: self!

onAuxiliaryClick: anObject	"The auxclick event type MUST be dispatched on the topmost	event target indicated by the pointer, when the user presses down and releases the non-primary pointer button, or otherwise activates the pointer in a manner that simulates such an action. The actuation method of the mouse button depends upon the pointer device and the environment configuration, e.g., it MAY depend on the screen location or the delay between the press and release of the pointing device button."	self document scriptGenerator		event: 'auxclick'		do: anObject		on: self!

onBlur: anObject	"The onblurs event occurs when the element that is in focus, loses that focus."	self document scriptGenerator		event: 'blur'		do: anObject		on: self!

onCancel: anObject	"Fired at dialog elements when they are canceled by the user (e.g. by pressing the Escape key)"	self document scriptGenerator		event: 'cancel'		do: anObject		on: self!

onChange: anObject	"The onchange event occurs when a select input element has a selection made or when a text input element has a change in the text."	self document scriptGenerator		event: 'change'		do: anObject		on: self!

onClick: anObject	"The onclick event occurs when the pointing device button is clicked over an element."	self document scriptGenerator		event: 'click'		do: anObject		on: self!

onClose: anObject	"Fired at dialog elements when they are closed, and at WebSocket elements when the connection is terminated."	self document scriptGenerator		event: 'close'		do: anObject		on: self!

onContextMenu: anObject	"Fired at elements when the user requests their context menu."	self document scriptGenerator		event: 'contextmenu'		do: anObject		on: self!

onCopy: anObject	"Fired at elements when the user copies data to the clipboard."	self document scriptGenerator		event: 'copy'		do: anObject		on: self!

onCueChange: anObject	"One or more cues in the track have become active or stopped being active."	self document scriptGenerator		event: 'cuechange'		do: anObject		on: self!

onCut: anObject	"Fired at elements when the user copies the selected data on the clipboard and removes the selection from the document."	self document scriptGenerator		event: 'cut'		do: anObject		on: self!

onDoubleClick: anObject	"The ondblclick event occurs when the pointing device button is double clicked over an element."	self document scriptGenerator		event: 'dblclick'		do: anObject		on: self!

onDrag: anObject	self document scriptGenerator		event: 'drag'		do: anObject		on: self!

onDragEnd: anObject	self document scriptGenerator		event: 'dragend'		do: anObject		on: self!

onDragEnter: anObject	self document scriptGenerator		event: 'dragenter'		do: anObject		on: self!

onDragExit: anObject	self document scriptGenerator		event: 'dragexit'		do: anObject		on: self!

onDragLeave: anObject	self document scriptGenerator		event: 'dragleave'		do: anObject		on: self!

onDragOver: anObject	self document scriptGenerator		event: 'dragover'		do: anObject		on: self!

onDragStart: anObject	self document scriptGenerator		event: 'dragstart'		do: anObject		on: self!

onDrop: anObject	self document scriptGenerator		event: 'drop'		do: anObject		on: self!

onError: anObject	"Fired when unexpected errors occur (e.g. networking errors, script errors, decoding errors)."	self document scriptGenerator		event: 'error'		do: anObject		on: self!

onFocus: anObject	"The onfocus event occurs when an element receives focus either by the pointing device or by tabbing navigation."	self document scriptGenerator		event: 'focus'		do: anObject		on: self!

onInput: anObject	"Fired at controls when the user changes the value (see also the change event)."	self document scriptGenerator		event: 'input'		do: anObject		on: self!

onInvalid: anObject	"Fired at controls during form validation if they do not satisfy their constraints."	self document scriptGenerator		event: 'invalid'		do: anObject		on: self!

onKeyDown: anObject	"The onkeydown event occurs when a key is pressed down over an element."	self document scriptGenerator		event: 'keydown'		do: anObject		on: self!

onKeyPress: anObject	"The onkeypress event occurs when a key is pressed and released over an element."	self document scriptGenerator		event: 'keypress'		do: anObject		on: self!

onKeyUp: anObject	"The onkeyup event occurs when a key is released over an element."	self document scriptGenerator		event: 'keyup'		do: anObject		on: self!

onLoad: anObject	"The onload event occurs when the user agent finishes loading a window."	self document scriptGenerator		event: 'load'		do: anObject		on: self!

onMouseDown: anObject	"The onmousedown event occurs when the pointing device button is pressed over an element."	self document scriptGenerator		event: 'mousedown'		do: anObject		on: self!

onMouseEnter: anObject	"A user agent MUST dispatch this event when a pointing device is moved onto the boundaries of an element or one of its descendent elements. This event type is similar to mouseover, but	differs in that it does not bubble, and MUST NOT be dispatched when the pointer device moves from an element onto the boundaries of one of its descendent elements."	self document scriptGenerator		event: 'mouseenter'		do: anObject		on: self!

onMouseLeave: anObject	"A user agent MUST dispatch this event when a pointing device is moved off of the boundaries of an element and all of its descendent elements. This event type is similar to mouseout,	but differs in that does not bubble, and that it MUST NOT be dispatched until the pointing device has left the boundaries of the element and the boundaries of all of its children."	self document scriptGenerator		event: 'mouseleave'		do: anObject		on: self!

onMouseMove: anObject	"The onmousemove event occurs when the pointing device is moved while it is over an element."	self document scriptGenerator		event: 'mousemove'		do: anObject		on: self!

onMouseOut: anObject	"The onmouseout event occurs when the pointing device is moved away from an element."	self document scriptGenerator		event: 'mouseout'		do: anObject		on: self!

onMouseOver: anObject	"The onmouseover event occurs when the pointing device is moved onto an element."	self document scriptGenerator		event: 'mouseover'		do: anObject		on: self!

onMouseUp: anObject	"The onmouseup event occurs when the pointing device button is released over an element."	self document scriptGenerator		event: 'mouseup'		do: anObject		on: self!

onPaste: anObject	self document scriptGenerator		event: 'paste'		do: anObject		on: self!

onReset: anObject	"The onreset event occurs when a form is reset."	self document scriptGenerator		event: 'reset'		do: anObject		on: self!

onResize: anObject	"The resize event occurs when a document view is resized."	self document scriptGenerator		event: 'resize'		do: anObject		on: self!

onScroll: anObject	"The scroll event occurs when a document view is scrolled."	self document scriptGenerator		event: 'scroll'		do: anObject		on: self!

onSecurityPolicyViolation: anObject	"Fired at elements when a Content Security Policy violation is generated."	self document scriptGenerator		event: 'securitypolicyviolation'		do: anObject		on: self!

onSelect: anObject	"The onselect event occurs when a user selects some text in a text field."	self document scriptGenerator		event: 'select'		do: anObject		on: self!

onSubmit: anObject	"The onsubmit event occurs when a form is submitted."	self document scriptGenerator		event: 'submit'		do: anObject		on: self!

onToggle: anObject	"Fired at details elements when they open or close."	self document scriptGenerator		event: 'toggle'		do: anObject		on: self!

onUnload: anObject	"The onunload event occurs when the user agent removes a document from a window."	self document scriptGenerator		event: 'unload'		do: anObject		on: self!

onWheel: anObject	"A user agent MUST dispatch this event when a mouse wheel has been rotated around any axis, or when an equivalent input device (such as a mouse-ball, certain tablets or touchpads, etc.) has emulated such an action. Depending on the platform and input device, diagonal wheel deltas MAY be delivered either as a single wheel event with multiple non-zero axes or as separate wheel events for each non-zero axis. The typical default action of the wheel event type is	to scroll (or in some cases, zoom) the document by the indicated amount. If this event is canceled, the implementation MUST NOT scroll or zoom the document (or perform whatever other implementation-specific default action is associated with this event type)."	self document scriptGenerator		event: 'wheel'		do: anObject		on: self!

openTag	"Open the receiving and all associated attributes onto the document."	self document openTag: self tag attributes: attributes closed: self isClosed!

required	"supported on:	- Opera 9"	self attributeAt: 'required' put: true!

slot: aString	"The slot global attribute assigns a slot in a shadow DOM shadow tree to an element: An element with a slot attribute is assigned to the slot created by the <slot> element whose name attribute's value matches that slot attribute's value."	self attributes at: 'slot' put: aString!

storeCallback: aCallback	^ canvas callbacks store: aCallback!

style: aString	"This attribute offers optional CSS style information. The attribute is deprecated and should be avoided in favor of an external stylesheet. Multiple styles might be added to one brush."	self attributes addStyle: aString!

tabIndex: aString	"This attribute specifies the position of the current element in the tabbing order for the current document. This value must be a number between 0 and 32767.	The tabbing order defines the order in which elements will receive focus when navigated by the user via the keyboard. The tabbing order may include elements nested within other elements.	The following elements support the tabindex attribute: A, AREA, BUTTON, INPUT, OBJECT, SELECT, and TEXTAREA."	self attributes at: 'tabindex' put: aString!

tag	self subclassResponsibility!

title: aString	"This attribute offers advisory information about the element for which it is set. Visual browsers frequently display the title as a 'tool tip'."	self attributes at: 'title' put: aString!

with: anObject	"Render anObject into the receiver. Make sure that you call #with: last in the cascade, as this method will serialize the tag onto the output document."	self openTag.	super with: [		self before.		canvas render: anObject.		self after ].	self isClosed		ifFalse: [ self closeTag ]!

withLineBreaks: aString	"Renders text preserving line breaks."	self with: [ canvas withLineBreaks: aString ]! !

!WATagBrush categoriesForMethods!
accessKey:!attributes/keyboard!public! !
after!private! !
attributeAt:!accessing/attributes!public! !
attributeAt:ifAbsent:!accessing/attributes!public! !
attributeAt:ifAbsentPut:!accessing/attributes!public! !
attributeAt:ifPresent:!accessing/attributes!public! !
attributeAt:put:!accessing/attributes!public! !
attributes!accessing!public! !
attributes:!accessing!public! !
autofocus!attributes!public! !
before!private! !
class:!attributes/core!public! !
class:if:!convenience!public! !
closeTag!private! !
dataAttributeAt:put:!attributes!public! !
dataAttributeAt:put:if:!attributes!public! !
direction:!attributes/language!public! !
disabled!attributes!public! !
disabled:!attributes!public! !
document!accessing!public! !
ensureId!public! !
id!accessing!public! !
id:!attributes/core!public! !
irrelevant!attributes!public! !
isClosed!public!testing! !
isDisabled!attributes!public! !
language:!attributes/language!public! !
onAbort:!attributes/events!public! !
onAuxiliaryClick:!attributes/events!public! !
onBlur:!attributes/events!public! !
onCancel:!attributes/events!public! !
onChange:!attributes/events!public! !
onClick:!attributes/events!public! !
onClose:!attributes/events!public! !
onContextMenu:!attributes/events!public! !
onCopy:!attributes/events!public! !
onCueChange:!attributes/events!public! !
onCut:!attributes/events!public! !
onDoubleClick:!attributes/events!public! !
onDrag:!attributes/events!public! !
onDragEnd:!attributes/events!public! !
onDragEnter:!attributes/events!public! !
onDragExit:!attributes/events!public! !
onDragLeave:!attributes/events!public! !
onDragOver:!attributes/events!public! !
onDragStart:!attributes/events!public! !
onDrop:!attributes/events!public! !
onError:!attributes/events!public! !
onFocus:!attributes/events!public! !
onInput:!attributes/events!public! !
onInvalid:!attributes/events!public! !
onKeyDown:!attributes/events!public! !
onKeyPress:!attributes/events!public! !
onKeyUp:!attributes/events!public! !
onLoad:!attributes/events!public! !
onMouseDown:!attributes/events!public! !
onMouseEnter:!attributes/events!public! !
onMouseLeave:!attributes/events!public! !
onMouseMove:!attributes/events!public! !
onMouseOut:!attributes/events!public! !
onMouseOver:!attributes/events!public! !
onMouseUp:!attributes/events!public! !
onPaste:!attributes/events!public! !
onReset:!attributes/events!public! !
onResize:!attributes/events!public! !
onScroll:!attributes/events!public! !
onSecurityPolicyViolation:!attributes/events!public! !
onSelect:!attributes/events!public! !
onSubmit:!attributes/events!public! !
onToggle:!attributes/events!public! !
onUnload:!attributes/events!public! !
onWheel:!attributes/events!public! !
openTag!private! !
required!attributes!public! !
slot:!attributes/webcomponents!public! !
storeCallback:!private! !
style:!attributes/core!public! !
tabIndex:!attributes/keyboard!public! !
tag!accessing!public! !
title:!attributes/core!public! !
with:!public! !
withLineBreaks:!convenience!public! !
!

!WATagBrush class methodsFor!

isAbstract 	^ self == WATagBrush!

tag	"WASelectTag tag"	"WAGenericTag tag"	^ (self selectors includes: #tag)		ifTrue: [ self new tag ]		ifFalse: [ nil ]! !

!WATagBrush class categoriesForMethods!
isAbstract!public!testing! !
tag!code generation!public! !
!

