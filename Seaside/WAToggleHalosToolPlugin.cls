"Filed out from Dolphin Smalltalk 7"!

WAToolPlugin subclass: #WAToggleHalosToolPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAToggleHalosToolPlugin guid: (GUID fromString: '{dd20d4c6-ea86-468b-87ba-dab90febc61b}')!
WAToggleHalosToolPlugin comment: 'I toggle halos on and off.'!
!WAToggleHalosToolPlugin categoriesForClass!Seaside-Development-Plugins! !
!WAToggleHalosToolPlugin methodsFor!

execute	 self requestor toggleHalos!

label	^ 'Halos'!

priority	^ 300! !
!WAToggleHalosToolPlugin categoriesFor: #execute!actions!public! !
!WAToggleHalosToolPlugin categoriesFor: #label!accessing!public! !
!WAToggleHalosToolPlugin categoriesFor: #priority!accessing!public! !

