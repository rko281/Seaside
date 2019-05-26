"Filed out from Dolphin Smalltalk 7"!

WAHandlerEditor subclass: #WAFileHandlerEditor
	instanceVariableNames: 'fileEditor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFileHandlerEditor guid: (GUID fromString: '{3f683414-6ff4-4841-8bac-62d210d0134d}')!
WAFileHandlerEditor comment: ''!
!WAFileHandlerEditor categoriesForClass!Seaside-Tools-Web! !
!WAFileHandlerEditor methodsFor!

children	^ super children copyWith: fileEditor!

initializeOn: aHandler	super initializeOn: aHandler.	fileEditor := WAFileAttributeEditor new		configuration: self handler libraries;		handler: handler;		group: #libraries;		parent: self;		yourself!

renderSubItemsOn: html	super renderSubItemsOn: html.	html render: fileEditor! !
!WAFileHandlerEditor categoriesFor: #children!hooks!public! !
!WAFileHandlerEditor categoriesFor: #initializeOn:!initialization!public! !
!WAFileHandlerEditor categoriesFor: #renderSubItemsOn:!public!rendering! !

