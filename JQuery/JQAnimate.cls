"Filed out from Dolphin Smalltalk 7"!

JQPlugin subclass: #JQAnimate
	instanceVariableNames: 'parameters'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQAnimate guid: (GUID fromString: '{61b0d178-e85e-4b30-91a7-0b5401352ea3}')!
JQAnimate comment: ''!
!JQAnimate categoriesForClass!JQuery-Core-Objects! !
!JQAnimate methodsFor!

arguments	^ Array with: self parameters with: self options!

doesNotUnderstand: aMessage	"A nasty trick to allow to define the animation properties more easily."	^ aMessage selector numArgs = 1		ifFalse: [ super doesNotUnderstand: aMessage ]		ifTrue: [ self parameterAt: aMessage selector allButLast put: aMessage arguments first ]!

duration: aDuration	"A string representing one of the three predefined speeds (slow, normal, or fast) or the number of milliseconds to run the animation (e.g. 1000)."		self optionAt: 'duration' put: aDuration!

easing: aString	"The name of the easing effect that you want to use (plugin required). There are two built-in values, linear and swing."		self optionAt: 'easing' put: aString!

method	^ 'animate'!

onComplete: anObject	"A function to be executed whenever the animation completes, executes once for each element animated against."		self optionAt: 'complete' put: anObject asFunction!

onStep: anObject	"A function to be executed on each animation step, executes for each element animated against."	self optionAt: 'step' put: anObject asFunction!

parameterAt: aKey put: aValue	self parameters at: aKey put: aValue!

parameters	^ parameters ifNil: [ parameters := GRSmallDictionary new ]!

parameters: aDictionary	"A set of style attributes that you wish to animate, and to what end."		parameters := aDictionary!

queue: aBoolean	"Setting this to false will make the animation skip the queue and begin running immediately."		self optionAt: 'queue' put: aBoolean! !
!JQAnimate categoriesFor: #arguments!accessing!public! !
!JQAnimate categoriesFor: #doesNotUnderstand:!private! !
!JQAnimate categoriesFor: #duration:!options!public! !
!JQAnimate categoriesFor: #easing:!options!public! !
!JQAnimate categoriesFor: #method!accessing!public! !
!JQAnimate categoriesFor: #onComplete:!events!public! !
!JQAnimate categoriesFor: #onStep:!events!public! !
!JQAnimate categoriesFor: #parameterAt:put:!parameters!public! !
!JQAnimate categoriesFor: #parameters!parameters!public! !
!JQAnimate categoriesFor: #parameters:!parameters!public! !
!JQAnimate categoriesFor: #queue:!options!public! !

