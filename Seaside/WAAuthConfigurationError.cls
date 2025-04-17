"Filed out from Dolphin Smalltalk"!

WAError subclass: #WAAuthConfigurationError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAuthConfigurationError guid: (GUID fromString: '{2b5eb72b-40a1-4e33-b96e-1ce292d90acf}')!

WAAuthConfigurationError comment: 'A WAAuthConfigurationError is signaled when no WAAuthConfiguration was added to an application that is behind a WAAuthenticationFilter.'!

!WAAuthConfigurationError categoriesForClass!Exceptions! !

!WAAuthConfigurationError methodsFor!

seasidePossibleCauses	^ #('No WAAuthConfiguration has been added to the application.')! !

!WAAuthConfigurationError categoriesForMethods!
seasidePossibleCauses!accessing!public! !
!

