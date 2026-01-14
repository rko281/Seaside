"Filed out from Dolphin Smalltalk"!

WANavigation subclass: #WASimpleNavigation
	instanceVariableNames: 'components'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASimpleNavigation guid: (GUID fromString: '{91bda6fd-911a-4e2c-ad8b-c3abca649d8b}')!

WASimpleNavigation comment: 'I''m a simple tab panel, that can be styled with stylesheets. New tabs can be added using #add:label:You may want to add the WANavigationFiles library to your application for some default CSS styling.'!

!WASimpleNavigation categoriesForClass!Seaside-Widgets-Components! !

!WASimpleNavigation methodsFor!

add: aComponent label: aString	components add: aString -> aComponent!

children	^ Array with: self selectedComponent!

components	^ components!

initialize	super initialize.	components := OrderedCollection new!

labels	"Return the tabs labels"	^ self options!

options	^ components collect: [ :each | each key ]!

renderSelectionOn: html	html render: self selectedComponent!

selectedComponent	^ (components detect: [ :each | each key = self selection ] ifNone: [ ^ nil ]) value!

selectFirst	"Selects the first added component as active."		components notEmpty		ifTrue: [ self select: components first key ]! !

!WASimpleNavigation categoriesForMethods!
add:label:!behavior!public! !
children!hooks!public! !
components!accessing!public! !
initialize!initialization!public! !
labels!accessing!public! !
options!accessing!public! !
renderSelectionOn:!public!rendering! !
selectedComponent!accessing!public! !
selectFirst!behavior!public! !
!

