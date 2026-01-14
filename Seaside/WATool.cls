"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WATool
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATool guid: (GUID fromString: '{0bee145d-8efb-41f9-b28b-db3f0ccd8cb0}')!

WATool comment: 'A WATool is the common base class for tools called from the development tool bar. Is doesn''t do anything but including WADevelopmentFiles.'!

!WATool categoriesForClass!Seaside-Development-Core! !

!WATool methodsFor!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.	WAToolFiles default updateRoot: anHtmlRoot.	WADevelopmentFiles default updateRoot: anHtmlRoot! !

!WATool categoriesForMethods!
updateRoot:!public!updating! !
!

