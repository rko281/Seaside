"Filed out from Dolphin Smalltalk 7"!

WAConfigurationError subclass: #WAAttributeNotFound
	instanceVariableNames: 'key'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAttributeNotFound guid: (GUID fromString: '{f46a7cc3-76a0-48cc-a251-8a2891fe7797}')!
WAAttributeNotFound comment: ''!
!WAAttributeNotFound categoriesForClass!Seaside-Core-Configuration! !
!WAAttributeNotFound methodsFor!

initializeWithKey: aSymbol	key := aSymbol!

key	^ key!

seasidePossibleCauses	^ #(		'you need to clear your configuration caches to see new attributes (try "WAAdmin clearConfigurationCaches" in a workspace)'		'you have not included a necessary ancestor in a configuration'	)! !
!WAAttributeNotFound categoriesFor: #initializeWithKey:!initialization!public! !
!WAAttributeNotFound categoriesFor: #key!accessing!public! !
!WAAttributeNotFound categoriesFor: #seasidePossibleCauses!accessing!public! !

!WAAttributeNotFound class methodsFor!

signalWithKey: aSymbol	^ self new		initializeWithKey: aSymbol;		signal! !
!WAAttributeNotFound class categoriesFor: #signalWithKey:!public!signaling! !

