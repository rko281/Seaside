"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAStatus
	instanceVariableNames: 'navigation'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAStatus guid: (GUID fromString: '{6352762e-47c1-4a02-811a-d6027365ccae}')!
WAStatus comment: 'A WAStatus displays various information about state of this system.'!
!WAStatus categoriesForClass!Seaside-Tools-Web! !
!WAStatus methodsFor!

children	^ Array with: navigation!

initialize	super initialize.	navigation := WASimpleNavigation new.	WAStatusItem sortedConcreteSubinstances do: [ :each |		each isSupported ifTrue: [			navigation add: each label: each label ] ].	navigation selectFirst!

initialRequest: aRequest 	super initialRequest: aRequest.	self requestContext consumer nextIfPresentDo: [ :className | 		navigation components do: [ :each | 			"#greaseString is required because of Symbol <-> String comparison"			each value class name greaseString = className ifTrue: [ navigation select: each key ] ] ]!

selected	^ navigation selectedComponent!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.	self selected notNil 		ifTrue: [ anHtmlRoot title: self selected title ]!

updateUrl: aUrl	super updateUrl: aUrl.	self selected notNil 		ifTrue: [ aUrl addToPath: self selected class name ]! !
!WAStatus categoriesFor: #children!hooks!public! !
!WAStatus categoriesFor: #initialize!initialization!public! !
!WAStatus categoriesFor: #initialRequest:!hooks!public! !
!WAStatus categoriesFor: #selected!accessing!public! !
!WAStatus categoriesFor: #updateRoot:!public!updating! !
!WAStatus categoriesFor: #updateUrl:!public!updating! !

!WAStatus class methodsFor!

initialize	(WAAdmin register: self asApplicationAt: 'status')		addLibrary: WANavigationFiles! !
!WAStatus class categoriesFor: #initialize!class initialization!public! !

