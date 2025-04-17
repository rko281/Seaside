"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAAttributeSearchContext
	instanceVariableNames: 'key attribute cachedValues attributeHolders attributeInheritors'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAttributeSearchContext guid: (GUID fromString: '{8ea481ac-c58b-4ca5-b40b-0faabcb3bb87}')!

WAAttributeSearchContext comment: 'This class makes attribute searching more efficient by traversing the ancestry once and caching which Configurations hold the attribute. It is then passed through search functions which cache values for the attribute.'!

!WAAttributeSearchContext categoriesForClass!Configuration! !

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

!WAAttributeSearchContext categoriesForMethods!
at:ifPresent:!accessing!public! !
at:put:!accessing!public! !
attribute!accessing!public! !
cachedValues!private! !
findAttributeAndSelectAncestorsOf:!private! !
initializeWithKey:!initialization!public! !
isAttributeFoundOn:!public!testing! !
isAttributeInheritedOn:!public!testing! !
isAttributeLocalOn:!public!testing! !
key!accessing!public! !
!

!WAAttributeSearchContext class methodsFor!

key: keySymbol target: targetConfiguration	^ self basicNew		initializeWithKey: keySymbol;		findAttributeAndSelectAncestorsOf: targetConfiguration;		yourself! !

!WAAttributeSearchContext class categoriesForMethods!
key:target:!instance creation!public! !
!

