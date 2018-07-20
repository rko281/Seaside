"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WABatchFunctionalTest
	instanceVariableNames: 'batcher'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WABatchFunctionalTest guid: (GUID fromString: '{34358a33-013e-4b47-a58d-5e6834396666}')!
WABatchFunctionalTest comment: ''!
!WABatchFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WABatchFunctionalTest methodsFor!

children	^ Array with: batcher!

initialize	super initialize.	batcher := WAAlphabeticBatchedList new items: Collection allSubclasses!

renderContentOn: html	html render: batcher.	html unorderedList		list: batcher batch! !
!WABatchFunctionalTest categoriesFor: #children!hooks!public! !
!WABatchFunctionalTest categoriesFor: #initialize!initialization!public! !
!WABatchFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !

