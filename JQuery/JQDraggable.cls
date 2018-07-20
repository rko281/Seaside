"Filed out from Dolphin Smalltalk 7"!

JQWidget subclass: #JQDraggable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQDraggable guid: (GUID fromString: '{f22fc609-db89-4e3f-b9f0-6937fc748bbf}')!
JQDraggable comment: 'Creates new draggables on the nodeset supplied by the query.'!
!JQDraggable categoriesForClass!JQuery-UI-Interaction! !
!JQDraggable methodsFor!

addClasses: aBoolean	"If set to false, will prevent the ui-draggable class from being added. This may be desired as a performance optimization when calling .draggable() init on many hundreds of elements."	self optionAt: 'addClasses' put: aBoolean!

appendTo: anElementOrSelector	"The element passed to or selected by the appendTo option will be used as the draggable helper's container during dragging. By default, the helper is appended to the same container as the draggable."	self optionAt: 'appendTo' put: anElementOrSelector!

axis: aString	"Constrains dragging to either the horizontal (x) or vertical (y) axis. Possible values: 'x', 'y'."	self optionAt: 'axis' put: aString!

cancel: aSelector	"Prevents dragging from starting on specified elements."	self optionAt: 'cancel' put: aSelector!

connectToSortable: aSelector	"Allows the draggable to be dropped onto the specified sortables. If this option is used (helper must be set to 'clone' in order to work flawlessly), a draggable can be dropped onto a sortable list and then becomes part of it. Note: Specifying this option as an array of selectors has been removed."	self optionAt: 'connectToSortable' put: aSelector!

containment: aSelectorOrElementOrStringOrArray	"Constrains dragging to within the bounds of the specified element or region. Possible string values: 'parent', 'document', 'window', [x1, y1, x2, y2]."	self optionAt: 'containment' put: aSelectorOrElementOrStringOrArray!

cursor: aString	"The css cursor during the drag operation."	self optionAt: 'cursor' put: aString!

cursorAt: anObject	"Sets the offset of the dragging helper relative to the mouse cursor. Coordinates can be given as a hash using a combination of one or two keys: { top, left, right, bottom }."	self optionAt: 'cursorAt' put: anObject!

delay: anInteger	"Time in milliseconds after mousedown until dragging should start. This option can be used to prevent unwanted drags when clicking on an element."	self optionAt: 'delay' put: anInteger!

distance: anInteger	"Distance in pixels after mousedown the mouse must move before dragging should start. This option can be used to prevent unwanted drags when clicking on an element."	self optionAt: 'distance' put: anInteger!

grid: anArray	"Snaps the dragging helper to a grid, every x and y pixels. Array values: [x, y]"	self optionAt: 'grid' put: anArray!

handle: anElementOrSelector	"If specified, restricts drag start click to the specified element(s)."	self optionAt: 'handle' put: anElementOrSelector!

helper: aStringOrFunction	"Allows for a helper element to be used for dragging display. Possible values: 'original', 'clone', Function. If a function is specified, it must return a DOMElement."	self optionAt: 'helper' put: aStringOrFunction!

iframeFix: aBooleanOrSelector	"Prevent iframes from capturing the mousemove events during a drag. Useful in combination with cursorAt, or in any case, if the mouse cursor is not over the helper. If set to true, transparent overlays will be placed over all iframes on the page. If a selector is supplied, the matched iframes will have an overlay placed over them."	self optionAt: 'iframeFix' put: aBooleanOrSelector!

method	^ 'draggable'!

onDrag: anObject	"This event is triggered when the mouse is moved during the dragging."	self optionAt: 'drag' put: anObject asFunction!

onStart: anObject	"This event is triggered when dragging starts."	self optionAt: 'start' put: anObject asFunction!

onStop: anObject	"This event is triggered when dragging stops."	self optionAt: 'stop' put: anObject asFunction!

opacity: aFloat	"Opacity for the helper while being dragged."	self optionAt: 'opacity' put: aFloat!

refreshPositions: aBoolean	"If set to true, all droppable positions are calculated on every mousemove. Caution: This solves issues on highly dynamic pages, but dramatically decreases performance."	self optionAt: 'refreshPositions' put: aBoolean!

revert: aBooleanOrString	"If set to true, the element will return to its start position when dragging stops. Possible string values: 'valid', 'invalid'. If set to invalid, revert will only occur if the draggable has not been dropped on a droppable. For valid, it's the other way around."	self optionAt: 'revert' put: aBooleanOrString!

revertDuration: anInteger	"The duration of the revert animation, in milliseconds. Ignored if revert is false."	self optionAt: 'revertDuration' put: anInteger!

scope: aString	"Used to group sets of draggable and droppable items, in addition to droppable's accept option. A draggable with the same scope value as a droppable will be accepted by the droppable."	self optionAt: 'scope' put: aString!

scroll: aBoolean	"If set to true, container auto-scrolls while dragging."	self optionAt: 'scroll' put: aBoolean!

scrollSensitivity: anInteger	"Distance in pixels from the edge of the viewport after which the viewport should scroll. Distance is relative to pointer, not the draggable."	self optionAt: 'scrollSensitivity' put: anInteger!

scrollSpeed: anInteger	"The speed at which the window should scroll once the mouse pointer gets within the scrollSensitivity distance."	self optionAt: 'scrollSpeed' put: anInteger!

snap: aBooleanOrSelector	"If set to a selector or to true (equivalent to '.ui-draggable'), the draggable will snap to the edges of the selected elements when near an edge of the element."	self optionAt: 'snap' put: aBooleanOrSelector!

snapMode: aString	"Determines which edges of snap elements the draggable will snap to. Ignored if snap is false. Possible values: 'inner', 'outer', 'both'"	self optionAt: 'snapMode' put: aString!

snapTolerance: anInteger	"The distance in pixels from the snap element edges at which snapping should occur. Ignored if snap is false."	self optionAt: 'snapTolerance' put: anInteger!

stack: aSelector	"Controls the z-Index of the set of elements that match the selector, always brings to front the dragged item. Very useful in things like window managers."	self optionAt: 'stack' put: aSelector!

zIndex: anInteger	"z-index for the helper while being dragged."	self optionAt: 'zIndex' put: anInteger! !
!JQDraggable categoriesFor: #addClasses:!options/generated!public! !
!JQDraggable categoriesFor: #appendTo:!options/generated!public! !
!JQDraggable categoriesFor: #axis:!options/generated!public! !
!JQDraggable categoriesFor: #cancel:!options/generated!public! !
!JQDraggable categoriesFor: #connectToSortable:!options/generated!public! !
!JQDraggable categoriesFor: #containment:!options/generated!public! !
!JQDraggable categoriesFor: #cursor:!options/generated!public! !
!JQDraggable categoriesFor: #cursorAt:!options/generated!public! !
!JQDraggable categoriesFor: #delay:!options/generated!public! !
!JQDraggable categoriesFor: #distance:!options/generated!public! !
!JQDraggable categoriesFor: #grid:!options/generated!public! !
!JQDraggable categoriesFor: #handle:!options/generated!public! !
!JQDraggable categoriesFor: #helper:!options/generated!public! !
!JQDraggable categoriesFor: #iframeFix:!options/generated!public! !
!JQDraggable categoriesFor: #method!accessing!public! !
!JQDraggable categoriesFor: #onDrag:!events/generated!public! !
!JQDraggable categoriesFor: #onStart:!events/generated!public! !
!JQDraggable categoriesFor: #onStop:!events/generated!public! !
!JQDraggable categoriesFor: #opacity:!options/generated!public! !
!JQDraggable categoriesFor: #refreshPositions:!options/generated!public! !
!JQDraggable categoriesFor: #revert:!options/generated!public! !
!JQDraggable categoriesFor: #revertDuration:!options/generated!public! !
!JQDraggable categoriesFor: #scope:!options/generated!public! !
!JQDraggable categoriesFor: #scroll:!options/generated!public! !
!JQDraggable categoriesFor: #scrollSensitivity:!options/generated!public! !
!JQDraggable categoriesFor: #scrollSpeed:!options/generated!public! !
!JQDraggable categoriesFor: #snap:!options/generated!public! !
!JQDraggable categoriesFor: #snapMode:!options/generated!public! !
!JQDraggable categoriesFor: #snapTolerance:!options/generated!public! !
!JQDraggable categoriesFor: #stack:!options/generated!public! !
!JQDraggable categoriesFor: #zIndex:!options/generated!public! !

