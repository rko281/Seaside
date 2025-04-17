"Filed out from Dolphin Smalltalk"!

WAWidgetDecoration subclass: #WAMessageDecoration
	instanceVariableNames: 'message'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMessageDecoration guid: (GUID fromString: '{ba965e07-216c-43b7-8466-8ff70a917e10}')!

WAMessageDecoration comment: 'I add a string message on top of the WAComponent I decorate. For example if change WACounter>>initialize as below the text "Counter Example" will appear on above the counter when rendered.WACounter>>initialize	super initialize.	self count: 0.	self addMessage: ''Counter Example''	"added line"'!

!WAMessageDecoration categoriesForClass!Decorations! !

!WAMessageDecoration methodsFor!

message: aString	message := aString!

renderContentOn: html	html heading level3; with: message.	self renderNextOn: html! !

!WAMessageDecoration categoriesForMethods!
message:!accessing!public! !
renderContentOn:!public!rendering! !
!

