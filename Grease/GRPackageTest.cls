"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #GRPackageTest
	instanceVariableNames: 'package'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRPackageTest guid: (GUID fromString: '{6080e69c-ee91-40da-8bc7-a3f321a65391}')!
GRPackageTest comment: ''!
!GRPackageTest categoriesForClass!Grease-Tests-Core! !
!GRPackageTest methodsFor!

setUp	super setUp.	package := GRPackage new!

testAllDependencies	| packages |	packages := Dictionary new.	packages 		at: 'Lust' put: (GRPackage new			name: 'Lust';			addDependency: 'Gluttony';			addDependency: 'Greed';			yourself);		at: 'Gluttony' put: (GRPackage new			name: 'Gluttony';			addDependency: 'Greed';			yourself);		at: 'Greed' put: (GRPackage new			name: 'Greed';			yourself).	packages values 		do: [ :each | each resolveWith: packages ].		self assert: (packages at: 'Lust') allDependencies size = 3.	self assert: (packages at: 'Gluttony') allDependencies size = 2.	self assert: (packages at: 'Greed') allDependencies size = 1!

testDependencies	self assert: package dependencies isEmpty.	package addDependency: 'Lust'.	package addDependency: 'Envy'.	self assert: package dependencies size = 2.	self assert: package dependencies first = 'Lust'.	self assert: package dependencies last = 'Envy'	!

testDescription	self assert: package description isNil.	package description: 'A hopeless pacakge'.	self assert: package description = 'A hopeless pacakge'!

testLicense	self assert: package license = #MIT.	self assert: package isMIT.		package license: #LGPL.	self assert: package license = #LGPL.	self assert: package isLGPL!

testName	self assert: package name isNil.	package name: 'Gimme-Hope'.	self assert: package name = 'Gimme-Hope'!

testPackages	| packages |	packages := GRPackage grPackages.	self assert: packages notEmpty.	packages do: [ :each | 		self assert: each name notEmpty.		self assert: each license notNil.		self assert: each url notNil ]!

testUrl	self assert: package url isNil.		package url: #seasideLGPLUrl.	self assert: package url = GRPackage new seasideLGPLUrl. 		package url: 'http://www.seaside.st/distributions'.	self assert: package url = 'http://www.seaside.st/distributions'! !
!GRPackageTest categoriesFor: #setUp!public!running! !
!GRPackageTest categoriesFor: #testAllDependencies!public!tests/dependencies! !
!GRPackageTest categoriesFor: #testDependencies!public!tests/dependencies! !
!GRPackageTest categoriesFor: #testDescription!public!tests! !
!GRPackageTest categoriesFor: #testLicense!public!tests! !
!GRPackageTest categoriesFor: #testName!public!tests! !
!GRPackageTest categoriesFor: #testPackages!public!tests/packages! !
!GRPackageTest categoriesFor: #testUrl!public!tests! !

