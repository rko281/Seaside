"Filed out from Dolphin Smalltalk"!

WAHandlerEditor subclass: #WARegistryEditor
	instanceVariableNames: 'cacheEditor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARegistryEditor guid: (GUID fromString: '{11823390-6db1-4300-afd2-f78beac012a6}')!

WARegistryEditor comment: ''!

!WARegistryEditor categoriesForClass!Unclassified! !

!WARegistryEditor methodsFor!

children	^ super children copyWith: cacheEditor!

initializeOn: aHandler	| cache |	super initializeOn: aHandler.	cache := self handler cache.	cacheEditor := cache editorClass new		configuration: cache;		handler: handler;		group: #cache;		parent: self;		yourself!

renderSubItemsOn: html	super renderSubItemsOn: html.	html render: cacheEditor! !

!WARegistryEditor categoriesForMethods!
children!hooks!public! !
initializeOn:!initialization!public! !
renderSubItemsOn:!public!rendering! !
!

