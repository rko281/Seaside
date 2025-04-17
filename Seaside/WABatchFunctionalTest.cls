"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WABatchFunctionalTest
	instanceVariableNames: 'batcher'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABatchFunctionalTest guid: (GUID fromString: '{9bbc6e6a-4ad8-4ebf-aa25-56dc08f197ba}')!

WABatchFunctionalTest comment: ''!

!WABatchFunctionalTest categoriesForClass!Unclassified! !

!WABatchFunctionalTest methodsFor!

children	^ Array with: batcher!

initialize	super initialize.	batcher := WAAlphabeticBatchedList new items: Collection allSubclasses!

renderContentOn: html	html render: batcher.	html unorderedList		list: batcher batch! !

!WABatchFunctionalTest categoriesForMethods!
children!hooks!public! !
initialize!initialization!public! !
renderContentOn:!public!rendering! !
!

