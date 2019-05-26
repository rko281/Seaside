"Filed out from Dolphin Smalltalk 7"!

WAPresenter subclass: #WADecoration
	instanceVariableNames: 'next'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADecoration guid: (GUID fromString: '{cb38bced-e187-42fb-8f5e-8d16f13b86ce}')!
WADecoration comment: 'I am an abstract decoration around instances of WAComponent. I can be added to aComponent by calling #addDecoration: and I change the basic behaviour or look of a component. There are several methods that can be overriden to archive this:- #renderContentOn: to emit xhtml around the decorated component. Call #renderOwnerOn: to let the owner emit its output.- #handleAnswer: to intercept the answer processing.'!
!WADecoration categoriesForClass!Seaside-Component-Base! !
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
!WADecoration categoriesFor: #accept:!public!visiting! !
!WADecoration categoriesFor: #decoratedComponent!decorations!public! !
!WADecoration categoriesFor: #handleAnswer:!delegation!public! !
!WADecoration categoriesFor: #handleAnswer:continueWith:!processing!public! !
!WADecoration categoriesFor: #initialize!initialization!public! !
!WADecoration categoriesFor: #isDecoration!public!testing! !
!WADecoration categoriesFor: #isDelegation!public!testing! !
!WADecoration categoriesFor: #isGlobal!public!testing! !
!WADecoration categoriesFor: #isLocal!public!testing! !
!WADecoration categoriesFor: #next!accessing!public! !
!WADecoration categoriesFor: #remove!actions!public! !
!WADecoration categoriesFor: #renderContentOn:!public!rendering! !
!WADecoration categoriesFor: #renderNextOn:!public!rendering! !
!WADecoration categoriesFor: #setNext:!initialization!public! !
!WADecoration categoriesFor: #updateStates:!public!updating! !

!WADecoration class methodsFor!

canBeRoot	^ false! !
!WADecoration class categoriesFor: #canBeRoot!public!testing! !

