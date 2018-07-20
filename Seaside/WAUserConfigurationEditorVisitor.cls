﻿"Filed out from Dolphin Smalltalk 7"!

WAAttributeVisitor subclass: #WAUserConfigurationEditorVisitor
	instanceVariableNames: 'configuration canvas'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUserConfigurationEditorVisitor guid: (GUID fromString: '{e29cef67-fd47-4689-a24c-9d4c71fc4e50}')!
WAUserConfigurationEditorVisitor comment: ''!
!WAUserConfigurationEditorVisitor categoriesForClass!Seaside-Tools-Web! !
!WAUserConfigurationEditorVisitor methodsFor!

configuration

html

initializeWithConfiguration: aUserConfiguration canvas: aRenderCanvas

visitBooleanAttribute: anAttribute

visitClassBindingAttribute: anAttribute

visitClassBindingCollectionAttribute: anAttribute 

visitClassListAttribute: anAttribute

visitCollectionAttribute: anAttribute 

visitListAttribute: anAttribute

visitNumberAttribute: anAttribute

visitPasswordAttribute: anAttribute

visitStringAttribute: anAttribute

visitUrlAttribute: anAttribute
!WAUserConfigurationEditorVisitor categoriesFor: #configuration!accessing!public! !
!WAUserConfigurationEditorVisitor categoriesFor: #html!accessing!public! !
!WAUserConfigurationEditorVisitor categoriesFor: #initializeWithConfiguration:canvas:!initialization!public! !
!WAUserConfigurationEditorVisitor categoriesFor: #visitBooleanAttribute:!public!visiting! !
!WAUserConfigurationEditorVisitor categoriesFor: #visitClassBindingAttribute:!public!visiting! !
!WAUserConfigurationEditorVisitor categoriesFor: #visitClassBindingCollectionAttribute:!public!visiting! !
!WAUserConfigurationEditorVisitor categoriesFor: #visitClassListAttribute:!public!visiting! !
!WAUserConfigurationEditorVisitor categoriesFor: #visitCollectionAttribute:!public!visiting! !
!WAUserConfigurationEditorVisitor categoriesFor: #visitListAttribute:!public!visiting! !
!WAUserConfigurationEditorVisitor categoriesFor: #visitNumberAttribute:!public!visiting! !
!WAUserConfigurationEditorVisitor categoriesFor: #visitPasswordAttribute:!public!visiting! !
!WAUserConfigurationEditorVisitor categoriesFor: #visitStringAttribute:!public!visiting! !
!WAUserConfigurationEditorVisitor categoriesFor: #visitUrlAttribute:!public!visiting! !

!WAUserConfigurationEditorVisitor class methodsFor!

configuration: aUserConfiguration canvas: aRenderCanvas
!WAUserConfigurationEditorVisitor class categoriesFor: #configuration:canvas:!instance creation!public! !
