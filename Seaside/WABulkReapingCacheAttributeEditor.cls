"Filed out from Dolphin Smalltalk"!

WAExpiringCacheAttributeEditor subclass: #WABulkReapingCacheAttributeEditor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABulkReapingCacheAttributeEditor guid: (GUID fromString: '{92fe1cd7-47f0-445d-8c24-69093741457c}')!

WABulkReapingCacheAttributeEditor comment: ''!

!WABulkReapingCacheAttributeEditor categoriesForClass!Unclassified! !

!WABulkReapingCacheAttributeEditor methodsFor!

createCache	^ WABulkReapingCache		initialSize: 13		maximumSize: maximumSize		maximumAbsoluteAge: maximumAbsoluteAge		maximumRelativeAge: maximumRelativeAge		overflowAction: overflowAction!

renderConfigurationOn: html	html form: [		html table			cellspacing: 0;			cellpadding: 0;			with: [				self renderMaximumAbsoluteAgeOn: html.				self renderMaximumRelativeAgeOn: html ].					self renderCacheReplaceOn: html ]! !

!WABulkReapingCacheAttributeEditor categoriesForMethods!
createCache!private! !
renderConfigurationOn:!public!rendering! !
!

