"Filed out from Dolphin Smalltalk 7"!

WAWidgetDecoration subclass: #WAWindowDecoration
	instanceVariableNames: 'title cssClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAWindowDecoration guid: (GUID fromString: '{55a3ae91-788e-4d28-a05e-fdc5823807d1}')!
WAWindowDecoration comment: 'WAWindowDecoration adds a simple title and close button in a bordered area at the top of the page. When closed button is selected nil is "answer"ed. Useful for a quick & dirty dialog window. Used by WAPlugin and SCTestRunner.Instance Variables:	cssClass	<String>	String added to "window-title " to generate cssClass for the title	title	<String>	title of page'!
!WAWindowDecoration categoriesForClass!Seaside-Widgets-Decorations! !
!WAWindowDecoration methodsFor!

cssClass: aString	cssClass := aString!

isGlobal	^ true!

renderCloseButtonOn: html	html anchor		title: 'Close';		callback: [ self decoratedComponent answer: nil ];		with: [ html html: '&times;' ]!

renderContentOn: html	html div class: 'window'; with: [		html div class: 'window-titlebar'; with: [			html div class: 'window-title'; class: cssClass; with: title.			html div class: 'window-close'; with: [ self renderCloseButtonOn: html ] ].		html div class: 'window-content'; with: [ self renderNextOn: html ] ]!

title: aString	title := aString! !
!WAWindowDecoration categoriesFor: #cssClass:!accessing!public! !
!WAWindowDecoration categoriesFor: #isGlobal!public!testing! !
!WAWindowDecoration categoriesFor: #renderCloseButtonOn:!public!rendering! !
!WAWindowDecoration categoriesFor: #renderContentOn:!public!rendering! !
!WAWindowDecoration categoriesFor: #title:!accessing!public! !

!WAWindowDecoration class methodsFor!

title: aTitle	^ self new		title: aTitle;		yourself! !
!WAWindowDecoration class categoriesFor: #title:!instance creation!public! !

