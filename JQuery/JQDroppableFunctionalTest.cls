"Filed out from Dolphin Smalltalk"!

JQUiFunctionalTest subclass: #JQDroppableFunctionalTest
	instanceVariableNames: 'selected'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQDroppableFunctionalTest guid: (GUID fromString: '{dd9fd80d-45b5-4be1-bba1-ec813d7a2396}')!

JQDroppableFunctionalTest comment: ''!

!JQDroppableFunctionalTest categoriesForClass!Functional! !

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

!JQDroppableFunctionalTest categoriesForMethods!
colors!accessing!public! !
initialize!initialization!public! !
renderContentOn:!public!rendering! !
renderInstructionsOn:!public!rendering! !
renderInventoryOn:!public!rendering! !
renderSelectedItemsOn:!public!rendering! !
renderSelectedOn:!public!rendering! !
selected!accessing!public! !
selectors!accessing!public! !
style!hooks!public! !
title!accessing!public! !
url!accessing!public! !
!

