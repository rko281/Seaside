"Filed out from Dolphin Smalltalk 7"!

WAExpiringCacheAttributeEditor subclass: #WABulkReapingCacheAttributeEditor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WABulkReapingCacheAttributeEditor guid: (GUID fromString: '{bb39f5ee-9d08-4b1c-8a26-1e182987f235}')!
WABulkReapingCacheAttributeEditor comment: ''!
!WABulkReapingCacheAttributeEditor categoriesForClass!Seaside-Tools-Web! !
!WABulkReapingCacheAttributeEditor methodsFor!

createCache	^ WABulkReapingCache		initialSize: 13		maximumSize: maximumSize		maximumAbsoluteAge: maximumAbsoluteAge		maximumRelativeAge: maximumRelativeAge		overflowAction: overflowAction!

renderConfigurationOn: html	html form: [		html table			cellspacing: 0;			cellpadding: 0;			with: [				self renderMaximumAbsoluteAgeOn: html.				self renderMaximumRelativeAgeOn: html ].					self renderCacheReplaceOn: html ]! !
!WABulkReapingCacheAttributeEditor categoriesFor: #createCache!private! !
!WABulkReapingCacheAttributeEditor categoriesFor: #renderConfigurationOn:!public!rendering! !

