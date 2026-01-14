"Filed out from Dolphin Smalltalk"!

JQPlugin subclass: #JQAnimate
	instanceVariableNames: 'parameters'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQAnimate guid: (GUID fromString: '{54921601-6e4d-41ae-b979-b10983371eb3}')!

JQAnimate comment: ''!

!JQAnimate categoriesForClass!JQuery-Core-Objects! !

!JQAnimate methodsFor!

argumentsDo: aBlock	aBlock value: self parameters.	aBlock value: self options!

doesNotUnderstand: aMessage	"A nasty trick to allow to define the animation properties more easily."	^ aMessage selector numArgs = 1		ifFalse: [ super doesNotUnderstand: aMessage ]		ifTrue: [ self parameterAt: aMessage selector allButLast put: aMessage arguments first ]!

duration: aDuration	"A string representing one of the three predefined speeds (slow, normal, or fast) or the number of milliseconds to run the animation (e.g. 1000)."		self optionAt: 'duration' put: aDuration!

easing: aString	"The name of the easing effect that you want to use (plugin required). There are two built-in values, linear and swing."		self optionAt: 'easing' put: aString!

method	^ 'animate'!

onComplete: anObject	"A function to be executed whenever the animation completes, executes once for each element animated against."		self optionAt: 'complete' put: anObject asFunction!

onStep: anObject	"A function to be executed on each animation step, executes for each element animated against."	self optionAt: 'step' put: anObject asFunction!

parameterAt: aKey put: aValue	self parameters at: aKey put: aValue!

parameters	^ parameters ifNil: [ parameters := GRSmallDictionary2 new ]!

parameters: aDictionary	"A set of style attributes that you wish to animate, and to what end."		parameters := aDictionary!

queue: aBoolean	"Setting this to false will make the animation skip the queue and begin running immediately."		self optionAt: 'queue' put: aBoolean! !

!JQAnimate categoriesForMethods!
argumentsDo:!accessing!public! !
doesNotUnderstand:!private! !
duration:!options!public! !
easing:!options!public! !
method!accessing!public! !
onComplete:!events!public! !
onStep:!events!public! !
parameterAt:put:!parameters!public! !
parameters!parameters!public! !
parameters:!parameters!public! !
queue:!options!public! !
!

