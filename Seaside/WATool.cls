"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WATool
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATool guid: (GUID fromString: '{ad6514d7-33af-4894-bb03-e75d6ea11107}')!
WATool comment: 'A WATool is the common base class for tools called from the development tool bar. Is doesn''t do anything but including WADevelopmentFiles.'!
!WATool categoriesForClass!Seaside-Development-Core! !
!WATool methodsFor!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.	WAToolFiles default updateRoot: anHtmlRoot.	WADevelopmentFiles default updateRoot: anHtmlRoot! !
!WATool categoriesFor: #updateRoot:!public!updating! !

