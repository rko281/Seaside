"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAAttributeSearchContext
	instanceVariableNames: 'key attribute cachedValues attributeHolders attributeInheritors'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAttributeSearchContext guid: (GUID fromString: '{f1fe9722-366e-4a6e-838c-638b776c625f}')!
WAAttributeSearchContext comment: 'This class makes attribute searching more efficient by traversing the ancestry once and caching which Configurations hold the attribute. It is then passed through search functions which cache values for the attribute.'!
!WAAttributeSearchContext categoriesForClass!Seaside-Core-Configuration! !
!WAAttributeSearchContext methodsFor!

at: aConfiguration ifPresent: aBlock	^ self cachedValues at: aConfiguration ifPresent: aBlock!

at: aConfiguration put: cachedObject	^ self cachedValues at: aConfiguration put: cachedObject!

attribute	^ attribute!

cachedValues	^ cachedValues!

findAttributeAndSelectAncestorsOf: aConfiguration	| found |	(attributeHolders includes: aConfiguration) ifTrue: [ ^ true ].				aConfiguration localAttributeAt: self key ifPresent: [ :attr |		attribute := attr.		attributeHolders add: aConfiguration.		^ true ].			found := false.	aConfiguration parents do: [ :each |		found := found | (self findAttributeAndSelectAncestorsOf: each) ].		found ifTrue: [ attributeInheritors add: aConfiguration ].		^ found!

initializeWithKey: keySymbol	self initialize.	key := keySymbol.	attributeHolders := Set new.	attributeInheritors := Set new.	cachedValues := Dictionary new!

isAttributeFoundOn: aConfiguration 	^ (self isAttributeLocalOn: aConfiguration) or: [ self isAttributeInheritedOn: aConfiguration ]!

isAttributeInheritedOn: aConfiguration 	^ attributeInheritors includes: aConfiguration!

isAttributeLocalOn: aConfiguration 	^ attributeHolders includes: aConfiguration!

key	^ key! !
!WAAttributeSearchContext categoriesFor: #at:ifPresent:!accessing!public! !
!WAAttributeSearchContext categoriesFor: #at:put:!accessing!public! !
!WAAttributeSearchContext categoriesFor: #attribute!accessing!public! !
!WAAttributeSearchContext categoriesFor: #cachedValues!private! !
!WAAttributeSearchContext categoriesFor: #findAttributeAndSelectAncestorsOf:!private! !
!WAAttributeSearchContext categoriesFor: #initializeWithKey:!initialization!public! !
!WAAttributeSearchContext categoriesFor: #isAttributeFoundOn:!public!testing! !
!WAAttributeSearchContext categoriesFor: #isAttributeInheritedOn:!public!testing! !
!WAAttributeSearchContext categoriesFor: #isAttributeLocalOn:!public!testing! !
!WAAttributeSearchContext categoriesFor: #key!accessing!public! !

!WAAttributeSearchContext class methodsFor!

key: keySymbol target: targetConfiguration	^ self basicNew		initializeWithKey: keySymbol;		findAttributeAndSelectAncestorsOf: targetConfiguration;		yourself! !
!WAAttributeSearchContext class categoriesFor: #key:target:!instance creation!public! !

