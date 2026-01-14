"Filed out from Dolphin Smalltalk"!

WAWidgetDecoration subclass: #WAWindowDecoration
	instanceVariableNames: 'title cssClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAWindowDecoration guid: (GUID fromString: '{4dd55592-6bb6-4311-ab04-2e6f78469251}')!

WAWindowDecoration comment: 'WAWindowDecoration adds a simple title and close button in a bordered area at the top of the page. When closed button is selected nil is "answer"ed. Useful for a quick & dirty dialog window. Used by WAPlugin and SCTestRunner.Instance Variables:	cssClass	<String>	String added to "window-title " to generate cssClass for the title	title	<String>	title of page'!

!WAWindowDecoration categoriesForClass!Seaside-Widgets-Decorations! !

!WAWindowDecoration methodsFor!

cssClass: aString	cssClass := aString!

isGlobal	^ true!

renderCloseButtonOn: html	html anchor		title: 'Close';		callback: [ self decoratedComponent answer: nil ];		with: [ html html: '&times;' ]!

renderContentOn: html	html div class: 'window'; with: [		html div class: 'window-titlebar'; with: [			html div class: 'window-title'; class: cssClass; with: title.			html div class: 'window-close'; with: [ self renderCloseButtonOn: html ] ].		html div class: 'window-content'; with: [ self renderNextOn: html ] ]!

title: aString	title := aString! !

!WAWindowDecoration categoriesForMethods!
cssClass:!accessing!public! !
isGlobal!public!testing! !
renderCloseButtonOn:!public!rendering! !
renderContentOn:!public!rendering! !
title:!accessing!public! !
!

!WAWindowDecoration class methodsFor!

title: aTitle	^ self new		title: aTitle;		yourself! !

!WAWindowDecoration class categoriesForMethods!
title:!instance creation!public! !
!

