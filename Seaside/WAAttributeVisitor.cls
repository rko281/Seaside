"Filed out from Dolphin Smalltalk 7"!

WAVisitor subclass: #WAAttributeVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAttributeVisitor guid: (GUID fromString: '{31c7ef20-0fd7-4e2a-a5f2-fa7dedec7e61}')!
WAAttributeVisitor comment: ''!
!WAAttributeVisitor categoriesForClass!Seaside-Core-Configuration! !
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
!WAAttributeVisitor categoriesFor: #visitAttribute:!public!visiting! !
!WAAttributeVisitor categoriesFor: #visitBooleanAttribute:!public!visiting! !
!WAAttributeVisitor categoriesFor: #visitClassBindingAttribute:!public!visiting! !
!WAAttributeVisitor categoriesFor: #visitClassBindingCollectionAttribute:!public!visiting! !
!WAAttributeVisitor categoriesFor: #visitClassListAttribute:!public!visiting! !
!WAAttributeVisitor categoriesFor: #visitCollectionAttribute:!public!visiting! !
!WAAttributeVisitor categoriesFor: #visitIntegerAttribute:!public!visiting! !
!WAAttributeVisitor categoriesFor: #visitListAttribute:!public!visiting! !
!WAAttributeVisitor categoriesFor: #visitNumberAttribute:!public!visiting! !
!WAAttributeVisitor categoriesFor: #visitPasswordAttribute:!public!visiting! !
!WAAttributeVisitor categoriesFor: #visitStringAttribute:!public!visiting! !
!WAAttributeVisitor categoriesFor: #visitUrlAttribute:!public!visiting! !

