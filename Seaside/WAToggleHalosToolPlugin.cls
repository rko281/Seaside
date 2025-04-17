"Filed out from Dolphin Smalltalk"!

WAToolPlugin subclass: #WAToggleHalosToolPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAToggleHalosToolPlugin guid: (GUID fromString: '{3a7c55a4-e4f3-44cb-b38d-61491dbe1690}')!

WAToggleHalosToolPlugin comment: 'I toggle halos on and off.'!

!WAToggleHalosToolPlugin categoriesForClass!Plugins! !

!WAToggleHalosToolPlugin methodsFor!

execute	 self requestor toggleHalos!

label	^ 'Halos'!

priority	^ 300! !

!WAToggleHalosToolPlugin categoriesForMethods!
execute!actions!public! !
label!accessing!public! !
priority!accessing!public! !
!

