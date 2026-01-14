"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WASnapshot
	instanceVariableNames: 'objects'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASnapshot guid: (GUID fromString: '{a0cab21f-42b5-4c3e-9492-0d281301f98a}')!

WASnapshot comment: 'I represent a memory snapshot of objects. Objects can be registered by sending the message #register:. All object snapshots are updated by sending #snapshot and restored by sending #restore. To have specific snapshot and restore actions for particular classes, override #snapshotCopy and #restoreFromSnapshot: in your classes.'!

!WASnapshot categoriesForClass!Seaside-Core-Backtracking! !

!WASnapshot methodsFor!

initialize	super initialize.	self reset!

register: anObject	"Register anObject for backtracking."	anObject isNil		ifFalse: [ objects at: anObject put: anObject snapshotCopy ]!

reset	"Clears the snapshot dictionary."	objects := IdentityDictionary new!

restore	"Restore all the backtracked states."	objects keysAndValuesDo: [ :key :value | key restoreFromSnapshot: value ]!

snapshot	"Snapshot all the states that have been registered for backtracking overriding existing snapshots."	objects associationsDo: [ :assoc | assoc value: assoc key snapshotCopy ]! !

!WASnapshot categoriesForMethods!
initialize!initialization!public! !
register:!public!registry! !
reset!actions!public! !
restore!actions!public! !
snapshot!actions!public! !
!

