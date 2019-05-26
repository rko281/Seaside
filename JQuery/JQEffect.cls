"Filed out from Dolphin Smalltalk 7"!

JQPlugin subclass: #JQEffect
	instanceVariableNames: 'method effect speed complete'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQEffect guid: (GUID fromString: '{f71d8be2-8706-4362-ba3b-e85792898c7c}')!
JQEffect comment: 'This is the core dependency of the effects of jQuery UI. This file is needed by all other effects and can also be used as stand-alone. Please note that ui.core.js is not a dependency for the effects to work.'!
!JQEffect categoriesForClass!JQuery-UI-Objects! !
!JQEffect methodsFor!

arguments	| result |	result := OrderedCollection with: effect.	(options isEmpty and: [ speed isNil and: [ complete isNil ] ])		ifFalse: [ result addLast: options ].	(speed isNil and: [ complete isNil ])		ifFalse: [ result addLast: speed ].	(complete isNil)		ifFalse: [ result addLast: complete ].	^ result!

blind	"Blinds the element away or shows it by blinding it in."		self effect: 'blind'!

bounce	"Bounces the element vertically or horizontally n-times."		self effect: 'bounce'!

className: aString	"Transfer - Class name the transfer element will receive."	self optionAt: 'className' put: aString!

clip	"Clips the element on or off, vertically or horizontally."		self effect: 'clip'!

color: aColor	"Highlight - The highlight color."	self optionAt: 'color' put: aColor!

direction: aString	"Blind - vertical or horizontal."	"Clip - vertical or horizontal."	"Drop - left, right, up, down."	"Slide - left, right, up, down."	"Scale - both, vertical, horizontal."	"Bounce - left, right, up, down."	"Shake - left, right, up, down."	self optionAt: 'direction' put: aString!

distance: anInteger	"Bounce - The bounce distance."	"Shake - The bounce distance."	self optionAt: 'distance' put: anInteger!

drop	"Drops the element away or shows it by dropping it in."		self effect: 'drop'!

easing: aString	self optionAt: 'easing' put: aString!

effect	"Uses a specific effect on an element."		self method: 'effect'!

effect: aString	"The effect to be used."		effect := aString!

explode	"Explodes the element into multiple pieces."		self effect: 'explode'!

fade	"Fade the element in and out."		self effect: 'fade'!

fast	self speed: 'fast'!

fold	"Folds the element like a piece of paper."		self effect: 'fold'!

from	^ self options 		at: 'from'		ifAbsentPut: [ GRSmallDictionary2 new ]!

from: aDictionary	"Transfer - The element from width/height to."		self optionAt: 'from' put: aDictionary!

fromHeight: anInteger	self from at: 'height' put: anInteger!

fromWidth: anInteger	self from at: 'width' put: anInteger!

hide	"Uses a specific effect on an element to hide the element if the first argument is an effect string."		self method: 'hide'!

highlight	"Highlights the background with a defined color."		self effect: 'highlight'!

initialize	super initialize.	self effect; highlight; options!

method	^ method!

method: aString	"The method to be used."	method := aString!

normal	self speed: 'normal'!

onComplete: anObject	"A function to be executed whenever the animation completes, executes once for each element animated against."		complete := anObject asFunction!

origin: anArray	"Scale - the vanishing point."	"Size - the vanishing point."	self optionAt: 'origin' put: anArray!

percent: anInteger	"Puff - The percentage to scale to."	"Scale - The percentage to scale to."	self optionAt: 'percent' put: anInteger!

pieces: aNumber	"Explode - Explodes or implodes the element into/from many pieces."	self optionAt: 'pieces' put: aNumber!

puff	"Scale and fade out animations create the puff effect."		self effect: 'puff'!

pulsate	"Pulsates the opacity of the element multiple times."		self effect: 'pulsate'!

scale	"Shrink or grow an element by a percentage factor."		self effect: 'scale'!

scale: aString	"Scale - Which areas of the element will be resized: 'both', 'box', 'content'."	"Size - Which areas of the element will be resized: 'both', 'box', 'content'."	self optionAt: 'scale' put: aString!

shake	"Shakes the element vertically or horizontally n-times."		self effect: 'shake'!

show	"Uses a specific effect on an element to show the element if the first argument is a effect string."		self method: 'show'!

size	"Resize an element to a specified width and height."		self effect: 'size'!

size: anInteger	"Fold - Size to fold."	self optionAt: 'size' put: anInteger!

slide	"Slides the element out of the viewport."		self effect: 'slide'!

slow	self speed: 'slow'!

speed: aDuration	"A string representing one of the three predefined speeds (slow, normal, or fast) or the number of milliseconds to run the animation."		speed := aDuration!

times: anInteger	"Pulsate - Number of times to pulsate."	"Bounce - Number of times to bounce."	"Shake - Number of times to shake."	self optionAt: 'times' put: anInteger!

to	^ self options 		at: 'to'		ifAbsentPut: [ GRSmallDictionary2 new ]!

to: aDictionaryOrString	"Transfer - The element to transfer to."	self optionAt: 'to' put: aDictionaryOrString!

toggle	"Uses a specific effect on an element to toggle the element if the first argument is an effect string."		self method: 'toggle'!

toHeight: anInteger	self to at: 'height' put: anInteger!

toWidth: anInteger	self to at: 'width' put: anInteger!

transfer	"Transfers the outline of an element to another."		self effect: 'transfer'! !
!JQEffect categoriesFor: #arguments!private! !
!JQEffect categoriesFor: #blind!effects/toggle!public! !
!JQEffect categoriesFor: #bounce!effects!public! !
!JQEffect categoriesFor: #className:!options!public! !
!JQEffect categoriesFor: #clip!effects/toggle!public! !
!JQEffect categoriesFor: #color:!options!public! !
!JQEffect categoriesFor: #direction:!options!public! !
!JQEffect categoriesFor: #distance:!options!public! !
!JQEffect categoriesFor: #drop!effects/toggle!public! !
!JQEffect categoriesFor: #easing:!options!public! !
!JQEffect categoriesFor: #effect!methods!public! !
!JQEffect categoriesFor: #effect:!accessing!public! !
!JQEffect categoriesFor: #explode!effects/toggle!public! !
!JQEffect categoriesFor: #fade!effects/toggle!public! !
!JQEffect categoriesFor: #fast!accessing/speed!public! !
!JQEffect categoriesFor: #fold!effects/toggle!public! !
!JQEffect categoriesFor: #from!options!public! !
!JQEffect categoriesFor: #from:!options!public! !
!JQEffect categoriesFor: #fromHeight:!convenience!public! !
!JQEffect categoriesFor: #fromWidth:!convenience!public! !
!JQEffect categoriesFor: #hide!methods!public! !
!JQEffect categoriesFor: #highlight!effects!public! !
!JQEffect categoriesFor: #initialize!initialization!public! !
!JQEffect categoriesFor: #method!private! !
!JQEffect categoriesFor: #method:!accessing!public! !
!JQEffect categoriesFor: #normal!accessing/speed!public! !
!JQEffect categoriesFor: #onComplete:!events!public! !
!JQEffect categoriesFor: #origin:!options!public! !
!JQEffect categoriesFor: #percent:!options!public! !
!JQEffect categoriesFor: #pieces:!options!public! !
!JQEffect categoriesFor: #puff!effects/toggle!public! !
!JQEffect categoriesFor: #pulsate!effects!public! !
!JQEffect categoriesFor: #scale!effects/toggle!public! !
!JQEffect categoriesFor: #scale:!options!public! !
!JQEffect categoriesFor: #shake!effects!public! !
!JQEffect categoriesFor: #show!methods!public! !
!JQEffect categoriesFor: #size!effects!public! !
!JQEffect categoriesFor: #size:!options!public! !
!JQEffect categoriesFor: #slide!effects/toggle!public! !
!JQEffect categoriesFor: #slow!accessing/speed!public! !
!JQEffect categoriesFor: #speed:!accessing!public! !
!JQEffect categoriesFor: #times:!options!public! !
!JQEffect categoriesFor: #to!options!public! !
!JQEffect categoriesFor: #to:!options!public! !
!JQEffect categoriesFor: #toggle!methods!public! !
!JQEffect categoriesFor: #toHeight:!convenience!public! !
!JQEffect categoriesFor: #toWidth:!convenience!public! !
!JQEffect categoriesFor: #transfer!effects!public! !

