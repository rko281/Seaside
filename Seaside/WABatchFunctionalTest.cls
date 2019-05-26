"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WABatchFunctionalTest
	instanceVariableNames: 'batcher'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WABatchFunctionalTest guid: (GUID fromString: '{dab009e8-e9f9-4435-8a83-f32c264d6b78}')!
WABatchFunctionalTest comment: ''!
!WABatchFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WABatchFunctionalTest methodsFor!

children	^ Array with: batcher!

initialize	super initialize.	batcher := WAAlphabeticBatchedList new items: Collection allSubclasses!

renderContentOn: html	html render: batcher.	html unorderedList		list: batcher batch! !
!WABatchFunctionalTest categoriesFor: #children!hooks!public! !
!WABatchFunctionalTest categoriesFor: #initialize!initialization!public! !
!WABatchFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !

