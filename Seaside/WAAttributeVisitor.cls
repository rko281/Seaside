﻿"Filed out from Dolphin Smalltalk"!

WAVisitor subclass: #WAAttributeVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAttributeVisitor guid: (GUID fromString: '{e73e8fa3-971e-4a8f-a88b-9c41d6c266ba}')!

WAAttributeVisitor comment: 'A visitor of attributes'!

!WAAttributeVisitor categoriesForClass!Configuration! !

!WAAttributeVisitor methodsFor!

visitAttribute: anAttribute!

visitBooleanAttribute: anAttribute	self visitAttribute: anAttribute!

visitClassBindingAttribute: anAttribute	self visitListAttribute: anAttribute!

visitClassBindingCollectionAttribute: anAttribute	self visitListAttribute: anAttribute!

visitClassListAttribute: anAttribute	self visitListAttribute: anAttribute!

visitCollectionAttribute: anAttribute	self visitListAttribute: anAttribute!

visitIntegerAttribute: anAttribute	self visitNumberAttribute: anAttribute!

visitListAttribute: anAttribute	self visitAttribute: anAttribute!

visitNumberAttribute: anAttribute	self visitAttribute: anAttribute!

visitPasswordAttribute: anAttribute	self visitAttribute: anAttribute!

visitStringAttribute: anAttribute	self visitAttribute: anAttribute!

visitUrlAttribute: anAttribute	self visitAttribute: anAttribute! !

!WAAttributeVisitor categoriesForMethods!
visitAttribute:!public!visiting! !
visitBooleanAttribute:!public!visiting! !
visitClassBindingAttribute:!public!visiting! !
visitClassBindingCollectionAttribute:!public!visiting! !
visitClassListAttribute:!public!visiting! !
visitCollectionAttribute:!public!visiting! !
visitIntegerAttribute:!public!visiting! !
visitListAttribute:!public!visiting! !
visitNumberAttribute:!public!visiting! !
visitPasswordAttribute:!public!visiting! !
visitStringAttribute:!public!visiting! !
visitUrlAttribute:!public!visiting! !
!

