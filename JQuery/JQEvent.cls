"Filed out from Dolphin Smalltalk"!

JSObject subclass: #JQEvent
	instanceVariableNames: 'owner'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQEvent guid: (GUID fromString: '{141c6269-73df-49ad-ab98-14277be42865}')!

JQEvent comment: ''!

!JQEvent categoriesForClass!JQuery-Core-Objects! !

!JQEvent methodsFor!

currentTarget	"The current DOM element within the event bubbling phase. This attribute will always be equal to the this of the function."		self access: 'currentTarget'!

data	"Contains the optional data passed to jQuery.fn.bind when the current executing handler was bound."		self access: 'data'!

initialize	super initialize.	self setOwner: (JSStream argumentAt: 1)!

isDefaultPrevented	"Returns whether event.preventDefault() was ever called on this event object."		self call: 'isDefaultPrevented'!

isImmediatePropagationStopped	"Returns whether event.stopImmediatePropagation() was ever called on this event object."		self call: 'isImmediatePropagationStopped'!

isPropagationStopped	"Returns whether event.stopPropagation() was ever called on this event object."		self call: 'isPropagationStopped'!

javascriptContentOn: aRenderer	aRenderer render: owner!

namespace	"This attribute contains the namespace specified when the event was triggered."		self access: 'namespace'!

pageX	"The pageX returns the mouse coordinates relative to the document."		self access: 'pageX'!

pageY	"The pageY returns the mouse coordinates relative to the document."		self access: 'pageY'!

preventDefault	"Prevents the browser from executing the default action. Use the method isDefaultPrevented to know whether this method was ever called (on that event object)."		self call: 'preventDefault'!

relatedTarget	"On mouse movement, contains the DOM element which the mouse was previously on when moving onto or off of an element."		self access: 'relatedTarget'!

result	"Will contain the last value returned by an event handler (that wasn't undefined)."		self access: 'result'!

setOwner: anObject	owner := anObject!

stopImmediatePropagation	"Keeps the rest of the handlers from being executed. This method also stops the bubbling by calling event.stopPropagation()."		self call: 'stopImmediatePropagation'!

stopPropagation	"Stops the bubbling of an event to parent elements, preventing any parent handlers from being notified of the event."		self call: 'stopPropagation'!

target	"Contains the DOM element that issued the event."		self access: 'target'!

timeStamp	"The timestamp (in milliseconds) when the event was created."		self access: 'timeStamp'!

type	"Describes the nature of the event."		self access: 'type'! !

!JQEvent categoriesForMethods!
currentTarget!accessing!public! !
data!accessing!public! !
initialize!initialization!public! !
isDefaultPrevented!public!testing! !
isImmediatePropagationStopped!public!testing! !
isPropagationStopped!public!testing! !
javascriptContentOn:!printing!public! !
namespace!accessing!public! !
pageX!accessing!public! !
pageY!accessing!public! !
preventDefault!actions!public! !
relatedTarget!accessing!public! !
result!accessing!public! !
setOwner:!initialization!public! !
stopImmediatePropagation!actions!public! !
stopPropagation!actions!public! !
target!accessing!public! !
timeStamp!accessing!public! !
type!accessing!public! !
!

