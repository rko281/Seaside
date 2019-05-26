"Filed out from Dolphin Smalltalk 7"!

JQWidget subclass: #JQSortable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQSortable guid: (GUID fromString: '{657a138d-b445-40ba-94b7-bdf9bf9210fe}')!
JQSortable comment: 'Creates new sortable on the nodeset supplied by the query.'!
!JQSortable categoriesForClass!JQuery-UI-Interaction! !
!JQSortable methodsFor!

appendTo: aString	"Defines where the helper that moves with the mouse is being appended to during the drag (for example, to resolve overlap/zIndex issues)."	self optionAt: 'appendTo' put: aString!

axis: aString	"If defined, the items can be dragged only horizontally or vertically. Possible values:'x', 'y'."	self optionAt: 'axis' put: aString!

cancel	"Cancels a change in the current sortable and reverts it back to how it was before the current sort started. Useful in the stop and receive callback functions."		self action: 'cancel'!

cancel: aSelector	"Prevents sorting if you start on elements matching the selector."	self optionAt: 'cancel' put: aSelector!

connectWith: aSelector	"Takes a jQuery selector with items that also have sortables applied. If used, the sortable is now connected to the other one-way, so you can drag from this sortable to the other."	self optionAt: 'connectWith' put: aSelector!

containment: anElementOrStringOrSelector	"Constrains dragging to within the bounds of the specified element - can be a DOM element, 'parent', 'document', 'window', or a jQuery selector. Note: the element specified for containment must have a calculated width and height (though it need not be explicit), so for example, if you have float:left sortable children and specify containment:'parent' be sure to have float:left on the sortable/parent container as well or it will have height: 0, causing undefined behavior."	self optionAt: 'containment' put: anElementOrStringOrSelector!

cursor: aString	"Defines the cursor that is being shown while sorting."	self optionAt: 'cursor' put: aString!

cursorAt: anObject	"Moves the sorting element or helper so the cursor always appears to drag from the same position. Coordinates can be given as a hash using a combination of one or two keys: { top, left, right, bottom }."	self optionAt: 'cursorAt' put: anObject!

delay: anInteger	"Time in milliseconds to define when the sorting should start. It helps preventing unwanted drags when clicking on an element."	self optionAt: 'delay' put: anInteger!

distance: anInteger	"Tolerance, in pixels, for when sorting should start. If specified, sorting will not start until after mouse is dragged beyond distance. Can be used to allow for clicks on elements within a handle."	self optionAt: 'distance' put: anInteger!

dropOnEmpty: aBoolean	"If false items from this sortable can't be dropped to an empty linked sortable."	self optionAt: 'dropOnEmpty' put: aBoolean!

forceHelperSize: aBoolean	"If true, forces the helper to have a size."	self optionAt: 'forceHelperSize' put: aBoolean!

forcePlaceholderSize: aBoolean	"If true, forces the placeholder to have a size."	self optionAt: 'forcePlaceholderSize' put: aBoolean!

grid: anArray	"Snaps the sorting element or helper to a grid, every x and y pixels. Array values: [x, y]"	self optionAt: 'grid' put: anArray!

handle: aSelectorOrElement	"Restricts sort start click to the specified element."	self optionAt: 'handle' put: aSelectorOrElement!

helper: aStringOrFunction	"Allows for a helper element to be used for dragging display. The supplied function receives the event and the element being sorted, and should return a DOMElement to be used as a custom proxy helper. Possible values: 'original', 'clone'"	self optionAt: 'helper' put: aStringOrFunction!

items: aSelector	"Specifies which items inside the element should be sortable."	self optionAt: 'items' put: aSelector!

method	^ 'sortable'!

onActivate: anObject	"This event is triggered when using connected lists, every connected list on drag start receives it."	self optionAt: 'activate' put: anObject asFunction!

onBeforeStop: anObject	"This event is triggered when sorting stops, but when the placeholder/helper is still available."	self optionAt: 'beforeStop' put: anObject asFunction!

onChange: anObject	"This event is triggered during sorting, but only when the DOM position has changed."	self optionAt: 'change' put: anObject asFunction!

onDeactivate: anObject	"This event is triggered when sorting was stopped, is propagated to all possible connected lists."	self optionAt: 'deactivate' put: anObject asFunction!

onOut: anObject	"This event is triggered when a sortable item is moved away from a connected list."	self optionAt: 'out' put: anObject asFunction!

onOver: anObject	"This event is triggered when a sortable item is moved into a connected list."	self optionAt: 'over' put: anObject asFunction!

onReceive: anObject	"This event is triggered when a connected sortable list has received an item from another list."	self optionAt: 'receive' put: anObject asFunction!

onRemove: anObject	"This event is triggered when a sortable item has been dragged out from the list and into another."	self optionAt: 'remove' put: anObject asFunction!

onSort: anObject	"This event is triggered during sorting."	self optionAt: 'sort' put: anObject asFunction!

onStart: anObject	"This event is triggered when sorting starts."	self optionAt: 'start' put: anObject asFunction!

onStop: anObject	"This event is triggered when sorting has stopped."	self optionAt: 'stop' put: anObject asFunction!

onUpdate: anObject	"This event is triggered when the user stopped sorting and the DOM position has changed."	self optionAt: 'update' put: anObject asFunction!

opacity: aFloat	"Defines the opacity of the helper while sorting. From 0.01 to 1"	self optionAt: 'opacity' put: aFloat!

placeholder: aString	"Class that gets applied to the otherwise white space."	self optionAt: 'placeholder' put: aString!

refresh	"Refresh the sortable items."		self action: 'refresh'!

refreshPositions	"Refresh the cached positions of the sortables' items."		self action: 'refreshPositions'!

revert: aBooleanInteger	"If set to true, the item will be reverted to its new DOM position with a smooth animation. Optionally, it can also be set to a number that controls the duration of the animation in ms."	self optionAt: 'revert' put: aBooleanInteger!

scroll: aBoolean	"If set to true, the page scrolls when coming to an edge."	self optionAt: 'scroll' put: aBoolean!

scrollSensitivity: anInteger	"Defines how near the mouse must be to an edge to start scrolling."	self optionAt: 'scrollSensitivity' put: anInteger!

scrollSpeed: anInteger	"The speed at which the window should scroll once the mouse pointer gets within the scrollSensitivity distance."	self optionAt: 'scrollSpeed' put: anInteger!

tolerance: aString	"This is the way the reordering behaves during drag. Possible values: 'intersect', 'pointer'. In some setups, 'pointer' is more natural.  ''intersect'': draggable overlaps the droppable at least 50% ''pointer'': mouse pointer overlaps the droppable "	self optionAt: 'tolerance' put: aString! !
!JQSortable categoriesFor: #appendTo:!options/generated!public! !
!JQSortable categoriesFor: #axis:!options/generated!public! !
!JQSortable categoriesFor: #cancel!actions!public! !
!JQSortable categoriesFor: #cancel:!options/generated!public! !
!JQSortable categoriesFor: #connectWith:!options/generated!public! !
!JQSortable categoriesFor: #containment:!options/generated!public! !
!JQSortable categoriesFor: #cursor:!options/generated!public! !
!JQSortable categoriesFor: #cursorAt:!options/generated!public! !
!JQSortable categoriesFor: #delay:!options/generated!public! !
!JQSortable categoriesFor: #distance:!options/generated!public! !
!JQSortable categoriesFor: #dropOnEmpty:!options/generated!public! !
!JQSortable categoriesFor: #forceHelperSize:!options/generated!public! !
!JQSortable categoriesFor: #forcePlaceholderSize:!options/generated!public! !
!JQSortable categoriesFor: #grid:!options/generated!public! !
!JQSortable categoriesFor: #handle:!options/generated!public! !
!JQSortable categoriesFor: #helper:!options/generated!public! !
!JQSortable categoriesFor: #items:!options/generated!public! !
!JQSortable categoriesFor: #method!accessing!public! !
!JQSortable categoriesFor: #onActivate:!events/generated!public! !
!JQSortable categoriesFor: #onBeforeStop:!events/generated!public! !
!JQSortable categoriesFor: #onChange:!events/generated!public! !
!JQSortable categoriesFor: #onDeactivate:!events/generated!public! !
!JQSortable categoriesFor: #onOut:!events/generated!public! !
!JQSortable categoriesFor: #onOver:!events/generated!public! !
!JQSortable categoriesFor: #onReceive:!events/generated!public! !
!JQSortable categoriesFor: #onRemove:!events/generated!public! !
!JQSortable categoriesFor: #onSort:!events/generated!public! !
!JQSortable categoriesFor: #onStart:!events/generated!public! !
!JQSortable categoriesFor: #onStop:!events/generated!public! !
!JQSortable categoriesFor: #onUpdate:!events/generated!public! !
!JQSortable categoriesFor: #opacity:!options/generated!public! !
!JQSortable categoriesFor: #placeholder:!options/generated!public! !
!JQSortable categoriesFor: #refresh!actions!public! !
!JQSortable categoriesFor: #refreshPositions!actions!public! !
!JQSortable categoriesFor: #revert:!options/generated!public! !
!JQSortable categoriesFor: #scroll:!options/generated!public! !
!JQSortable categoriesFor: #scrollSensitivity:!options/generated!public! !
!JQSortable categoriesFor: #scrollSpeed:!options/generated!public! !
!JQSortable categoriesFor: #tolerance:!options/generated!public! !

