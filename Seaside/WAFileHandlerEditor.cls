"Filed out from Dolphin Smalltalk"!

WAHandlerEditor subclass: #WAFileHandlerEditor
	instanceVariableNames: 'fileEditor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFileHandlerEditor guid: (GUID fromString: '{cd96e2c8-3869-4bd6-af3d-2c6d5db5ea78}')!

WAFileHandlerEditor comment: ''!

!WAFileHandlerEditor categoriesForClass!Unclassified! !

!WAFileHandlerEditor methodsFor!

children	^ super children copyWith: fileEditor!

initializeOn: aHandler	super initializeOn: aHandler.	fileEditor := WAFileAttributeEditor new		configuration: self handler libraries;		handler: handler;		group: #libraries;		parent: self;		yourself!

renderSubItemsOn: html	super renderSubItemsOn: html.	html render: fileEditor! !

!WAFileHandlerEditor categoriesForMethods!
children!hooks!public! !
initializeOn:!initialization!public! !
renderSubItemsOn:!public!rendering! !
!

