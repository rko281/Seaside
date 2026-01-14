"Filed out from Dolphin Smalltalk"!

WAHandlerEditor subclass: #WAFileHandlerEditor
	instanceVariableNames: 'fileEditor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFileHandlerEditor guid: (GUID fromString: '{8d6c3744-b14f-47f5-9b53-32f8d824a28b}')!

WAFileHandlerEditor comment: ''!

!WAFileHandlerEditor categoriesForClass!Seaside-Tools-Web! !

!WAFileHandlerEditor methodsFor!

children	^ super children copyWith: fileEditor!

initializeOn: aHandler	super initializeOn: aHandler.	fileEditor := WAFileAttributeEditor new		configuration: self handler libraries;		handler: handler;		group: #libraries;		parent: self;		yourself!

renderSubItemsOn: html	super renderSubItemsOn: html.	html render: fileEditor! !

!WAFileHandlerEditor categoriesForMethods!
children!hooks!public! !
initializeOn:!initialization!public! !
renderSubItemsOn:!public!rendering! !
!

