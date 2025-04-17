"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WACallbackRegistry
	instanceVariableNames: 'callbacks nextKey'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACallbackRegistry guid: (GUID fromString: '{d0209c2f-72ff-43ee-a0bd-b6c71f5b1702}')!

WACallbackRegistry comment: ''!

!WACallbackRegistry categoriesForClass!Callbacks! !

!WACallbackRegistry methodsFor!

advanceKey	| key |	key := self nextKey.	self increaseKey.	^ key!

handle: aRequestContext	| set fields |	set := Set new.	fields := aRequestContext request fields.	fields keysDo: [ :key |		callbacks at: key ifPresent: [ :callback |			(callback isEnabledFor: aRequestContext)				ifTrue: [ set add: callback ] ] ].	"Process the callbacks in order of priority"	set sorted do: [ :callback |		callback evaluateWithFieldValues:			(fields allAt: callback key) ]!

increaseKey	nextKey := nextKey + 1!

initialize	super initialize.	callbacks := Dictionary new.	nextKey := 1!

nextKey	^ nextKey greaseString!

store: aCallback 	| key |	key := self advanceKey.	callbacks 		at: (aCallback convertKey: key)		put: aCallback.	aCallback 		setKey: key		callbacks: callbacks.	^ key! !

!WACallbackRegistry categoriesForMethods!
advanceKey!accessing!public! !
handle:!processing!public! !
increaseKey!accessing!public! !
initialize!initialization!public! !
nextKey!accessing!public! !
store:!public!registration! !
!

