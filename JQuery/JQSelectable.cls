"Filed out from Dolphin Smalltalk"!

JQWidget subclass: #JQSelectable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQSelectable guid: (GUID fromString: '{14ffd6ad-7a4f-47ac-962a-fa97f2b64938}')!

JQSelectable comment: 'Creates new selectable on the nodeset supplied by the query.'!

!JQSelectable categoriesForClass!Interaction! !

!JQSelectable methodsFor!

autoRefresh: aBoolean	"This determines whether to refresh (recalculate) the position and size of each selectee at the beginning of each select operation. If you have many many items, you may want to set this to false and call the refresh method manually."	self optionAt: 'autoRefresh' put: aBoolean!

cancel: aSelector	"Prevents selecting if you start on elements matching the selector."	self optionAt: 'cancel' put: aSelector!

delay: anInteger	"Time in milliseconds to define when the selecting should start. It helps preventing unwanted selections when clicking on an element."	self optionAt: 'delay' put: anInteger!

distance: anInteger	"Tolerance, in pixels, for when selecting should start. If specified, selecting will not start until after mouse is dragged beyond distance."	self optionAt: 'distance' put: anInteger!

filter: aSelector	"The matching child elements will be made selectees (able to be selected)."	self optionAt: 'filter' put: aSelector!

method	^ 'selectable'!

onSelected: anObject	"This event is triggered at the end of the select operation, on each element added to the selection."	self optionAt: 'selected' put: anObject asFunction!

onSelecting: anObject	"This event is triggered during the select operation, on each element added to the selection."	self optionAt: 'selecting' put: anObject asFunction!

onStart: anObject	"This event is triggered at the beginning of the select operation."	self optionAt: 'start' put: anObject asFunction!

onStop: anObject	"This event is triggered at the end of the select operation."	self optionAt: 'stop' put: anObject asFunction!

onUnselected: anObject	"This event is triggered at the end of the select operation, on each element removed from the selection."	self optionAt: 'unselected' put: anObject asFunction!

onUnselecting: anObject	"This event is triggered during the select operation, on each element removed from the selection."	self optionAt: 'unselecting' put: anObject asFunction!

refresh	"Refresh the position and size of each selectee element."		self action: 'refresh'!

tolerance: aString	"Possible values: 'touch', 'fit'.  ''fit'': draggable overlaps the droppable entirely ''touch'': draggable overlaps the droppable any amount "	self optionAt: 'tolerance' put: aString! !

!JQSelectable categoriesForMethods!
autoRefresh:!options/generated!public! !
cancel:!options/generated!public! !
delay:!options/generated!public! !
distance:!options/generated!public! !
filter:!options/generated!public! !
method!accessing!public! !
onSelected:!events/generated!public! !
onSelecting:!events/generated!public! !
onStart:!events/generated!public! !
onStop:!events/generated!public! !
onUnselected:!events/generated!public! !
onUnselecting:!events/generated!public! !
refresh!actions!public! !
tolerance:!options/generated!public! !
!

