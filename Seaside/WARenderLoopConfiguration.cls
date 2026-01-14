"Filed out from Dolphin Smalltalk"!

WASystemConfiguration subclass: #WARenderLoopConfiguration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARenderLoopConfiguration guid: (GUID fromString: '{deb0c078-7489-40e3-843a-56dc5facf0d6}')!

WARenderLoopConfiguration comment: 'WARenderLoopConfiguration defines attributes required by the Render Loop classes (see the Seaside-Core-RenderLoop category). Any application using these classes should include this configuration (this is done by default for new applications).See #addAttributes: for details on provided attributes.'!

!WARenderLoopConfiguration categoriesForClass!Seaside-RenderLoop-Base! !

!WARenderLoopConfiguration methodsFor!

actionPhaseContinuationClasses	^ self continuationClasses select: [ :each | each isRenderLoopContinuation and: [ each isActionContinuation ] ]!

continuationClasses	^ WAApplicationConfiguration instance continuationClasses!

describeOn: config	(config classBinding: #actionPhaseContinuationClass)		beAdvanced;		group: #renderLoop;		comment: 'The continuation used for the Render Loop''s action phase.';		options: [ self actionPhaseContinuationClasses ];		default: WACallbackProcessingActionContinuation.	(config classBinding: #renderPhaseContinuationClass)		beAdvanced;		group: #renderLoop;		comment: 'The continuation used for the Render Loop''s render phase.';		options: [ self renderPhaseContinuationClasses ];		default: WARenderPhaseContinuation.	(config classBinding: #rootClass)		comment: 'The root component of this seaside application.';		options: [ self rootClasses ].	(config classBindingCollection: #rootDecorationClasses)		comment: 'The decoration clases that should wrap the root component.';		options: [ self rootDecorationClasses ].	config		at: #initialContinuationClass putClass: WAInitialRenderLoopContinuation!

parents	"We override several attributes of the application configuration."	^ Array with: WAApplicationConfiguration instance!

renderPhaseContinuationClasses	^ self continuationClasses select: [ :each | each isRenderLoopContinuation and: [ each isRenderContinuation ] ]!

rootClasses	^ (WAComponent allSubclasses select: [ :each | each canBeRoot ])		asSortedCollection: [ :a :b | a name <= b name ]!

rootDecorationClasses	^ (WADecoration allSubclasses select: [ :each | each canBeRoot ])		asSortedCollection: [ :a :b | a name <= b name ]! !

!WARenderLoopConfiguration categoriesForMethods!
actionPhaseContinuationClasses!description!public! !
continuationClasses!description!public! !
describeOn:!description!public! !
parents!ancestry!public! !
renderPhaseContinuationClasses!description!public! !
rootClasses!description!public! !
rootDecorationClasses!description!public! !
!

