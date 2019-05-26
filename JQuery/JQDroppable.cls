"Filed out from Dolphin Smalltalk 7"!

JQWidget subclass: #JQDroppable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQDroppable guid: (GUID fromString: '{03b3cbb6-3396-4e17-9d2c-b12b2d4864ec}')!
JQDroppable comment: 'Creates new droppables on the nodeset supplied by the query.'!
!JQDroppable categoriesForClass!JQuery-UI-Interaction! !
!JQDroppable methodsFor!

accept: aSelectorOrFunction	"All draggables that match the selector will be accepted. If a function is specified, the function will be called for each draggable on the page (passed as the first argument to the function), to provide a custom filter. The function should return true if the draggable should be accepted."	self optionAt: 'accept' put: aSelectorOrFunction!

activeClass: aString	"If specified, the class will be added to the droppable while an acceptable draggable is being dragged."	self optionAt: 'activeClass' put: aString!

addClasses: aBoolean	"If set to false, will prevent the ui-droppable class from being added. This may be desired as a performance optimization when calling .droppable() init on many hundreds of elements."	self optionAt: 'addClasses' put: aBoolean!

greedy: aBoolean	"If true, will prevent event propagation on nested droppables."	self optionAt: 'greedy' put: aBoolean!

hoverClass: aString	"If specified, the class will be added to the droppable while an acceptable draggable is being hovered."	self optionAt: 'hoverClass' put: aString!

method	^ 'droppable'!

onActivate: anObject	"This event is triggered any time an accepted draggable starts dragging. This can be useful if you want to make the droppable 'light up' when it can be dropped on."	self optionAt: 'activate' put: anObject asFunction!

onDeactivate: anObject	"This event is triggered any time an accepted draggable stops dragging."	self optionAt: 'deactivate' put: anObject asFunction!

onDrop: anObject	"This event is triggered when an accepted draggable is dropped 'over' (within the tolerance of) this droppable. In the callback, $(this) represents the droppable the draggable is dropped on. ui.draggable represents the draggable."	self optionAt: 'drop' put: anObject asFunction!

onOut: anObject	"This event is triggered when an accepted draggable is dragged out (within the tolerance of) this droppable."	self optionAt: 'out' put: anObject asFunction!

onOver: anObject	"This event is triggered as an accepted draggable is dragged 'over' (within the tolerance of) this droppable."	self optionAt: 'over' put: anObject asFunction!

scope: aString	"Used to group sets of draggable and droppable items, in addition to droppable's accept option. A draggable with the same scope value as a droppable will be accepted."	self optionAt: 'scope' put: aString!

tolerance: aString	"Specifies which mode to use for testing whether a draggable is 'over' a droppable. Possible values: 'fit', 'intersect', 'pointer', 'touch'.  ''fit'': draggable overlaps the droppable entirely ''intersect'': draggable overlaps the droppable at least 50% ''pointer'': mouse pointer overlaps the droppable ''touch'': draggable overlaps the droppable any amount "	self optionAt: 'tolerance' put: aString! !
!JQDroppable categoriesFor: #accept:!options/generated!public! !
!JQDroppable categoriesFor: #activeClass:!options/generated!public! !
!JQDroppable categoriesFor: #addClasses:!options/generated!public! !
!JQDroppable categoriesFor: #greedy:!options/generated!public! !
!JQDroppable categoriesFor: #hoverClass:!options/generated!public! !
!JQDroppable categoriesFor: #method!accessing!public! !
!JQDroppable categoriesFor: #onActivate:!events/generated!public! !
!JQDroppable categoriesFor: #onDeactivate:!events/generated!public! !
!JQDroppable categoriesFor: #onDrop:!events/generated!public! !
!JQDroppable categoriesFor: #onOut:!events/generated!public! !
!JQDroppable categoriesFor: #onOver:!events/generated!public! !
!JQDroppable categoriesFor: #scope:!options/generated!public! !
!JQDroppable categoriesFor: #tolerance:!options/generated!public! !

