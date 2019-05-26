"Filed out from Dolphin Smalltalk 7"!

WAError subclass: #WAAuthConfigurationError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAuthConfigurationError guid: (GUID fromString: '{2c1b5649-8db2-49e0-a9c3-7f8562aca2c6}')!
WAAuthConfigurationError comment: 'A WAAuthConfigurationError is signaled when no WAAuthConfiguration was added to an application that is behind a WAAuthenticationFilter.'!
!WAAuthConfigurationError categoriesForClass!Seaside-Core-Exceptions! !
!WAAuthConfigurationError methodsFor!

seasidePossibleCauses	^ #('No WAAuthConfiguration has been added to the application.')! !
!WAAuthConfigurationError categoriesFor: #seasidePossibleCauses!accessing!public! !

