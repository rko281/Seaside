"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WACallbackRegistry
	instanceVariableNames: 'callbacks nextKey'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACallbackRegistry guid: (GUID fromString: '{b4c87709-4792-4c27-8010-6b812574f44d}')!

WACallbackRegistry comment: ''!

!WACallbackRegistry categoriesForClass!Seaside-Core-Callbacks! !

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

