"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAStatus
	instanceVariableNames: 'navigation'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAStatus guid: (GUID fromString: '{d403789b-ec8a-4533-96e8-570f498a8e72}')!

WAStatus comment: 'A WAStatus displays various information about state of this system.'!

!WAStatus categoriesForClass!Unclassified! !

!WAStatus methodsFor!

children	^ Array with: navigation!

initialize	super initialize.	navigation := WASimpleNavigation new.	WAStatusItem sortedConcreteSubinstances do: [ :each |		each isSupported ifTrue: [			navigation add: each label: each label ] ].	navigation selectFirst!

initialRequest: aRequest 	super initialRequest: aRequest.	self requestContext consumer nextIfPresentDo: [ :className | 		navigation components do: [ :each | 			"#greaseString is required because of Symbol <-> String comparison"			each value class name greaseString = className ifTrue: [ navigation select: each key ] ] ]!

selected	^ navigation selectedComponent!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.	self selected notNil 		ifTrue: [ anHtmlRoot title: self selected title ]!

updateUrl: aUrl	super updateUrl: aUrl.	self selected notNil 		ifTrue: [ aUrl addToPath: self selected class name ]! !

!WAStatus categoriesForMethods!
children!hooks!public! !
initialize!initialization!public! !
initialRequest:!hooks!public! !
selected!accessing!public! !
updateRoot:!public!updating! !
updateUrl:!public!updating! !
!

!WAStatus class methodsFor!

initialize	(WAAdmin register: self asApplicationAt: 'status')		addLibrary: WANavigationFiles! !

!WAStatus class categoriesForMethods!
initialize!class initialization!public! !
!

