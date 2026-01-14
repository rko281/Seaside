"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAManyTasksFunctionalTest
	instanceVariableNames: 'tasks selection'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAManyTasksFunctionalTest guid: (GUID fromString: '{a5f98df4-300e-4540-83b0-a0734487f0ea}')!

WAManyTasksFunctionalTest comment: ''!

!WAManyTasksFunctionalTest categoriesForClass!Seaside-Tests-Functional! !

!WAManyTasksFunctionalTest methodsFor!

addTask	selection contents notNil ifTrue: [ tasks add: selection contents new ]!

children	^ tasks!

initialize	super initialize.	tasks := OrderedCollection new.	selection := WAValueHolder new.	tasks add: WADelegationTask new!

renderContentOn: html	html form: [ 		html div: [			html paragraph: 'Adding WAEmptyTestTask is expected to cause an infinite recursion and should raise an exception.'.			html select				list: (self taskClasses asSortedCollection: [ :a :b | a name <= b name ]);				on: #contents of: selection.			html submitButton				callback: [ self addTask ];				with: 'Add'.			html submitButton				callback: [ self showTask ];				with: 'Show' ] ].	self renderTasksOn: html!

renderTasksOn: html	tasks do: [ :each |		html div: [			html div: each.			html anchor				callback: [ tasks remove: each ];				with: '(remove task)' ] ]!

showTask	selection contents notNil ifTrue: [ self show: selection contents new ]!

states	^ Array with: tasks!

taskClasses	^ WATask allSubclasses select: [ :each | each subclasses isEmpty ]! !

!WAManyTasksFunctionalTest categoriesForMethods!
addTask!actions!public! !
children!hooks!public! !
initialize!initialization!public! !
renderContentOn:!public!rendering! !
renderTasksOn:!public!rendering! !
showTask!actions!public! !
states!hooks!public! !
taskClasses!accessing!public! !
!

