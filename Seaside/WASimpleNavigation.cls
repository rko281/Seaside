"Filed out from Dolphin Smalltalk 7"!

WANavigation subclass: #WASimpleNavigation
	instanceVariableNames: 'components'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASimpleNavigation guid: (GUID fromString: '{6f8c52e4-6811-46a9-8570-fb54d8568bef}')!
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
!WASimpleNavigation categoriesFor: #add:label:!behavior!public! !
!WASimpleNavigation categoriesFor: #children!hooks!public! !
!WASimpleNavigation categoriesFor: #components!accessing!public! !
!WASimpleNavigation categoriesFor: #initialize!initialization!public! !
!WASimpleNavigation categoriesFor: #labels!accessing!public! !
!WASimpleNavigation categoriesFor: #options!accessing!public! !
!WASimpleNavigation categoriesFor: #renderSelectionOn:!public!rendering! !
!WASimpleNavigation categoriesFor: #selectedComponent!accessing!public! !
!WASimpleNavigation categoriesFor: #selectFirst!behavior!public! !

