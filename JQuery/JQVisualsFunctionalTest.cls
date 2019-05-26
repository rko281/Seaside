"Filed out from Dolphin Smalltalk 7"!

JQUiFunctionalTest subclass: #JQVisualsFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQVisualsFunctionalTest guid: (GUID fromString: '{95dee9fe-9f00-4ccb-a027-47fc80d435be}')!
JQVisualsFunctionalTest comment: ''!
!JQVisualsFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !
!JQVisualsFunctionalTest methodsFor!

renderContentOn: html	self renderHighlightOn: html.	self renderErrorOn: html!

renderErrorOn: html	html div class: 'ui-corner-all ui-state-error'; with: [		html paragraph: [ 			html span class: 'ui-icon ui-icon-alert'.			html strong: 'Error: '.			html text: 'Sample ui-state-error style.' ] ]!

renderHighlightOn: html	html div class: 'ui-corner-all ui-state-highlight'; with: [		html paragraph: [ 			html span class: 'ui-icon ui-icon-info'.			html strong: 'Hey!! '.			html text: 'Sample ui-state-highlight style.' ] ]!

selectors	^ #(renderHighlightOn: renderErrorOn:)!

style	^ '.ui-corner-all { padding: 0.1em 0.5em; margin: 1em auto; width: 500px; }.ui-corner-all .ui-icon { float: left; margin-right: 0.3em; }'!

title	^ 'Visual Theming'!

url	^ 'http://docs.jquery.com/UI/Theming/API'! !
!JQVisualsFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQVisualsFunctionalTest categoriesFor: #renderErrorOn:!public!rendering! !
!JQVisualsFunctionalTest categoriesFor: #renderHighlightOn:!public!rendering! !
!JQVisualsFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQVisualsFunctionalTest categoriesFor: #style!hooks!public! !
!JQVisualsFunctionalTest categoriesFor: #title!accessing!public! !
!JQVisualsFunctionalTest categoriesFor: #url!accessing!public! !

