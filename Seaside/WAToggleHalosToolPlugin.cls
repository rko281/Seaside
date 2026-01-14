"Filed out from Dolphin Smalltalk"!

WAToolPlugin subclass: #WAToggleHalosToolPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAToggleHalosToolPlugin guid: (GUID fromString: '{68856b3d-2d52-4358-a8d5-bb2c25013dce}')!

WAToggleHalosToolPlugin comment: 'I toggle halos on and off.'!

!WAToggleHalosToolPlugin categoriesForClass!Seaside-Development-Plugins! !

!WAToggleHalosToolPlugin methodsFor!

execute	 self requestor toggleHalos!

label	^ 'Halos'!

priority	^ 300! !

!WAToggleHalosToolPlugin categoriesForMethods!
execute!actions!public! !
label!accessing!public! !
priority!accessing!public! !
!

