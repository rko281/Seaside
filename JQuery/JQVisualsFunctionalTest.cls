﻿"Filed out from Dolphin Smalltalk"!

JQUiFunctionalTest subclass: #JQVisualsFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQVisualsFunctionalTest guid: (GUID fromString: '{82bdeb9c-5ce2-4b32-a3a0-c8d3178a66b0}')!

JQVisualsFunctionalTest comment: ''!

!JQVisualsFunctionalTest categoriesForClass!Functional! !

!JQVisualsFunctionalTest methodsFor!

renderContentOn: html	self renderHighlightOn: html.	self renderErrorOn: html!

renderErrorOn: html	html div class: 'ui-corner-all ui-state-error'; with: [		html paragraph: [ 			html span class: 'ui-icon ui-icon-alert'.			html strong: 'Error: '.			html text: 'Sample ui-state-error style.' ] ]!

renderHighlightOn: html	html div class: 'ui-corner-all ui-state-highlight'; with: [		html paragraph: [ 			html span class: 'ui-icon ui-icon-info'.			html strong: 'Hey!! '.			html text: 'Sample ui-state-highlight style.' ] ]!

selectors	^ #(renderHighlightOn: renderErrorOn:)!

style	^ '.ui-corner-all { padding: 0.1em 0.5em; margin: 1em auto; width: 500px; }.ui-corner-all .ui-icon { float: left; margin-right: 0.3em; }'!

title	^ 'Visual Theming'!

url	^ 'http://docs.jquery.com/UI/Theming/API'! !

!JQVisualsFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
renderErrorOn:!public!rendering! !
renderHighlightOn:!public!rendering! !
selectors!accessing!public! !
style!hooks!public! !
title!accessing!public! !
url!accessing!public! !
!

