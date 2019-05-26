"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAHashTableSizes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'sizes'!
WAHashTableSizes guid: (GUID fromString: '{d378df9e-71b1-4d78-b5e7-ed5a7d161859}')!
WAHashTableSizes comment: 'WAHashTableSizes class	instanceVariableNames: ''sizes'''!
!WAHashTableSizes categoriesForClass!Seaside-Core-Cache! !
!WAHashTableSizes class methodsFor!

atLeast: lowerLimit	"Answer the next good size >= lowerlimit.	If lowerLimit is larger than the largest known good prime,	just make it odd."	| primes low mid high prime |	primes := self sizes.	low := 1.	high := primes size.	lowerLimit > (primes at: high)		ifTrue: [			^ lowerLimit even				ifTrue: [ lowerLimit + 1 ]				ifFalse: [ lowerLimit ] ].	[ mid := (high - low) // 2 + low.	prime := primes at: mid.	prime < lowerLimit		ifTrue: [ low := mid ]		ifFalse: [ high := mid ].	high - low <= 1		ifTrue: [ ^ primes at: high ] ] repeat!

initialize
	"Throw away any previously-cached sizes, then compute and cache the sizes."
	"WAHashTableSizes initialize"
	
	sizes := nil.
	self sizes!

sizes
	sizes isNil
		ifTrue: [ sizes := #(0 7 11 13 17 23 29 31 37 41 47 53 61 73 79 97 107 137 163 181 211 239 293 347 367 463 557 643 727 859 1097 1279 1451 1663 2213 2531 2897 3329 3823 4391 5051 5801 6659 7643 8783 10091 11587 13313 15287 17569 20173 23173 26627 35129 40343 46349 53233 70241 80687 92683 106487 140521 161377 185369 212969 244589 280963 322747 370759 425857 489179 561923 645481 741457 851723 1123841 1290983 1482919 1703437 2247673 2581907 2965847 3406841 4495357 5163797 5931649 6813673 8990687 10327627 11863289 13627357 17981399 20655181 23726569 27254671 35962753 41310361 47453149 54509341 71925533 82620719 94906297 109018691 143851009 165241457 189812533 218037343 287702021 330482857 379625083 436074697 575404003 660965629 759250133 872149373 1001836547) ].
	^ sizes! !
!WAHashTableSizes class categoriesFor: #atLeast:!public! !
!WAHashTableSizes class categoriesFor: #initialize!initialize/release!public! !
!WAHashTableSizes class categoriesFor: #sizes!public! !

