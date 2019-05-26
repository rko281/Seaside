"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAAllFunctionalTests
	instanceVariableNames: 'classes current'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAllFunctionalTests guid: (GUID fromString: '{479e4c77-386c-4af5-8ed3-58083fc52c11}')!
WAAllFunctionalTests comment: 'If you want to see these examples:/config app:- add a new application named "tests"- choose WAAllFunctionalTests as the root component'!
!WAAllFunctionalTests categoriesForClass!Seaside-Tests-Functional! !
!WAAllFunctionalTests methodsFor!

children	^ Array with: current contents!

initialize	super initialize.	self initializeTests!

initializeTests	classes := (WAPresenter allSubclasses select: [ :each | each isFunctionalTest ])				asSortedCollection: [ :a :b | a name < b name ].	current := WAValueHolder with: classes first new!

initialRequest: aRequest 	super initialRequest: aRequest.	self requestContext consumer nextIfPresentDo: [ :className | 		classes do: [ :each | 			"#greaseString is required because of Symbol <-> String comparison"			each name greaseString = className ifTrue: [ self selected: each ] ] ]!

next	| nextIndex |	nextIndex := self selectionIndex \\ classes size + 1.	self selected: (classes at: nextIndex)	!

previous	| nextIndex |	nextIndex := (self selectionIndex + classes size - 2 \\ classes size) + 1.	self selected: (classes at: nextIndex)!

renderContentOn: html	html heading: self class description.	html form: [		html paragraph: [			html anchor				callback: [ self previous ];				with: [ html html: '&larr;' ].			html select				list: classes;				onChange: 'submit()';				selected: self selected;				labels: [ :value | value name ];				callback: [ :value | self selected: value ].			html anchor				callback: [ self next ];				with: [ html html: '&rarr;' ].			html text: ' '; submitButton: 'Restart' ] ].	html horizontalRule.	html render: current contents!

selected	^ current contents class!

selected: aClass	current contents: aClass new.	(current contents respondsTo: #parent:)		ifTrue: [ current contents parent: self ]!

selectionIndex	^ classes indexOf: self selected!

states	^ Array with: current!

updateUrl: aUrl	super updateUrl: aUrl.	"class name is a Symbol, using a String makes a big difference for WALotsaLinksFunctionalTest"	aUrl addToPath: self selected name greaseString! !
!WAAllFunctionalTests categoriesFor: #children!hooks!public! !
!WAAllFunctionalTests categoriesFor: #initialize!initialization!public! !
!WAAllFunctionalTests categoriesFor: #initializeTests!initialization!public! !
!WAAllFunctionalTests categoriesFor: #initialRequest:!hooks!public! !
!WAAllFunctionalTests categoriesFor: #next!actions!public! !
!WAAllFunctionalTests categoriesFor: #previous!actions!public! !
!WAAllFunctionalTests categoriesFor: #renderContentOn:!public!rendering! !
!WAAllFunctionalTests categoriesFor: #selected!accessing!public! !
!WAAllFunctionalTests categoriesFor: #selected:!accessing!public! !
!WAAllFunctionalTests categoriesFor: #selectionIndex!private! !
!WAAllFunctionalTests categoriesFor: #states!hooks!public! !
!WAAllFunctionalTests categoriesFor: #updateUrl:!public!updating! !

!WAAllFunctionalTests class methodsFor!

canBeRoot	^ true!

description	^ 'Seaside Functional Test Suite'!

initialize	(WAAdmin register: self asApplicationAt: 'tests/functional')		sessionClass: WAExpirySession! !
!WAAllFunctionalTests class categoriesFor: #canBeRoot!public!testing! !
!WAAllFunctionalTests class categoriesFor: #description!accessing!public! !
!WAAllFunctionalTests class categoriesFor: #initialize!initialization!public! !

