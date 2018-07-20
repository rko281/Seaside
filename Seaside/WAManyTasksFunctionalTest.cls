"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAManyTasksFunctionalTest
	instanceVariableNames: 'tasks selection'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAManyTasksFunctionalTest guid: (GUID fromString: '{57edf4e0-203b-49a5-acfa-e878058a4dc0}')!
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
!WAManyTasksFunctionalTest categoriesFor: #addTask!actions!public! !
!WAManyTasksFunctionalTest categoriesFor: #children!hooks!public! !
!WAManyTasksFunctionalTest categoriesFor: #initialize!initialization!public! !
!WAManyTasksFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WAManyTasksFunctionalTest categoriesFor: #renderTasksOn:!public!rendering! !
!WAManyTasksFunctionalTest categoriesFor: #showTask!actions!public! !
!WAManyTasksFunctionalTest categoriesFor: #states!hooks!public! !
!WAManyTasksFunctionalTest categoriesFor: #taskClasses!accessing!public! !

