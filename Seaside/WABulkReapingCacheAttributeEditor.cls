"Filed out from Dolphin Smalltalk"!

WAExpiringCacheAttributeEditor subclass: #WABulkReapingCacheAttributeEditor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABulkReapingCacheAttributeEditor guid: (GUID fromString: '{7bdad9d3-20ee-40e2-b754-3df8d85074d0}')!

WABulkReapingCacheAttributeEditor comment: ''!

!WABulkReapingCacheAttributeEditor categoriesForClass!Seaside-Tools-Web! !

!WABulkReapingCacheAttributeEditor methodsFor!

createCache	^ WABulkReapingCache		initialSize: 13		maximumSize: maximumSize		maximumAbsoluteAge: maximumAbsoluteAge		maximumRelativeAge: maximumRelativeAge		overflowAction: overflowAction!

renderConfigurationOn: html	html form: [		html table			cellspacing: 0;			cellpadding: 0;			with: [				self renderMaximumAbsoluteAgeOn: html.				self renderMaximumRelativeAgeOn: html ].					self renderCacheReplaceOn: html ]! !

!WABulkReapingCacheAttributeEditor categoriesForMethods!
createCache!private! !
renderConfigurationOn:!public!rendering! !
!

