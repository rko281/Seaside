"Filed out from Dolphin Smalltalk"!

WAPresenter subclass: #WADecoration
	instanceVariableNames: 'next'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADecoration guid: (GUID fromString: '{acbc12bf-1062-40ad-9baf-3d6b7030c06d}')!

WADecoration comment: 'I am an abstract decoration around instances of WAComponent. I can be added to aComponent by calling #addDecoration: and I change the basic behaviour or look of a component. There are several methods that can be overriden to archive this:- #renderContentOn: to emit xhtml around the decorated component. Call #renderOwnerOn: to let the owner emit its output.- #handleAnswer: to intercept the answer processing.'!

!WADecoration categoriesForClass!Base! !

!WADecoration methodsFor!

accept: aVisitor	aVisitor visitDecoration: self!

decoratedComponent	"Answer the Component decorated by this Decoration."		^ self next decoratedComponent!

handleAnswer: anObject	(self next handleAnswer: anObject)		ifFalse: [ self handleAnswer: anObject continueWith: [ ^ false ] ].	^ true!

handleAnswer: anObject continueWith: aBlock	aBlock value!

initialize	super initialize.	next := WAValueHolder new!

isDecoration	^ true!

isDelegation	"If #isDelegation is true, we do not want our 'next' presenter to be displayed."	^ false!

isGlobal	^ false!

isLocal	^ (self isGlobal or: [ self isDelegation ]) not!

next	"Answer the next decoration or component."	^ next contents!

remove	"Remove the decoration from the owning component."		self decoratedComponent removeDecoration: self!

renderContentOn: html	self renderNextOn: html!

renderNextOn: html	self next renderUndecoratedWithContext: html context!

setNext: aDecoration	next contents: aDecoration!

updateStates: aSnapshot	super updateStates: aSnapshot.	aSnapshot register: next! !

!WADecoration categoriesForMethods!
accept:!public!visiting! !
decoratedComponent!decorations!public! !
handleAnswer:!delegation!public! !
handleAnswer:continueWith:!processing!public! !
initialize!initialization!public! !
isDecoration!public!testing! !
isDelegation!public!testing! !
isGlobal!public!testing! !
isLocal!public!testing! !
next!accessing!public! !
remove!actions!public! !
renderContentOn:!public!rendering! !
renderNextOn:!public!rendering! !
setNext:!initialization!public! !
updateStates:!public!updating! !
!

!WADecoration class methodsFor!

canBeRoot	^ false!

isAbstract 	^ self == WADecoration! !

!WADecoration class categoriesForMethods!
canBeRoot!public!testing! !
isAbstract!public!testing! !
!

