"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WABatchFunctionalTest
	instanceVariableNames: 'batcher'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABatchFunctionalTest guid: (GUID fromString: '{49019398-422c-41cf-a1f5-8f4882b4002a}')!

WABatchFunctionalTest comment: ''!

!WABatchFunctionalTest categoriesForClass!Seaside-Tests-Functional! !

!WABatchFunctionalTest methodsFor!

children	^ Array with: batcher!

initialize	super initialize.	batcher := WAAlphabeticBatchedList new items: Collection allSubclasses!

renderContentOn: html	html render: batcher.	html unorderedList		list: batcher batch! !

!WABatchFunctionalTest categoriesForMethods!
children!hooks!public! !
initialize!initialization!public! !
renderContentOn:!public!rendering! !
!

