"Filed out from Dolphin Smalltalk"!

WAWidgetDecoration subclass: #WAFormDecoration
	instanceVariableNames: 'buttons'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFormDecoration guid: (GUID fromString: '{907c0d89-dc64-47fc-bfc0-1accc8f298a1}')!

WAFormDecoration comment: 'A WAFormDecoration places its component inside an html form tag. The buttons inst var must be set. The component that a WAFormDecoration decorates must implement the method "defaultButton", which returns the string/symbol of the default button (one selected by default) of the form. Don''t place any decorators between WAFormDecoration and its component otherwise "defaultButton" method fails. For each string/symbol in the buttons inst var the decorated component must implement a method of the same name, which is called when the button is selected.Instance Variables	buttons:		<Collection of strings or symbols>buttons	- list of strings or symbols, each string/symbol is the label (first letter capitalized) for a button and the name of the callback method on component when button is pressed, '!

!WAFormDecoration categoriesForClass!Decorations! !

!WAFormDecoration methodsFor!

buttons	^ buttons!

buttons: selectorArray	buttons := selectorArray!

defaultAction	self decoratedComponent perform: self decoratedComponent defaultButton!

renderButtonForSelector: aSymbol on: html	html submitButton on: aSymbol of: self decoratedComponent!

renderButtonsOn: html	html div class: 'dialog-buttons'; with: [		self buttons do: [ :each |			html  span				class: 'dialog-button-', each;				with: [ self renderButtonForSelector: each on: html ] ] ]!

renderContentOn: html	html form		defaultAction: [ self defaultAction ];		with: [			html div: [				self renderNextOn: html.				self renderButtonsOn: html ] ]! !

!WAFormDecoration categoriesForMethods!
buttons!accessing!public! !
buttons:!accessing!public! !
defaultAction!actions!public! !
renderButtonForSelector:on:!public!rendering! !
renderButtonsOn:!public!rendering! !
renderContentOn:!public!rendering! !
!

