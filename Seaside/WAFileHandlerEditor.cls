"Filed out from Dolphin Smalltalk 7"!

WAHandlerEditor subclass: #WAFileHandlerEditor
	instanceVariableNames: 'fileEditor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFileHandlerEditor guid: (GUID fromString: '{be0ff475-49c9-4093-aa26-57a5413e1b93}')!
WAFileHandlerEditor comment: ''!
!WAFileHandlerEditor categoriesForClass!Seaside-Tools-Web! !
!WAFileHandlerEditor methodsFor!

children	^ super children copyWith: fileEditor!

initializeOn: aHandler	super initializeOn: aHandler.	fileEditor := WAFileAttributeEditor new		configuration: self handler libraries;		handler: handler;		group: #libraries;		parent: self;		yourself!

renderSubItemsOn: html	super renderSubItemsOn: html.	html render: fileEditor! !
!WAFileHandlerEditor categoriesFor: #children!hooks!public! !
!WAFileHandlerEditor categoriesFor: #initializeOn:!initialization!public! !
!WAFileHandlerEditor categoriesFor: #renderSubItemsOn:!public!rendering! !

