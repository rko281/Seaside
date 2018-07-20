"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WATrailTestComponent
	instanceVariableNames: 'count'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATrailTestComponent guid: (GUID fromString: '{342f79ea-36ba-4331-a7be-c68718697c4e}')!
WATrailTestComponent comment: ''!
!WATrailTestComponent categoriesForClass!Seaside-Tests-Functional! !
!WATrailTestComponent methodsFor!

count: aNumber	count := aNumber!

initialize	super initialize.	count := 1!

renderContentOn: html	html heading		level: 1;		with: self trailName.	html anchor		callback: [ self show: (self class new count: count+1; yourself) ];		with: 'Call'.			html space.			html anchor		callback: [ self answer ];		with: 'Answer'!

trailName	^ 'Item ' , count greaseString , ' (' , self identityHash greaseString , ')'! !
!WATrailTestComponent categoriesFor: #count:!accessing!public! !
!WATrailTestComponent categoriesFor: #initialize!initialization!public! !
!WATrailTestComponent categoriesFor: #renderContentOn:!public!rendering! !
!WATrailTestComponent categoriesFor: #trailName!accessing!public! !

