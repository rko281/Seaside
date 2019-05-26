"Filed out from Dolphin Smalltalk 7"!

WAToolPlugin subclass: #WAToggleHalosToolPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAToggleHalosToolPlugin guid: (GUID fromString: '{697a9915-a9a1-480f-bc1d-418fa447b8ab}')!
WAToggleHalosToolPlugin comment: 'I toggle halos on and off.'!
!WAToggleHalosToolPlugin categoriesForClass!Seaside-Development-Plugins! !
!WAToggleHalosToolPlugin methodsFor!

execute	 self requestor toggleHalos!

label	^ 'Halos'!

priority	^ 300! !
!WAToggleHalosToolPlugin categoriesFor: #execute!actions!public! !
!WAToggleHalosToolPlugin categoriesFor: #label!accessing!public! !
!WAToggleHalosToolPlugin categoriesFor: #priority!accessing!public! !

