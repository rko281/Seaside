"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #GRPackage
	instanceVariableNames: 'name description dependencies license url'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRPackage guid: (GUID fromString: '{63daa48b-0f8d-402d-a951-995afddba3a1}')!
GRPackage comment: 'I am a platform independent package representation. I know my name, description, my dependencies, the license and the repository URL. Packages are declared by creating a class side extension method that answers a configured package instance. The expression    GRPackage packagesanswers the collection of the complete package graph.'!
!GRPackage categoriesForClass!Grease-Core! !
!GRPackage methodsFor!

addDependenciesTo: aCollection	(aCollection includes: self) ifFalse: [		self dependencies			do: [ :each | each addDependenciesTo: aCollection ].		aCollection add: self ].	^ aCollection!

addDependency: aString	dependencies add: aString!

allDependencies	"Answer all dependencies on which this package depends."	^ self addDependenciesTo: OrderedCollection new!

dependencies	"Return a collection of package names on which this package depends."	^ dependencies!

description	"Answer a short description of the package."	^ description!

description: aString	description := aString!

greaseUrl	^ 'http://smalltalkhub.com/mc/Seaside/Grease11/main'!

initialize	super initialize.	dependencies := OrderedCollection new.	license := #MIT!

isLGPL	^ self license = #LGPL!

isMIT	^ self license = #MIT!

license	"Answer the current license of this package, by default MIT is used."	^ license!

license: aSymbol	license := aSymbol!

name	"Answer the name of the package. This string should be useable to identify the platform specific native package object, e.g. the Monticello package name."	^ name!

name: aString	name := aString!

printOn: aStream	super printOn: aStream.	aStream nextPut: $(; nextPutAll: self name; nextPut: $)!

resolveWith: aDictionary	dependencies := dependencies 		collect: [ :each |			aDictionary at: each ifAbsent: [				"if Foo-Pharo-Bar fails try Foo-Pharo20-Bar and Foo-Pharo30-Bar"				(each indexOfSubCollection: '-Pharo-' startingAt: 1) ~= 0 ifTrue: [ 					"try -Pharo20-"					aDictionary at: (each copyReplaceAll: '-Pharo-' with: '-Pharo20-') ifAbsent: [						"try -Pharo30-"						aDictionary at: (each copyReplaceAll: '-Pharo-' with: '-Pharo30-') ifAbsent: [							"try -Pharo40-"							aDictionary at: (each copyReplaceAll: '-Pharo-' with: '-Pharo40-') ifAbsent: [								"try -Pharo50-"								aDictionary at: (each copyReplaceAll: '-Pharo-' with: '-Pharo50-') ifAbsent: [									self error: self name printString , ' depends on unknown package ' , each printString ] ] ] ] ] ] ]!

seasideAddonsUrl	^ 'http://smalltalkhub.com/mc/Seaside/Seaside30Addons/main'!

seasideLGPLUrl	^ 'http://smalltalkhub.com/mc/Seaside/Seaside30LGPL/main'!

seasideUrl	^ 'http://smalltalkhub.com/mc/Seaside/Seaside31/main'!

url	"Answer the base-URL of the package. This string is only meaningful for platforms that can directly access Monticello repositories."	^ url isSymbol		ifTrue: [ self perform: url ]		ifFalse: [ url ]!

url: aStringOrSymbol	"Set the base-URL of the package, or a symbol referring to a method in this class that answers the URL. This setting is only meaningful for platforms that can directly access Monticello repositories."	url := aStringOrSymbol! !
!GRPackage categoriesFor: #addDependenciesTo:!private! !
!GRPackage categoriesFor: #addDependency:!dependencies!public! !
!GRPackage categoriesFor: #allDependencies!dependencies!public! !
!GRPackage categoriesFor: #dependencies!dependencies!public! !
!GRPackage categoriesFor: #description!accessing!public! !
!GRPackage categoriesFor: #description:!accessing!public! !
!GRPackage categoriesFor: #greaseUrl!accessing/repositories!public! !
!GRPackage categoriesFor: #initialize!initialization!public! !
!GRPackage categoriesFor: #isLGPL!public!testing! !
!GRPackage categoriesFor: #isMIT!public!testing! !
!GRPackage categoriesFor: #license!accessing!public! !
!GRPackage categoriesFor: #license:!accessing!public! !
!GRPackage categoriesFor: #name!accessing!public! !
!GRPackage categoriesFor: #name:!accessing!public! !
!GRPackage categoriesFor: #printOn:!printing!public! !
!GRPackage categoriesFor: #resolveWith:!dependencies!public! !
!GRPackage categoriesFor: #seasideAddonsUrl!accessing/repositories!public! !
!GRPackage categoriesFor: #seasideLGPLUrl!accessing/repositories!public! !
!GRPackage categoriesFor: #seasideUrl!accessing/repositories!public! !
!GRPackage categoriesFor: #url!accessing!public! !
!GRPackage categoriesFor: #url:!accessing!public! !

!GRPackage class methodsFor!

greaseCore	^ self new		name: 'Grease-Core';		description: 'The main package of the Grease compatibility layer.';		url: #greaseUrl;		yourself!

grPackages	"Answer a list of all registered packages. A package is registered by adding a class extension to the receiving class answering an instance of the receiving class."	| packages package |	packages := Dictionary new.	self class selectors do: [ :each |		(each numArgs = 0 and: [ each ~= #grPackages ]) ifTrue: [ 			package := self perform: each.			packages at: package name put: package ] ].	packages do: [ :each | each resolveWith: packages ].	^ packages values! !
!GRPackage class categoriesFor: #greaseCore!accessing!public! !
!GRPackage class categoriesFor: #grPackages!public!querying! !

