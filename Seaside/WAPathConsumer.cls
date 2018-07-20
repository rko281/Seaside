"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAPathConsumer
	instanceVariableNames: 'path'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPathConsumer guid: (GUID fromString: '{30a68dd4-ca1f-4334-a919-98a329ed2a28}')!
WAPathConsumer comment: 'A WAPathConsumer keeps track of the unconsumed path elements in request handling.Image the following request path:/start/middle/endand a dispatcher mapped at ''start'' and an application mapped at ''middle''.First nothing at all would be consumed so the unconsumed path would be #(''start'' ''middle'' ''end'').Then the dispatcher consumes ''start'' and delegates to the application so the unconsumed path would be #(''middle'' ''end'').Then the application consumes ''middle'' so the unconsumed path would be #(''end'').In that caseself requestContext consumer peekinside an #initialRequest: should answer ''end''.Instance Variables	path:		<Collection<String>>path	- the collection of unconsumed path elements'!
!WAPathConsumer categoriesForClass!Seaside-Core-RequestHandling! !
!WAPathConsumer methodsFor!

atEnd	"Answer whether there are any unconsumed path elements left."	^ path isEmpty!

initializeWith: aCollectionOfStrings	self initialize.	path := aCollectionOfStrings!

next	"Remove the first unconsumed path element and answer it."	^ path removeFirst!

nextIfPresentDo: aOneArgumentBlock	"Evaluate the given block with #next if not #atEnd."	self atEnd		ifFalse: [ aOneArgumentBlock value: self next ]!

peek	"Answer the first unconsumed path element without removing it."	^ path first!

peekToEnd	"answer the remaining elements in my path without consuming them"	^ Array withAll: path!

try: aString	"See if the next element in the stream matches aString.	If it does, consume the element and return true.	If it does not or we are at the end of the stream, simply return false."	(self atEnd or: [ self peek ~= aString ])		ifTrue: [ ^ false ].	self next.	^ true!

upToEnd	"answer the remaining elements in my path"	| elements |	elements := path.	path := #().	^ elements! !
!WAPathConsumer categoriesFor: #atEnd!accessing!public! !
!WAPathConsumer categoriesFor: #initializeWith:!initialization!public! !
!WAPathConsumer categoriesFor: #next!accessing!public! !
!WAPathConsumer categoriesFor: #nextIfPresentDo:!accessing!public! !
!WAPathConsumer categoriesFor: #peek!accessing!public! !
!WAPathConsumer categoriesFor: #peekToEnd!accessing!public! !
!WAPathConsumer categoriesFor: #try:!accessing!public! !
!WAPathConsumer categoriesFor: #upToEnd!accessing!public! !

!WAPathConsumer class methodsFor!

path: aCollectionOfStrings	^ self basicNew initializeWith: aCollectionOfStrings! !
!WAPathConsumer class categoriesFor: #path:!instance creation!public! !

