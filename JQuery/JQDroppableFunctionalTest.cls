"Filed out from Dolphin Smalltalk 7"!

JQUiFunctionalTest subclass: #JQDroppableFunctionalTest
	instanceVariableNames: 'selected'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQDroppableFunctionalTest guid: (GUID fromString: '{5d2cc395-a9a1-4922-af34-9f82a37a5b29}')!
JQDroppableFunctionalTest comment: ''!
!JQDroppableFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !
!JQDroppableFunctionalTest methodsFor!

colors	^ #(red green blue)!

initialize	super initialize.	selected := Bag new!

renderContentOn: html	self renderInstructionsOn: html.	self renderInventoryOn: html.	self renderSelectedOn: html!

renderInstructionsOn: html	html paragraph: 'Drag the colored items from the inventory on top into the list of selected items below. To remove selected items drag them out of the selected list.'!

renderInventoryOn: html	html div class: 'inventory ui-corner-all'; with: [ 		self colors do: [ :each |			html div				class: each;				passenger: each;				script: (html jQuery new draggable					revert: true) ] ]!

renderSelectedItemsOn: html	self selected do: [ :each |		html div 			class: each; 			passenger: each;			script: (html jQuery new draggable				onStop: (html jQuery this effect 					percent: 1; puff; 					onComplete: (html jQuery this parent load html: [ :r | 						self selected remove: each ifAbsent: [ ].						self renderSelectedItemsOn: r ]))) ]!

renderSelectedOn: html	html div		class: 'selected ui-corner-all'; 		script: (html jQuery new droppable			onDrop: (html jQuery this load				callbackDroppable: [ :event | self selected add: (event at: #draggable) ];				html: [ :r | self renderSelectedItemsOn: r ]));		with: [ self renderSelectedItemsOn: html ]!

selected	^ selected!

selectors	^ #(renderContentOn: renderInventoryOn: renderSelectedOn: renderSelectedItemsOn:)!

style	^ '.inventory, .selected { 	height: 4em;	padding: 0.5em;	margin-bottom: 0.5em;	background-color: #ddd; 	border-bottom: 1px solid #ccc;}.inventory div, .selected div {	float: left;	width: 4em;	height: 4em;	border-width: 0;	margin-right: 0.5em;}'!

title	^ 'Droppable Interaction'!

url	^ 'http://docs.jquery.com/UI/Droppable'! !
!JQDroppableFunctionalTest categoriesFor: #colors!accessing!public! !
!JQDroppableFunctionalTest categoriesFor: #initialize!initialization!public! !
!JQDroppableFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQDroppableFunctionalTest categoriesFor: #renderInstructionsOn:!public!rendering! !
!JQDroppableFunctionalTest categoriesFor: #renderInventoryOn:!public!rendering! !
!JQDroppableFunctionalTest categoriesFor: #renderSelectedItemsOn:!public!rendering! !
!JQDroppableFunctionalTest categoriesFor: #renderSelectedOn:!public!rendering! !
!JQDroppableFunctionalTest categoriesFor: #selected!accessing!public! !
!JQDroppableFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQDroppableFunctionalTest categoriesFor: #style!hooks!public! !
!JQDroppableFunctionalTest categoriesFor: #title!accessing!public! !
!JQDroppableFunctionalTest categoriesFor: #url!accessing!public! !

