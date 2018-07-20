"Filed out from Dolphin Smalltalk 7"!

WAError subclass: #WAAuthConfigurationError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAuthConfigurationError guid: (GUID fromString: '{cb7e9fc2-47d9-427f-b078-d502fe9e5afa}')!
WAAuthConfigurationError comment: 'A WAAuthConfigurationError is signaled when no WAAuthConfiguration was added to an application that is behind a WAAuthenticationFilter.'!
!WAAuthConfigurationError categoriesForClass!Seaside-Core-Exceptions! !
!WAAuthConfigurationError methodsFor!

seasidePossibleCauses	^ #('No WAAuthConfiguration has been added to the application.')! !
!WAAuthConfigurationError categoriesFor: #seasidePossibleCauses!accessing!public! !

