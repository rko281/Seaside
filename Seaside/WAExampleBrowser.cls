"Filed out from Dolphin Smalltalk 7"!

WAExampleComponent subclass: #WAExampleBrowser
	instanceVariableNames: 'class selector component hasAnswer answer'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAExampleBrowser guid: (GUID fromString: '{38c162f5-5f69-43bd-8f97-b310e57ebbcb}')!
WAExampleBrowser comment: 'I browse all the examples available in the system ie all the results of class side methods beginning with #exampleComponent... If you want to see these examples point your browser to localhost:xxx/examples/examplebrowser'!
!WAExampleBrowser categoriesForClass!Seaside-Examples-Misc! !
!WAExampleBrowser methodsFor!

allClasses	^ (WAComponent allSubclasses		select: [ :each |			each class selectors				anySatisfy: [ :sel | sel beginsWithSubCollection: self selectorPrefix ] ])		asSortedCollection: [ :a :b | a name < b name ]!

allSelectors	^ (class class selectors select: [ :each | each beginsWithSubCollection: self selectorPrefix ]) sorted!

children	^ Array with: component!

class: aClass	class := aClass.	self selector: self allSelectors first!

component: aComponent	component := aComponent.	hasAnswer := false.	answer := nil.	component onAnswer: [ :value | hasAnswer := true. answer := value ]!

initialize	super initialize.	self class: self allClasses first!

renderChooserOn: html	html div class: 'chooser'; with: [		html form: [			html div: [				html select					selected: class;					list: self allClasses;					onChange: 'submit()';					callback: [ :value | self class: value ] ] ].		self allSelectors size > 1 ifTrue: [			html form: [				html div: [					html select						selected: selector;						list: self allSelectors;						onChange: 'submit()';						callback: [ :value | self selector: value ] ] ] ] ]!

renderComponentOn: html	html heading level4; with: component class headerForExampleBrowser.	html div		class: 'component';		with: component.	hasAnswer ifTrue: [		html div			class: 'answer';			with: answer printString ]!

renderContentOn: html	self renderChooserOn: html.	self renderComponentOn: html!

selector: aSymbol	selector := aSymbol.	self component: (class perform: selector)!

selectorPrefix	^ 'exampleComponent'!

states	^ Array with: self!

style	^ '.chooser {	background-color: #eee;	padding: 5px;}.chooser form,.chooser form div {	display: inline;}.chooser form select {	margin-right: 5px;}.component {	padding: 5px;}.answer {	background-color: #eee;	padding: 5px;}'! !
!WAExampleBrowser categoriesFor: #allClasses!helper!public! !
!WAExampleBrowser categoriesFor: #allSelectors!helper!public! !
!WAExampleBrowser categoriesFor: #children!hooks!public! !
!WAExampleBrowser categoriesFor: #class:!accessing!public! !
!WAExampleBrowser categoriesFor: #component:!accessing!public! !
!WAExampleBrowser categoriesFor: #initialize!initialization!public! !
!WAExampleBrowser categoriesFor: #renderChooserOn:!public!rendering! !
!WAExampleBrowser categoriesFor: #renderComponentOn:!public!rendering! !
!WAExampleBrowser categoriesFor: #renderContentOn:!public!rendering! !
!WAExampleBrowser categoriesFor: #selector:!accessing!public! !
!WAExampleBrowser categoriesFor: #selectorPrefix!helper!public! !
!WAExampleBrowser categoriesFor: #states!hooks!public! !
!WAExampleBrowser categoriesFor: #style!hooks!public! !

!WAExampleBrowser class methodsFor!

description	^ 'Browse through Seaside examples'!

initialize	WAAdmin register: self asApplicationAt: 'examples/examplebrowser'! !
!WAExampleBrowser class categoriesFor: #description!accessing!public! !
!WAExampleBrowser class categoriesFor: #initialize!class initialization!public! !

