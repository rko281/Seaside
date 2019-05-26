"Filed out from Dolphin Smalltalk 7"!

WACanvasWidget subclass: #WANavigationBar
	instanceVariableNames: 'actionsSelector owner'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WANavigationBar guid: (GUID fromString: '{f2100bc6-209c-45fd-a7ad-3a9f7c80bfab}')!
WANavigationBar comment: 'WANavigationBar provides navigation links for a component, the WANavigationBar''s owner. WANavigationBar is vertical in that all items in the bar are rendered in a column. WANavigationBar''s owner typically is a top level component that renders a number of children components, including the WANavigationBar. When a user selects an item in the WANavigationBar a message is sent to the owner, so it can change.The owner component needs to implement the method indicated by the instance variable "actionsSelector", the default value is "actions". This method returns a collections of symbols. The symbols become the list of items in the navigation bar. The first letter of the symbol is capitalized when displayed. If the symbol represents a 0-argument method it is rendered as a link. When the user clicks on the link the original symbol is send as a message to the owner component. If the symbol represents a 1-argument method it is rendered as a label followed by a text input box. The user has to know that they hit enter after filling the text box.Instance Variables:	actionsSelector	<ByteSymbol>	Symbol sent to owner to get a list of items to be listed in the navigation bar. Default value is "actions".	owner	<WAComponent>	This is the navigation bar for the component "owner".'!
!WANavigationBar categoriesForClass!Seaside-Widgets-Components! !
!WANavigationBar methodsFor!

actions	^ self target perform: actionsSelector!

actionsSelector: aSymbol	actionsSelector := aSymbol!

initialize	super initialize.	actionsSelector := #actions!

owner: anObject	owner := anObject!

renderContentOn: html	self actions do: [ :symbol |		symbol numArgs = 0			ifTrue: [ self renderLink: symbol on: html ]			ifFalse: [ self renderInput: symbol on: html ] ]!

renderInput: aSymbol on: html	html form: [		html strong: aSymbol capitalized.		html space.		html textInput			callback: [ :value |				self target perform: aSymbol with: value ] ]!

renderLink: aSymbol on: html	html anchor		on: aSymbol of: self target.	html break!

target	^ owner activeComponent! !
!WANavigationBar categoriesFor: #actions!accessing!public! !
!WANavigationBar categoriesFor: #actionsSelector:!accessing!public! !
!WANavigationBar categoriesFor: #initialize!initialization!public! !
!WANavigationBar categoriesFor: #owner:!accessing!public! !
!WANavigationBar categoriesFor: #renderContentOn:!public!rendering! !
!WANavigationBar categoriesFor: #renderInput:on:!public!rendering! !
!WANavigationBar categoriesFor: #renderLink:on:!public!rendering! !
!WANavigationBar categoriesFor: #target!accessing!public! !

