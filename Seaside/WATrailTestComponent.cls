"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WATrailTestComponent
	instanceVariableNames: 'count'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATrailTestComponent guid: (GUID fromString: '{cacd9e0e-d87e-4923-81f0-9f54bc260ea6}')!

WATrailTestComponent comment: ''!

!WATrailTestComponent categoriesForClass!Unclassified! !

!WATrailTestComponent methodsFor!

count: aNumber	count := aNumber!

initialize	super initialize.	count := 1!

renderContentOn: html	html heading		level: 1;		with: self trailName.	html anchor		callback: [ self show: (self class new count: count+1; yourself) ];		with: 'Call'.			html space.			html anchor		callback: [ self answer ];		with: 'Answer'!

trailName	^ 'Item ' , count greaseString , ' (' , self identityHash greaseString , ')'! !

!WATrailTestComponent categoriesForMethods!
count:!accessing!public! !
initialize!initialization!public! !
renderContentOn:!public!rendering! !
trailName!accessing!public! !
!

