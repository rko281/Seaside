"Filed out from Dolphin Smalltalk 7"!

WAConfiguration subclass: #WASystemConfiguration
	instanceVariableNames: 'description'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'instance'!
WASystemConfiguration guid: (GUID fromString: '{56214620-576f-42b6-9732-93333f3e98e2}')!
WASystemConfiguration comment: 'You should subclass WASystemConfiguration to define new attributes. The method #describeOn: is passed an instance of WAConfigurationDescription which can be used to create new attributes. The attributes can be configured to specify their default value, label, and so on. See the methods on WAAttribute and its subclasses to see what options are available.If a configuration needs to override the value of another WASystemConfiguration or depends on its attributes, implement the method "parents", returning a collection of configuration objects.WASystemConfiguration subclasses are "read-only" in that their attributes, parents, and default values are all specified in code. Users and applications that want to configure values for attributes should create a WAUserConfiguration and specify the WASystemConfiguration in its ancestry.WASystemConfiguration classes are singleton. You should use #instance on the class side to get the current instance. You cannot call #copy on a WASystemConfiguration.Subclasses should implement the following messages:	describeOn:		They may also want to implement:	parents'!
!WASystemConfiguration categoriesForClass!Seaside-Core-Configuration! !
!WASystemConfiguration methodsFor!

attributes	^ self description attributes!

buildDescription	| d |	d := WAConfigurationDescription new.	self describeOn: d.	^ description := d!

clearDescription	description := nil.	self clearSearchContexts!

copy	^ self error: 'SystemConfigurations are singletons and should not be copied.'!

describeOn: conf	"Should be implemented by subclasses to add attributes and value overrides to the configuration"!

description	^ description isNil 		ifFalse: [ description ]		ifTrue: [ self buildDescription ]!

expressionAt: aSymbol ifAbsent: absentBlock	^ self description expressions at: aSymbol ifAbsent: absentBlock!

localAttributeAt: aSymbol ifAbsent: absentBlock	^ self attributes at: aSymbol ifAbsent: absentBlock!

localAttributesDo: aBlock	self attributes do: aBlock! !
!WASystemConfiguration categoriesFor: #attributes!private! !
!WASystemConfiguration categoriesFor: #buildDescription!description!public! !
!WASystemConfiguration categoriesFor: #clearDescription!description!public! !
!WASystemConfiguration categoriesFor: #copy!copying!public! !
!WASystemConfiguration categoriesFor: #describeOn:!description!public! !
!WASystemConfiguration categoriesFor: #description!private! !
!WASystemConfiguration categoriesFor: #expressionAt:ifAbsent:!public!values! !
!WASystemConfiguration categoriesFor: #localAttributeAt:ifAbsent:!attributes!public! !
!WASystemConfiguration categoriesFor: #localAttributesDo:!attributes!public! !

!WASystemConfiguration class methodsFor!

clearAllDescriptions	self allSubclasses do: [ :each | each instance clearDescription ]!

initialize	"Work around for Issue 643	http://code.google.com/p/seaside/issues/detail?id=643"	self clearAllDescriptions!

instance	^ instance ifNil: [ instance := self basicNew initialize ]!

new	^ self error: 'SystemConfigurations are singletons. Use #instance.'! !
!WASystemConfiguration class categoriesFor: #clearAllDescriptions!actions!public! !
!WASystemConfiguration class categoriesFor: #initialize!class initialization!public! !
!WASystemConfiguration class categoriesFor: #instance!accessing!public! !
!WASystemConfiguration class categoriesFor: #new!instance creation!public! !

