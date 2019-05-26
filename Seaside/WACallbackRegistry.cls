"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WACallbackRegistry
	instanceVariableNames: 'callbacks nextKey'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACallbackRegistry guid: (GUID fromString: '{d044183b-8649-4b71-8993-abdc774c0817}')!
WACallbackRegistry comment: ''!
!WACallbackRegistry categoriesForClass!Seaside-Core-Callbacks! !
!WACallbackRegistry methodsFor!

advanceKey	| key |	key := self nextKey.	self increaseKey.	^ key!

handle: aRequestContext	| set fields |	set := Set new.	fields := aRequestContext request fields.	fields keysDo: [ :key |		callbacks at: key ifPresent: [ :callback |			(callback isEnabledFor: aRequestContext)				ifTrue: [ set add: callback ] ] ].	set sorted do: [ :callback |		callback evaluateWithFieldValues:			(fields allAt: callback key) ]!

increaseKey	nextKey := nextKey + 1!

initialize	super initialize.	callbacks := Dictionary new.	nextKey := 1!

nextKey	^ nextKey greaseString!

store: aCallback 	| key |	key := self advanceKey.	callbacks 		at: (aCallback convertKey: key)		put: aCallback.	aCallback 		setKey: key		callbacks: callbacks.	^ key! !
!WACallbackRegistry categoriesFor: #advanceKey!accessing!public! !
!WACallbackRegistry categoriesFor: #handle:!processing!public! !
!WACallbackRegistry categoriesFor: #increaseKey!accessing!public! !
!WACallbackRegistry categoriesFor: #initialize!initialization!public! !
!WACallbackRegistry categoriesFor: #nextKey!accessing!public! !
!WACallbackRegistry categoriesFor: #store:!public!registration! !

