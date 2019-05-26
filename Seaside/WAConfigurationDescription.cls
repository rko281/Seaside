"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAConfigurationDescription
	instanceVariableNames: 'attributes expressions'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAConfigurationDescription guid: (GUID fromString: '{86ca1896-6819-4383-b998-923c38566ea6}')!
WAConfigurationDescription comment: 'I hold a collection of attributes and present methods to construct new methods, providing an interface a bit like WACanvas and #renderContentOn: to WASystemConfiguration>>addAttributes:.I can use any kind of collection class and handle setting the #configuration: parameter of the attribute appropriately on addition. If my collection is a Dictionary, I will store the attributes by their keys.'!
!WAConfigurationDescription categoriesForClass!Seaside-Core-Configuration! !
!WAConfigurationDescription methodsFor!

add: aDescriptor to: aDictionary	^ aDictionary at: aDescriptor key put: aDescriptor!

addAttribute: anAttribute	^ self add: anAttribute to: attributes!

addExpression: anExpression	^ self add: anExpression to: expressions!

at: aSymbol addAll: aCollection	self at: aSymbol addAll: aCollection removeAll: #()!

at: aSymbol addAll: additions removeAll: removals	self addExpression: ((WAAddRemoveExpression key: aSymbol)			additions: additions;			removals: removals;			yourself)!

at: aSymbol put: anObject 	self addExpression: ((WAValueExpression key: aSymbol)			value: anObject;			yourself)!

at: aSymbol putClass: aClass 	self at: aSymbol put: (GRPlatform current bindingOf: aClass)!

attributes	^ attributes!

boolean: aSymbol	^ self addAttribute: (WABooleanAttribute key: aSymbol)!

classBinding: aSymbol	^ self addAttribute: (WAClassBindingAttribute key: aSymbol)!

classBindingCollection: aSymbol	^ self addAttribute: (WAClassBindingCollectionAttribute key: aSymbol)!

collection: aSymbol	^ self addAttribute: (WACollectionAttribute key: aSymbol)!

expressions	^ expressions!

initialize	super initialize.	attributes := IdentityDictionary new.	expressions := IdentityDictionary new!

integer: aSymbol	^ self addAttribute: (WAIntegerAttribute key: aSymbol)!

list: aSymbol	^ self addAttribute: (WAListAttribute key: aSymbol)!

listOfClasses: aSymbol	^ self addAttribute: (WAClassListAttribute key: aSymbol)!

number: aSymbol	^ self addAttribute: (WANumberAttribute key: aSymbol)!

password: aSymbol	^ self addAttribute: (WAPasswordAttribute key: aSymbol)!

string: aSymbol	^ self addAttribute: (WAStringAttribute key: aSymbol)!

url: aSymbol	^ self addAttribute: (WAUrlAttribute key: aSymbol)! !
!WAConfigurationDescription categoriesFor: #add:to:!private! !
!WAConfigurationDescription categoriesFor: #addAttribute:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #addExpression:!public!values! !
!WAConfigurationDescription categoriesFor: #at:addAll:!public!values! !
!WAConfigurationDescription categoriesFor: #at:addAll:removeAll:!public!values! !
!WAConfigurationDescription categoriesFor: #at:put:!public!values! !
!WAConfigurationDescription categoriesFor: #at:putClass:!public!values! !
!WAConfigurationDescription categoriesFor: #attributes!accessing!public! !
!WAConfigurationDescription categoriesFor: #boolean:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #classBinding:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #classBindingCollection:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #collection:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #expressions!accessing!public! !
!WAConfigurationDescription categoriesFor: #initialize!initialization!public! !
!WAConfigurationDescription categoriesFor: #integer:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #list:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #listOfClasses:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #number:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #password:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #string:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #url:!attribute creation!public! !

