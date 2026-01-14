"Filed out from Dolphin Smalltalk"!

WAExpiringCacheAttributeEditor subclass: #WAHashCacheAttributeEditor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHashCacheAttributeEditor guid: (GUID fromString: '{25f4f843-4cc6-43ff-8228-cd40722fb695}')!

WAHashCacheAttributeEditor comment: ''!

!WAHashCacheAttributeEditor categoriesForClass!Seaside-Tools-Web! !

!WAHashCacheAttributeEditor methodsFor!

configuration: aCache	"unwrap the cache form the WAMutualExclusionCache"	super configuration: aCache underlyingCache!

createCache	^ WAMutualExclusionCache on: (WAHashCache		initialSize: 13		maximumSize: maximumSize		maximumAbsoluteAge: maximumAbsoluteAge		maximumRelativeAge: maximumRelativeAge		overflowAction: overflowAction)!

renderConfigurationOn: html	html form: [		html table			cellspacing: 0;			cellpadding: 0;			with: [				self renderMaximumAbsoluteAgeOn: html.				self renderMaximumRelativeAgeOn: html.				self renderMaximumSizeOn: html.				self renderOverflowActionOn: html ].					self renderCacheReplaceOn: html ]! !

!WAHashCacheAttributeEditor categoriesForMethods!
configuration:!accessing!public! !
createCache!private! !
renderConfigurationOn:!public!rendering! !
!

