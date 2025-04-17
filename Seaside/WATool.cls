"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WATool
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATool guid: (GUID fromString: '{9b6f21e1-f7ea-464a-8929-bae9edfd54b3}')!

WATool comment: 'A WATool is the common base class for tools called from the development tool bar. Is doesn''t do anything but including WADevelopmentFiles.'!

!WATool categoriesForClass!Core! !

!WATool methodsFor!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.	WAToolFiles default updateRoot: anHtmlRoot.	WADevelopmentFiles default updateRoot: anHtmlRoot! !

!WATool categoriesForMethods!
updateRoot:!public!updating! !
!

