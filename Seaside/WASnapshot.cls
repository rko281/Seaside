"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WASnapshot
	instanceVariableNames: 'objects'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASnapshot guid: (GUID fromString: '{ce895f3a-752c-47c7-95a2-a30101c7cb5b}')!
WASnapshot comment: 'I represent a memory snapshot of objects. Objects can be registered by sending the message #register:. All object snapshots are updated by sending #snapshot and restored by sending #restore. To have specific snapshot and restore actions for particular classes, override #snapshotCopy and #restoreFromSnapshot: in your classes.'!
!WASnapshot categoriesForClass!Seaside-Core-Backtracking! !
!WASnapshot methodsFor!

initialize	super initialize.	self reset!

register: anObject	"Register anObject for backtracking."	anObject isNil		ifFalse: [ objects at: anObject put: anObject snapshotCopy ]!

reset	"Clears the snapshot dictionary."	objects := IdentityDictionary new!

restore	"Restore all the backtracked states."	objects keysAndValuesDo: [ :key :value | key restoreFromSnapshot: value ]!

snapshot	"Snapshot all the states that have been registered for backtracking overriding existing snapshots."	objects associationsDo: [ :assoc | assoc value: assoc key snapshotCopy ]! !
!WASnapshot categoriesFor: #initialize!initialization!public! !
!WASnapshot categoriesFor: #register:!public!registry! !
!WASnapshot categoriesFor: #reset!actions!public! !
!WASnapshot categoriesFor: #restore!actions!public! !
!WASnapshot categoriesFor: #snapshot!actions!public! !

