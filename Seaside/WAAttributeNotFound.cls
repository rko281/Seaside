"Filed out from Dolphin Smalltalk"!

WAConfigurationError subclass: #WAAttributeNotFound
	instanceVariableNames: 'key'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAttributeNotFound guid: (GUID fromString: '{ad80a335-24a1-4cb2-a693-01f9336a602a}')!

WAAttributeNotFound comment: ''!

!WAAttributeNotFound categoriesForClass!Seaside-Core-Configuration! !

!WAAttributeNotFound methodsFor!

initializeWithKey: aSymbol	key := aSymbol!

key	^ key!

seasidePossibleCauses	^ #(		'you need to clear your configuration caches to see new attributes (try "WAAdmin clearConfigurationCaches" in a workspace)'		'you have not included a necessary ancestor in a configuration'	)! !

!WAAttributeNotFound categoriesForMethods!
initializeWithKey:!initialization!public! !
key!accessing!public! !
seasidePossibleCauses!accessing!public! !
!

!WAAttributeNotFound class methodsFor!

signalWithKey: aSymbol	^ self new		initializeWithKey: aSymbol;		signal! !

!WAAttributeNotFound class categoriesForMethods!
signalWithKey:!public!signaling! !
!

