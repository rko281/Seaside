"Filed out from Dolphin Smalltalk"!

Object subclass: #Browser
	instanceVariableNames: 'systemCategories classNames methodCategories selectors contents displayOption isClassComment className categoryName selectedPackage selectedClass selectedMethodCategory selectedMethod'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Browser guid: (GUID fromString: '{85ded604-987f-4a26-b277-833be63e37dc}')!

Browser comment: ''!

!Browser categoriesForClass!Unclassified! !

!Browser methodsFor!

allClasses
       ^Class allClasses asSortedCollection: [:a :b | a name <= b name]!

allClassesOfSelectedPackage

       selectedPackage ifNil: [^self allClasses].
       ^selectedPackage classes asSortedCollection: [:a :b | a name <= b name]!

allCompiledMethodOfSelectedClass

	^self selectedBehavior ifNotNil: [
		self selectedBehavior methodDictionary asSortedCollection: [:a :b | a selector <= b selector]]!

allMethodOfSelectedMethodCategory

       (selectedMethodCategory = MethodCategory all) ifTrue: [^self allCompiledMethodOfSelectedClass].
       ^self allCompiledMethodOfSelectedClass select:[:e | e categories includes: selectedMethodCategory]
!

allMethods

       ^MethodCategory all!

allPackages

       ^Package manager packages asSortedCollection: [:a :b | a name <= b name]!

classComment

       | comment |
       comment := self selectedClass comment.
       comment isEmpty ifTrue:
               [comment := self selectedClass commentTemplateString].
       ^ comment.!

classDefinition

	^self selectedClass definition!

classList
       ^self classNames !

classListIndex
       "^self classNames selectionIndex"

       selectedClass ifNil: [^0].
       ^self allClassesOfSelectedPackage indexOf: selectedClass!

classListIndex: anInteger
       | save |

       save := self isClassComment.
       selectedClass := self classNames at: anInteger ifAbsent:[nil].
       self methodCategories: nil.
       self methodCategories.
       self isClassComment: save.
       self computeContents!

classNames

       selectedPackage isNil ifTrue: [^Class allClasses].
       ^self allClassesOfSelectedPackage!

classNames: anObject

       classNames := anObject.
       self methodCategories: nil.!

classNamesFor: aString 
	| items |
	items := Smalltalk allClasses 
				select: [:each | each name includesSubstring: aString caseSensitive: false].
	^(items asArray readStream nextAvailable: 10) collect: [:each | each displayString]!

classTemplate
       ^'WAComponent subclass: #NameOfClass
	instanceVariableNames: ''instVarName1 instVarName2''
	classVariableNames: ''''
	poolDictionaries: ''''
	classInstanceVariableNames: '''''!

compileClassDefinition: aString notifying: anObject

       | theClass pos |
       [theClass := Compiler
               evaluate: aString
               for: nil
               "in: Seaside"
               "notifying: nil"
               logged: false.
       self classNames: nil.
       self systemCategories selection: self selectedSystemCategory.
       self classNames selection: theClass fullyQualifiedReference.
       self changed]

       on: Error do:
               [:error |
               pos := (error respondsTo: #position) ifTrue: [error position] ifFalse: [0].
               anObject notify: error description at: pos  in: aString readStream].!

compileMethod: aString notifying: anObject
       | category class pos |

       class := selectedClass.
       self isDisplayingClass ifTrue: [class := class class].
       category := selectedMethodCategory.

       [(category = self allMethods or: [category isNil])
               ifFalse:
                       [class compile: aString classified: category.
                       self selectors: nil]
               ifTrue:
                       [class compile: aString.
                       self methodCategories: nil.
                       selectedMethodCategory := category].
       self changed]
                       on: Error
                       do:
                               [:error |
                               pos := (error respondsTo: #position) ifTrue: [error position] ifFalse: [0].
                               anObject
                                       notify: error description
                                       at: pos
                                       in: aString readStream]!

compileNewClass: aString notifying: anObject

       | theClass pos |
       [theClass := Compiler
               evaluate: aString
               for: nil
"               in: Seaside
               notifying: nil"
               logged: false.
       self classNames: nil.
       self systemCategories selection: self selectedSystemCategory.
       self classNames selection: theClass fullyQualifiedReference.
       self changed]

       on: Error do:
               [:error |
               pos := (error respondsTo: #position) ifTrue: [error position] ifFalse: [0].
               anObject notify: error description at: pos  in: aString readStream].!

computeContents

       self contents: self computedContents.
       self changed.!

computedContents
       self isClassComment ifTrue:
               [^self isClassSelected
                       ifTrue:
                               [self classComment]
                       ifFalse:
                               [self classTemplate]].
       self isMethodSelected ifTrue: [^self methodSource].
       self isMethodCategorySelected ifTrue: [^self sourceCodeTemplate].
       self isClassSelected ifTrue: [^self classDefinition].
       ^self classTemplate!

contents

       ^contents!

contents: anObject
       contents := anObject!

contents: aString notifying: anObject

       self contents: aString.
       self isClassComment ifTrue:
               [^self isClassSelected
                       ifTrue:
                               [self selectedClass comment: aString]
                       ifFalse:
                               [self compileClassDefinition: aString notifying: anObject]].
       self isMethodCategorySelected | self isMethodSelected ifTrue:
               [^self compileMethod: aString asString notifying: anObject].
       ^ self compileClassDefinition: aString notifying: anObject!

defaultDisplayOption
       ^self displayOptionInstance!

displayOption
       displayOption isNil ifTrue: [self initializeDisplayOption].
       ^displayOption!

displayOption: anObject
       anObject == displayOption ifFalse:
               [displayOption := anObject.
               self methodCategories: nil.
		self selectors: nil.
		selectedMethod := nil.
		self displaySourceCodeOfSelectedMethod]!

displayOptionClass
       ^ #class!

displayOptionInstance
       ^ #instance!

displaySourceCodeOfSelectedMethod

       selectedMethod ifNil: [^self contents: ''].

       ^self contents: selectedMethod getSource!

getSelectedMethodIndex: anInteger
	"Answer the index of receiver selected method."

	| methods |
       selectedMethodCategory ifNil: [^self allCompiledMethodOfSelectedClass at: anInteger].
       ^(methods := self allMethodOfSelectedMethodCategory) notEmpty ifTrue: [methods at: anInteger]
!

indicateClassMessages
       self displayOption: self displayOptionClass.
       self isClassComment: false.!

indicateInstanceMessages
       self displayOption: self displayOptionInstance.
       self isClassComment: false.!

initializeClassNames
       | packageClasses |

       packageClasses := selectedPackage isNil ifTrue: [Class allClasses] ifFalse: [selectedPackage classes asSortedCollection: [:a :b | a name <= b name]].

       self classNames: (ListModel on: packageClasses).

"       Root withAllNameSpacesDo:
               [:each |
               list addAll: ((each classNames select: [:name | (each at: name) category = category]) collect: [:name | (each at: name) fullyQualifiedReference])].
       self classNames: (SelectionInList with: list asSortedCollection"!

initializeDisplayOption
       self displayOption: self defaultDisplayOption.!

initializeMethodCategories
       | list |

       self selectedBehavior ifNil: [^self methodCategories: ListModel new].
       list := self selectedBehavior methodCategories asOrderedCollection.
       list addFirst: self allMethods.
       self methodCategories: (ListModel on: list).
       self selectors: nil.!

initializeSelectors
       | class list category |

       selectedClass ifNil: [^self selectors: ListModel new].
       category := selectedMethodCategory isNil ifTrue: [MethodCategory all] ifFalse:[selectedMethodCategory].
       list := selectedClass isNil
               ifTrue: [OrderedCollection new]
               ifFalse:
                       [class := self isDisplayingClass ifTrue: [selectedClass class] ifFalse: [selectedClass].
                       (category isNil or: [category = self allMethods]) ifFalse:
                               [class selectors asSortedCollection]
                       ifTrue:
                               [class selectors asSortedCollection]].
       self selectors: (ListModel on: list).
       "self selectors: (SelectionInList with: list)."!

initializeSystemCategories

       self systemCategories: (ListModel on: (Package manager packages asSortedCollection: [:a :b | a name <= b name])).

"
       | list |
       list := Set new.
       Root
               withAllNameSpacesDo: [:each | list addAll: each organization classCategories].
       self systemCategories: (SelectionInList with: list asSortedCollection)."!

isClassComment
       isClassComment isNil ifTrue:
               [self isClassComment: false].
       ^isClassComment!

isClassComment: anObject
       isClassComment := anObject.
       self changed.!

isClassSelected

       ^ self isSystemCategorySelected and: [self selectedClass notNil].!

isDisplayingClass
       ^ self displayOption == self displayOptionClass!

isMethodCategorySelected

       ^ self isClassSelected and: [selectedMethodCategory notNil].!

isMethodSelected

       "^ self selectors selection notNil"

       ^selectedMethod notNil!

isSystemCategorySelected

       ^ self selectedSystemCategory notNil!

messageCategoryList
       ^ self methodCategories list.!

messageCategoryListIndex

       selectedMethodCategory ifNil: [^0].

       ^self methodCategories indexOf: selectedMethodCategory ifAbsent: [0]

       "^self methodCategories selectionIndex"!

messageCategoryListIndex: anInteger

       selectedClass ifNil: [^self selectors: nil].
	anInteger > 0
		ifTrue: [
			selectedMethodCategory := self methodCategories at: anInteger.
			self renderMethodOfSelectedCategory ]
		ifFalse: [  self isClassComment: false].
       self computeContents!

messageList
       ^ self selectors list!

messageListIndex

       (selectedClass isNil or:[selectedMethod isNil]) ifTrue: [^0].
       selectedMethodCategory ifNil: [^self allCompiledMethodOfSelectedClass indexOf: selectedMethod].
       ^self allMethodOfSelectedMethodCategory indexOf: selectedMethod!

messageListIndex: anInteger
	
	anInteger > 0 
		ifTrue: [selectedMethod := self getSelectedMethodIndex: anInteger]
		ifFalse: [self isClassComment: false].
       self displaySourceCodeOfSelectedMethod.
       self computeContents!

metaClassIndicated
	^self selectedClass notNil and: [self selectedClass ~= self selectedClass instanceClass]!

methodCategories
       methodCategories isNil ifTrue: [self initializeMethodCategories].
       ^methodCategories!

methodCategories: anObject

       methodCategories := anObject.
       self selectors: nil.!

methodSource
       | class |

       class := self selectedClass.
       self isDisplayingClass ifTrue: [class:= class class].
       ^selectedMethod getSource!

plusButtonHit
       self isClassComment: self isClassComment not.
       self isClassComment ifTrue:
               [self messageCategoryListIndex: 0.
               self messageListIndex: 0].!

renderClassesOfSelectedPackage
       selectedPackage isNil ifTrue: [^self classNames: ListModel new].
       ^self
               classNames: (ListModel on: (selectedPackage classes asSortedCollection: [:a :b | a name <= b name]))!

renderMethodCategoriesOfSelectedClass

       selectedPackage isNil ifTrue: [^self classNames: ListModel new].

       ^self classNames: (ListModel on: (selectedPackage classes asSortedCollection: [:a :b | a name <= b name]))!

renderMethodOfClass

       selectedClass isNil ifTrue: [^self classNames: ListModel new].
       ^self
               selectors: (ListModel on: (self allCompiledMethodOfSelectedClass collect: [:each | each selector]))!

renderMethodOfSelectedCategory

	| methods |
	selectedClass isNil ifTrue: [^self methodCategories: ListModel new].
	methods := self allMethodOfSelectedMethodCategory.
	(methods includes: selectedMethod) ifFalse: [selectedMethod := nil].
	^self selectors: (ListModel on: (methods collect: [:each | each selector]))!

selectedBehavior
	"Answer the class or the meta."

	^selectedClass ifNotNil: [:selection | self isDisplayingClass ifTrue: [selection class] ifFalse: [selection]]!

selectedClass

       ^selectedClass!

selectedClassName

       "^ self classNames selection"

       ^className!

selectedMessageName
	"Answer the message selector of the currently selected message, if any. 
	Answer nil otherwise."

	^self selectedMethod ifNotNil: [:m | m selector]
!

selectedMethod

       ^selectedMethod!

selectedMethodCategory

       ^ self methodCategories selection!

selectedSystemCategory

       ^ClassCategory name: (categoryName ifNil: [''])!

selectors
       selectors isNil ifTrue: [self initializeSelectors].
       ^selectors!

selectors: anObject
       selectors := anObject.
       self changed.!

setClass: aClass selector: aSelector
       | category |

       category := aClass owningPackage.
       self systemCategoryListIndex: (self systemCategoryList indexOf: category).
       self classListIndex: (self classList indexOf: aClass "fullyQualifiedReference").
       self computeContents!

sourceCodeTemplate

       ^String new!

systemCategories

       systemCategories isNil ifTrue: [self initializeSystemCategories].
       ^systemCategories!

systemCategories: anObject
       systemCategories := anObject.
       self classNames: nil.!

systemCategoryList
       ^ self systemCategories list.!

systemCategoryListIndex
       "^self systemCategories selectionIndex"

       selectedPackage ifNil: [^0].
       ^self allPackages indexOf: selectedPackage!

systemCategoryListIndex: anInteger
       "       self systemCategories selectionIndex: anInteger."

       selectedPackage := anInteger isZero
                               ifFalse: [(Package manager packages asSortedCollection: [:a :b | a name <= b name]) at: anInteger]
                               ifTrue: [nil].
       self renderClassesOfSelectedPackage.
       self computeContents!

waBrowser

       ^self dependents last! !

!Browser categoriesForMethods!
allClasses!public! !
allClassesOfSelectedPackage!public! !
allCompiledMethodOfSelectedClass!public! !
allMethodOfSelectedMethodCategory!public! !
allMethods!initializing!public! !
allPackages!public! !
classComment!public! !
classDefinition!public! !
classList!public! !
classListIndex!indexes!public! !
classListIndex:!indexes!initializing!public! !
classNames!public! !
classNames:!public! !
classNamesFor:!public! !
classTemplate!public! !
compileClassDefinition:notifying:!public! !
compileMethod:notifying:!public! !
compileNewClass:notifying:!public! !
computeContents!public! !
computedContents!public! !
contents!public! !
contents:!public! !
contents:notifying:!public! !
defaultDisplayOption!public! !
displayOption!public! !
displayOption:!public! !
displayOptionClass!public! !
displayOptionInstance!public! !
displaySourceCodeOfSelectedMethod!public! !
getSelectedMethodIndex:!indexes!initializing!public! !
indicateClassMessages!public! !
indicateInstanceMessages!public! !
initializeClassNames!initializing!public!selection! !
initializeDisplayOption!initializing!public!selection! !
initializeMethodCategories!initializing!public!selection! !
initializeSelectors!initializing!public!selection! !
initializeSystemCategories!accessing!initializing!public!selection! !
isClassComment!public! !
isClassComment:!public! !
isClassSelected!public! !
isDisplayingClass!public! !
isMethodCategorySelected!public! !
isMethodSelected!public! !
isSystemCategorySelected!public! !
messageCategoryList!indexes!public! !
messageCategoryListIndex!indexes!public! !
messageCategoryListIndex:!indexes!initializing!public!render! !
messageList!indexes!public! !
messageListIndex!indexes!public! !
messageListIndex:!indexes!initializing!public! !
metaClassIndicated!public! !
methodCategories!public! !
methodCategories:!public! !
methodSource!public! !
plusButtonHit!public! !
renderClassesOfSelectedPackage!initializing!public!render! !
renderMethodCategoriesOfSelectedClass!initializing!public!render! !
renderMethodOfClass!initializing!public!render! !
renderMethodOfSelectedCategory!public!render! !
selectedBehavior!public! !
selectedClass!public! !
selectedClassName!public! !
selectedMessageName!public! !
selectedMethod!public! !
selectedMethodCategory!public! !
selectedSystemCategory!public! !
selectors!public! !
selectors:!accessing!public! !
setClass:selector:!public! !
sourceCodeTemplate!public! !
systemCategories!accessing!public! !
systemCategories:!accessing!public! !
systemCategoryList!indexes!public! !
systemCategoryListIndex!indexes!public! !
systemCategoryListIndex:!indexes!initializing!public!render! !
waBrowser!public!web selections! !
!

