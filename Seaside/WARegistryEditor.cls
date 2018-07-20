"Filed out from Dolphin Smalltalk 7"!

WAHandlerEditor subclass: #WARegistryEditor
	instanceVariableNames: 'cacheEditor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARegistryEditor guid: (GUID fromString: '{c59688e2-5d88-46dc-99a8-2e9aa375fe56}')!
WARegistryEditor comment: ''!
!WARegistryEditor categoriesForClass!Seaside-Tools-Web! !
!WARegistryEditor methodsFor!

children	^ super children copyWith: cacheEditor!

initializeOn: aHandler	| cache |	super initializeOn: aHandler.	cache := self handler cache.	cacheEditor := cache editorClass new		configuration: cache;		handler: handler;		group: #cache;		parent: self;		yourself!

renderSubItemsOn: html	super renderSubItemsOn: html.	html render: cacheEditor! !
!WARegistryEditor categoriesFor: #children!hooks!public! !
!WARegistryEditor categoriesFor: #initializeOn:!initialization!public! !
!WARegistryEditor categoriesFor: #renderSubItemsOn:!public!rendering! !

