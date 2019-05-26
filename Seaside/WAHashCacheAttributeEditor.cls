"Filed out from Dolphin Smalltalk 7"!

WAExpiringCacheAttributeEditor subclass: #WAHashCacheAttributeEditor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHashCacheAttributeEditor guid: (GUID fromString: '{d9d7456b-08b7-4b84-9fad-5cdddb303f59}')!
WAHashCacheAttributeEditor comment: ''!
!WAHashCacheAttributeEditor categoriesForClass!Seaside-Tools-Web! !
!WAHashCacheAttributeEditor methodsFor!

configuration: aCache	"unwrap the cache form the WAMutualExclusionCache"	super configuration: aCache underlyingCache!

createCache	^ WAMutualExclusionCache on: (WAHashCache		initialSize: 13		maximumSize: maximumSize		maximumAbsoluteAge: maximumAbsoluteAge		maximumRelativeAge: maximumRelativeAge		overflowAction: overflowAction)!

renderConfigurationOn: html	html form: [		html table			cellspacing: 0;			cellpadding: 0;			with: [				self renderMaximumAbsoluteAgeOn: html.				self renderMaximumRelativeAgeOn: html.				self renderMaximumSizeOn: html.				self renderOverflowActionOn: html ].					self renderCacheReplaceOn: html ]! !
!WAHashCacheAttributeEditor categoriesFor: #configuration:!accessing!public! !
!WAHashCacheAttributeEditor categoriesFor: #createCache!private! !
!WAHashCacheAttributeEditor categoriesFor: #renderConfigurationOn:!public!rendering! !

