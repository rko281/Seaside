"Filed out from Dolphin Smalltalk 7"!

JQWidget subclass: #JQSelectable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQSelectable guid: (GUID fromString: '{dea21151-693e-48fd-aca1-17c894a7d38d}')!
JQSelectable comment: 'Creates new selectable on the nodeset supplied by the query.'!
!JQSelectable categoriesForClass!JQuery-UI-Interaction! !
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
!JQSelectable categoriesFor: #autoRefresh:!options/generated!public! !
!JQSelectable categoriesFor: #cancel:!options/generated!public! !
!JQSelectable categoriesFor: #delay:!options/generated!public! !
!JQSelectable categoriesFor: #distance:!options/generated!public! !
!JQSelectable categoriesFor: #filter:!options/generated!public! !
!JQSelectable categoriesFor: #method!accessing!public! !
!JQSelectable categoriesFor: #onSelected:!events/generated!public! !
!JQSelectable categoriesFor: #onSelecting:!events/generated!public! !
!JQSelectable categoriesFor: #onStart:!events/generated!public! !
!JQSelectable categoriesFor: #onStop:!events/generated!public! !
!JQSelectable categoriesFor: #onUnselected:!events/generated!public! !
!JQSelectable categoriesFor: #onUnselecting:!events/generated!public! !
!JQSelectable categoriesFor: #refresh!actions!public! !
!JQSelectable categoriesFor: #tolerance:!options/generated!public! !

