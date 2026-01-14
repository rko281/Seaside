"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WATrailTestComponent
	instanceVariableNames: 'count'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATrailTestComponent guid: (GUID fromString: '{883fe032-4a3b-4f87-9ce9-99781a16b04a}')!

WATrailTestComponent comment: ''!

!WATrailTestComponent categoriesForClass!Seaside-Tests-Functional! !

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

