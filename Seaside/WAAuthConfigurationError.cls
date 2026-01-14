"Filed out from Dolphin Smalltalk"!

WAError subclass: #WAAuthConfigurationError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAuthConfigurationError guid: (GUID fromString: '{fa0f213d-02bb-4ab6-ba4f-60154cfcb51b}')!

WAAuthConfigurationError comment: 'A WAAuthConfigurationError is signaled when no WAAuthConfiguration was added to an application that is behind a WAAuthenticationFilter.'!

!WAAuthConfigurationError categoriesForClass!Seaside-Core-Exceptions! !

!WAAuthConfigurationError methodsFor!

seasidePossibleCauses	^ #('No WAAuthConfiguration has been added to the application.')! !

!WAAuthConfigurationError categoriesForMethods!
seasidePossibleCauses!accessing!public! !
!

