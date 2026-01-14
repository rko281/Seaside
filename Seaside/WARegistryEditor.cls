"Filed out from Dolphin Smalltalk"!

WAHandlerEditor subclass: #WARegistryEditor
	instanceVariableNames: 'cacheEditor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARegistryEditor guid: (GUID fromString: '{b1e7eaa5-27eb-45df-8c31-cef426ea9e56}')!

WARegistryEditor comment: ''!

!WARegistryEditor categoriesForClass!Seaside-Tools-Web! !

!WARegistryEditor methodsFor!

children	^ super children copyWith: cacheEditor!

initializeOn: aHandler	| cache |	super initializeOn: aHandler.	cache := self handler cache.	cacheEditor := cache editorClass new		configuration: cache;		handler: handler;		group: #cache;		parent: self;		yourself!

renderSubItemsOn: html	super renderSubItemsOn: html.	html render: cacheEditor! !

!WARegistryEditor categoriesForMethods!
children!hooks!public! !
initializeOn:!initialization!public! !
renderSubItemsOn:!public!rendering! !
!

