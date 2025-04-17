"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WACommandTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACommandTag guid: (GUID fromString: '{8730dd0b-bad3-48c4-a735-b8d2c1234353}')!

WACommandTag comment: 'The command element represents a command that the user can invoke.'!

!WACommandTag categoriesForClass!Tags! !

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

!WACommandTag categoriesForMethods!
beCheckbox!attributes!public! !
beChecked!attributes!public! !
beCommand!attributes!public! !
beDisabled!attributes!public! !
beHidden!attributes!public! !
beRadio!attributes!public! !
checked:!attributes!public! !
disabled:!attributes!public! !
hidden:!attributes!public! !
icon:!attributes!public! !
label:!attributes!public! !
tag!accessing!public! !
type:!attributes!public! !
!

