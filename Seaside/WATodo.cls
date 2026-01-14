"Filed out from Dolphin Smalltalk"!

WAExampleComponent subclass: #WATodo
	instanceVariableNames: 'todos'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATodo guid: (GUID fromString: '{d470fbad-0bce-4201-a8f9-cdc587739b5b}')!

WATodo comment: 'I am the TODO application example''s root component'!

!WATodo categoriesForClass!Seaside-Examples-Misc! !

!WATodo methodsFor!

addTodo: aString	| newTodo |	newTodo := WATodoItem newWithDescription: aString in: todos.	todos add: newTodo.	^ newTodo!

children	^ self todos!

initialize	super initialize.	todos := OrderedCollection new.	1 to: 10 do: [ :index | 		self addTodo: ('Task {1}' format: { index greaseString }) ]!

renderAddNewTodoOn: html	| newTodo |	html header		id: #header;		with: [			html form: [				html heading					level: 1;					with: 'todos'.				html textInput					id: #'new-todo';					autofocus;					attributeAt: 'autocomplete' put: 'off';					callback: [ :value | newTodo := self addTodo: value ];					placeholder: 'What needs to be done?' ] ]!

renderContentOn: html	html section		id: #todoapp;		with: [			self renderAddNewTodoOn: html.			self renderTodosOn: html ]!

renderTodosOn: html	html section		id: 'main';		with: [			html checkbox				id: 'toggle-all'.			html  label 				for: 'toggle-all';				with: 'Mark all as complete'.			html unorderedList				id: 'todo-list';				with: [ self todos do: [ :todoItem | todoItem renderOn: html ] ] ]!

todos	^ todos!

updateRoot: aRoot	super updateRoot: aRoot.	aRoot title: 'Seaside Todo Demo'.	aRoot stylesheet url: WAExamplesLibrary / #todoCss! !

!WATodo categoriesForMethods!
addTodo:!adding!public! !
children!hooks!public! !
initialize!initialization!public! !
renderAddNewTodoOn:!public!rendering! !
renderContentOn:!public!rendering! !
renderTodosOn:!public!rendering! !
todos!accessing!public! !
updateRoot:!public!updating! !
!

!WATodo class methodsFor!

initialize	(WAAdmin register: self asApplicationAt: '/examples/todo')		exceptionHandler: WADebugErrorHandler;		addLibrary: WAExamplesLibrary! !

!WATodo class categoriesForMethods!
initialize!initialization!public! !
!

