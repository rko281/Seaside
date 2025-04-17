"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAConfigurationDescription
	instanceVariableNames: 'attributes expressions'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAConfigurationDescription guid: (GUID fromString: '{40ea3147-7d7d-43a4-b9f2-51ce484120c0}')!

WAConfigurationDescription comment: 'I hold a collection of attributes and present methods to construct new methods, providing an interface a bit like WACanvas and #renderContentOn: to WASystemConfiguration>>addAttributes:.I can use any kind of collection class and handle setting the #configuration: parameter of the attribute appropriately on addition. If my collection is a Dictionary, I will store the attributes by their keys.'!

!WAConfigurationDescription categoriesForClass!Configuration! !

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

!WAConfigurationDescription categoriesForMethods!
add:to:!private! !
addAttribute:!attribute creation!public! !
addExpression:!public!values! !
at:addAll:!public!values! !
at:addAll:removeAll:!public!values! !
at:put:!public!values! !
at:putClass:!public!values! !
attributes!accessing!public! !
boolean:!attribute creation!public! !
classBinding:!attribute creation!public! !
classBindingCollection:!attribute creation!public! !
collection:!attribute creation!public! !
expressions!accessing!public! !
initialize!initialization!public! !
integer:!attribute creation!public! !
list:!attribute creation!public! !
listOfClasses:!attribute creation!public! !
number:!attribute creation!public! !
password:!attribute creation!public! !
string:!attribute creation!public! !
url:!attribute creation!public! !
!

