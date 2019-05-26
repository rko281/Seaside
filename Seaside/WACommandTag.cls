"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WACommandTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACommandTag guid: (GUID fromString: '{cb18c9fc-9665-47c6-a92f-7cb704d16830}')!
WACommandTag comment: 'The command element represents a command that the user can invoke.'!
!WACommandTag categoriesForClass!Seaside-Canvas-Tags! !
!WACommandTag methodsFor!

beCheckbox	self type: 'checkbox'!

beChecked	self checked: true!

beCommand	self type: 'command'!

beDisabled	self disabled: true!

beHidden	self hidden: true!

beRadio	self type: 'radio'!

checked: aBoolean	"The checked attribute is a boolean attribute that, if present, indicates that the command is selected."	self attributeAt: 'checked' put: aBoolean!

disabled: aBoolean	"The disabled attribute is a boolean attribute that, if present, indicates that the command is not available in the current state."	self attributeAt: 'disabled' put: aBoolean!

hidden: aBoolean	"The hidden  attribute is a boolean attribute that, if present, indicates that the command is not relevant and is to be hidden."	self attributeAt: 'hidden' put: aBoolean!

icon: aString	"The icon  attribute gives a picture that represents the command. If the attribute is specified, the attribute's value must contain a URI (or IRI)."	self attributeAt: 'icon' put: aString!

label: aString	"The label  attribute gives the name of the command, as shown to the user."	self attributeAt: 'label' put: aString!

tag	^ 'command'!

type: aString	"The type  attribute indicates the kind of command: either a normal command with an associated action, or a state or option that can be toggled, or a selection of one item from a list of items.The attribute's value must be either 'command', 'checkbox', or 'radio', denoting each of these three types of commands respectively. The attribute may also be omitted if the element is to represent the first of these types, a simple command. "	self attributeAt: 'type' put: aString! !
!WACommandTag categoriesFor: #beCheckbox!attributes!public! !
!WACommandTag categoriesFor: #beChecked!attributes!public! !
!WACommandTag categoriesFor: #beCommand!attributes!public! !
!WACommandTag categoriesFor: #beDisabled!attributes!public! !
!WACommandTag categoriesFor: #beHidden!attributes!public! !
!WACommandTag categoriesFor: #beRadio!attributes!public! !
!WACommandTag categoriesFor: #checked:!attributes!public! !
!WACommandTag categoriesFor: #disabled:!attributes!public! !
!WACommandTag categoriesFor: #hidden:!attributes!public! !
!WACommandTag categoriesFor: #icon:!attributes!public! !
!WACommandTag categoriesFor: #label:!attributes!public! !
!WACommandTag categoriesFor: #tag!accessing!public! !
!WACommandTag categoriesFor: #type:!attributes!public! !

