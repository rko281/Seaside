"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #GRVersionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRVersionTest guid: (GUID fromString: '{7d8501fa-c15f-420f-a136-f7b23b4ae687}')!
GRVersionTest comment: ''!
!GRVersionTest categoriesForClass!Grease-Tests-Core! !
!GRVersionTest methodsFor!

assert: aVersionArray equals: bVersionArray	| a b |	a := self buildVersion: aVersionArray.	b := self buildVersion: bVersionArray.	self deny: a < b.	self assert: a <= b.	self deny: b < a.	self assert: b <= a.	self deny: b > a.	self assert: b >= a.	self deny: a > b.	self assert: a >= b.	self assert: a = b!

assert: aVersionArray sortsBefore: bVersionArray	| a b |	a := self buildVersion: aVersionArray.	b := self buildVersion: bVersionArray.	self assert: a < b.	self assert: a <= b.	self deny: b < a.	self deny: b <= a.	self assert: b > a.	self assert: b >= a.	self deny: a > b.	self deny: a >= b.	self deny: a = b!

buildVersion: anArray	^ (GRVersion		major: (anArray at: 1 ifAbsent: [ nil ])		minor: (anArray at: 2 ifAbsent: [ nil ])		revision: (anArray at: 3 ifAbsent: [ nil ]))			stage: (anArray at: 4 ifAbsent: [ nil ]) number: (anArray at: 5 ifAbsent: [ nil ]);			yourself!

testComparison	self assert: #(1) sortsBefore: #(2).	self assert: #(2) sortsBefore: #(10).	self assert: #(1) sortsBefore: #(1 1).	self assert: #(1 nil nil #alpha) sortsBefore: #(1).	self assert: #(1 nil nil #alpha) sortsBefore: #(1 0).	self assert: #(1 nil nil #alpha) sortsBefore: #(1 0 0).	self assert: #(1 0) sortsBefore: #(2).	self assert: #(1 0) sortsBefore: #(2 0).	self assert: #(1 0) sortsBefore: #(1 1).	self assert: #(1 2) sortsBefore: #(1 10).	self assert: #(1 0 nil #alpha) sortsBefore: #(1 0).	self assert: #(1 0 nil #alpha) sortsBefore: #(1 0 0).	self assert: #(1 0 0) sortsBefore: #(2).	self assert: #(1 0 0) sortsBefore: #(1 1).	self assert: #(1 0 1) sortsBefore: #(1 1).	self assert: #(1 0 1 #alpha) sortsBefore: #(1 1).	self assert: #(1 1 0 #alpha) sortsBefore: #(1 1).	self assert: #(1 1 0 #alpha 2) sortsBefore: #(1 1).	self assert: #(1 1 0 #beta) sortsBefore: #(1 1).	self assert: #(1 1 0 #beta 2) sortsBefore: #(1 1).	self assert: #(1 nil nil #alpha) sortsBefore: #(1 nil nil #alpha 2).	self assert: #(1 nil nil #beta) sortsBefore: #(1 nil nil #beta 2).	self assert: #(1 0 nil #alpha) sortsBefore: #(1 0 nil #alpha 2).	self assert: #(1 0 nil #beta) sortsBefore: #(1 0 nil #beta 2).	self assert: #(1 0 0 #alpha) sortsBefore: #(1 0 0 #alpha 2).	self assert: #(1 0 0 #beta) sortsBefore: #(1 0 0 #beta 2)!

testConvenience	| version |	version := GRVersion major: 1 minor: 2 revision: 3.	self assert: version stage isNil.	self assert: version stageNumber isNil.	self assert: version isFinal.	self deny: version isAlpha.	self deny: version isBeta.	version beAlpha.	self assert: version stage = #alpha.	self assert: version stageNumber isNil.	self assert: version isAlpha.	self deny: version isBeta.	self deny: version isFinal.	version beBeta.	self assert: version stage = #beta.	self assert: version stageNumber isNil.	self assert: version isBeta.	self deny: version isAlpha.	self deny: version isFinal.	version beReleaseCandidate.	self assert: version stage = #rc.	self assert: version stageNumber isNil.	self assert: version isReleaseCandidate.	version beReleaseCandidate: 1.	self assert: version stage = #rc.	self assert: version stageNumber = 1.	self assert: version isReleaseCandidate.	version beAlpha: 1.	self assert: version stage = #alpha.	self assert: version stageNumber = 1.	self assert: version isAlpha.	self deny: version isBeta.	self deny: version isFinal.	version beBeta: 1.	self assert: version stage = #beta.	self assert: version stageNumber = 1.	self assert: version isBeta.	self deny: version isAlpha.	self deny: version isFinal.	version beFinal.	self assert: version stage isNil.	self assert: version stageNumber isNil.	self assert: version isFinal.	self deny: version isAlpha.	self deny: version isBeta!

testEquality	self assert: #(1) equals: #(1).	self assert: #(1) equals: #(1 0).	self assert: #(1) equals: #(1 0 0).	self assert: #(1 0) equals: #(1 0).	self assert: #(1 0) equals: #(1 0 0).	self assert: #(1 0 0) equals: #(1 0 0).	self assert: #(1 0 0 #alpha) equals: #(1 0 0 #alpha 1).	self assert: #(1 0 0 #beta) equals: #(1 0 0 #beta 1)!

testStringConversion	self assert: (GRVersion major: 1 minor: 2 revision: 3) greaseString = '1.2.3'.	self assert: (GRVersion major: 11 minor: 12 revision: 13) greaseString = '11.12.13'.	self assert: (GRVersion major: 1 minor: 2) greaseString = '1.2'.	self assert: (GRVersion major: 1 minor: 2 revision: 0) greaseString = '1.2.0'.	self assert: (GRVersion major: 1) greaseString = '1.0'.	self assert: ((GRVersion major: 1 minor: 2 revision: 3) beAlpha) greaseString = '1.2.3alpha'.	self assert: ((GRVersion major: 1 minor: 2 revision: 3) beAlpha: 1) greaseString = '1.2.3alpha1'.	self assert: ((GRVersion major: 1 minor: 2 revision: 3) beBeta) greaseString = '1.2.3beta'.	self assert: ((GRVersion major: 1 minor: 2 revision: 3) beBeta: 1) greaseString = '1.2.3beta1'! !
!GRVersionTest categoriesFor: #assert:equals:!asserting!public! !
!GRVersionTest categoriesFor: #assert:sortsBefore:!asserting!public! !
!GRVersionTest categoriesFor: #buildVersion:!private! !
!GRVersionTest categoriesFor: #testComparison!public!tests! !
!GRVersionTest categoriesFor: #testConvenience!public!tests! !
!GRVersionTest categoriesFor: #testEquality!public!tests! !
!GRVersionTest categoriesFor: #testStringConversion!public!tests! !

