"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAAllFunctionalTests
	instanceVariableNames: 'classes current'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAllFunctionalTests guid: (GUID fromString: '{7b86d46b-c3c9-4cb5-8ab0-d87f577a20a4}')!

WAAllFunctionalTests comment: 'If you want to see these examples:/config app:- add a new application named "tests"- choose WAAllFunctionalTests as the root component'!

!WAAllFunctionalTests categoriesForClass!Unclassified! !

!WAAllFunctionalTests methodsFor!

children	^ Array with: current contents!

initialize	super initialize.	self initializeTests!

initializeTests	classes := (WAPresenter allSubclasses select: [ :each | each isFunctionalTest ])				asSortedCollection: [ :a :b | a name < b name ].	current := WAValueHolder with: classes first new!

initialRequest: aRequest 	super initialRequest: aRequest.	self requestContext consumer nextIfPresentDo: [ :className | 		classes do: [ :each | 			"#greaseString is required because of Symbol <-> String comparison"			each name greaseString = className ifTrue: [ self selected: each ] ] ]!

next	| nextIndex |	nextIndex := self selectionIndex \\ classes size + 1.	self selected: (classes at: nextIndex)!

previous	| nextIndex |	nextIndex := (self selectionIndex + classes size - 2 \\ classes size) + 1.	self selected: (classes at: nextIndex)!

renderContentOn: html	html heading: self class description.	html form: [		html paragraph: [			html anchor				callback: [ self previous ];				with: [ html html: '&larr;' ].			html select				list: classes;				onChange: 'submit()';				selected: self selected;				labels: [ :value | value name ];				callback: [ :value | self selected: value ].			html anchor				callback: [ self next ];				with: [ html html: '&rarr;' ].			html text: ' '; submitButton: 'Restart' ] ].	html horizontalRule.	html render: current contents!

selected	^ current contents class!

selected: aClass	current contents: aClass new.	(current contents respondsTo: #parent:)		ifTrue: [ current contents parent: self ]!

selectionIndex	^ classes indexOf: self selected!

states	^ Array with: current!

updateUrl: aUrl	super updateUrl: aUrl.	"class name is a Symbol, using a String makes a big difference for WALotsaLinksFunctionalTest"	aUrl addToPath: self selected name greaseString! !

!WAAllFunctionalTests categoriesForMethods!
children!hooks!public! !
initialize!initialization!public! !
initializeTests!initialization!public! !
initialRequest:!hooks!public! !
next!actions!public! !
previous!actions!public! !
renderContentOn:!public!rendering! !
selected!accessing!public! !
selected:!accessing!public! !
selectionIndex!private! !
states!hooks!public! !
updateUrl:!public!updating! !
!

!WAAllFunctionalTests class methodsFor!

canBeRoot	^ true!

description	^ 'Seaside Functional Test Suite'!

initialize	(WAAdmin register: self asApplicationAt: 'tests/functional')		sessionClass: WAExpirySession! !

!WAAllFunctionalTests class categoriesForMethods!
canBeRoot!public!testing! !
description!accessing!public! !
initialize!initialization!public! !
!

