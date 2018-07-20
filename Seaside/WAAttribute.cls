﻿"Filed out from Dolphin Smalltalk 7"!

WAConfigurationElement subclass: #WAAttribute
	instanceVariableNames: 'group comment label default advanced'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAttribute guid: (GUID fromString: '{09b4d990-860c-403d-9395-4ece7cfa8af9}')!
WAAttribute comment: 'A WAAttribute represents a value of a specified type in a Seaside configuration. Some attributes are needed by Seaside for application parameters like deployment Mode and session timeout. Optional attributes like a database login may be used internally by the application.
!WAAttribute categoriesForClass!Seaside-Core-Configuration! !
!WAAttribute methodsFor!

accept: aVisitor

beAdvanced

comment

comment: aString

default

default: anObject

group

group: aSymbol

initializeWithKey: aSymbol

isAdvanced

isCollectionAttribute

label

label: aString

printOn: aStream 

stringForValue: anObject 

valueFromString: aString
!WAAttribute categoriesFor: #accept:!public!visiting! !
!WAAttribute categoriesFor: #beAdvanced!actions!public! !
!WAAttribute categoriesFor: #comment!accessing!public! !
!WAAttribute categoriesFor: #comment:!accessing!public! !
!WAAttribute categoriesFor: #default!accessing!public! !
!WAAttribute categoriesFor: #default:!accessing!public! !
!WAAttribute categoriesFor: #group!accessing!public! !
!WAAttribute categoriesFor: #group:!accessing!public! !
!WAAttribute categoriesFor: #initializeWithKey:!initialization!public! !
!WAAttribute categoriesFor: #isAdvanced!public!testing! !
!WAAttribute categoriesFor: #isCollectionAttribute!public!testing! !
!WAAttribute categoriesFor: #label!accessing!public! !
!WAAttribute categoriesFor: #label:!accessing!public! !
!WAAttribute categoriesFor: #printOn:!printing!public! !
!WAAttribute categoriesFor: #stringForValue:!converting!public! !
!WAAttribute categoriesFor: #valueFromString:!converting!public! !
