﻿"Filed out from Dolphin Smalltalk"!

JQFunctionalTest subclass: #JQUiFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQUiFunctionalTest guid: (GUID fromString: '{3427f49b-cd9d-4136-9339-8d928a34eca1}')!

JQUiFunctionalTest comment: ''!

!JQUiFunctionalTest categoriesForClass!Functional! !

!JQUiFunctionalTest methodsFor!

berries	"A collection of berries and a short description from Wikipedia."		^ Dictionary new		at: 'Blackberry' put: 'The blackberry is an aggregate fruit from a bramble bush, genus Rubus in the rose family Rosaceae.';		at: 'Raspberry' put: 'The raspberry is the edible fruit of a multitude of plant species in the subgenus Idaeobatus of the genus Rubus.';		at: 'Blueberry' put: 'Blueberries are flowering plants in the genus Vaccinium, sect. Cyanococcus.'; 		at: 'Cloudberry' put: 'The cloudberry is a slow-growing alpine or sub-Arctic species of Rubus, producing amber-colored edible fruit.';		at: 'Cranberry' put: 'Cranberries are a group of evergreen dwarf shrubs or trailing vines in the genus Vaccinium subgenus Oxycoccos, or in some treatments, in the distinct genus Oxycoccos.';		yourself!

renderBoxOn: html	html div class: 'pack'; with: [		html div 			class: 'box';			class: 'blue' ]!

vegetables	^ #('Alfalfa' 'Clover' 'Peas' 'Beans' 'Lentils' 'Lupins' 'Peanuts')! !

!JQUiFunctionalTest categoriesForMethods!
berries!accessing!public! !
renderBoxOn:!public!rendering! !
vegetables!accessing!public! !
!

