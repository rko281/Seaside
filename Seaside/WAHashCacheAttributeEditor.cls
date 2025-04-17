"Filed out from Dolphin Smalltalk"!

WAExpiringCacheAttributeEditor subclass: #WAHashCacheAttributeEditor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHashCacheAttributeEditor guid: (GUID fromString: '{81d43f7e-5ff2-49ae-a2a0-05b87cfa1823}')!

WAHashCacheAttributeEditor comment: ''!

!WAHashCacheAttributeEditor categoriesForClass!Unclassified! !

!WAHashCacheAttributeEditor methodsFor!

configuration: aCache	"unwrap the cache form the WAMutualExclusionCache"	super configuration: aCache underlyingCache!

createCache	^ WAMutualExclusionCache on: (WAHashCache		initialSize: 13		maximumSize: maximumSize		maximumAbsoluteAge: maximumAbsoluteAge		maximumRelativeAge: maximumRelativeAge		overflowAction: overflowAction)!

renderConfigurationOn: html	html form: [		html table			cellspacing: 0;			cellpadding: 0;			with: [				self renderMaximumAbsoluteAgeOn: html.				self renderMaximumRelativeAgeOn: html.				self renderMaximumSizeOn: html.				self renderOverflowActionOn: html ].					self renderCacheReplaceOn: html ]! !

!WAHashCacheAttributeEditor categoriesForMethods!
configuration:!accessing!public! !
createCache!private! !
renderConfigurationOn:!public!rendering! !
!

