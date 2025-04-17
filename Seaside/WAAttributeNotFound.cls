"Filed out from Dolphin Smalltalk"!

WAConfigurationError subclass: #WAAttributeNotFound
	instanceVariableNames: 'key'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAttributeNotFound guid: (GUID fromString: '{0617418d-0724-4540-9e86-a0496230c0d6}')!

WAAttributeNotFound comment: ''!

!WAAttributeNotFound categoriesForClass!Configuration! !

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

