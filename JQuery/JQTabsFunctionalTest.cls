"Filed out from Dolphin Smalltalk 7"!

JQUiFunctionalTest subclass: #JQTabsFunctionalTest
	instanceVariableNames: 'selectedTab'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQTabsFunctionalTest guid: (GUID fromString: '{787a8a4b-1a69-40f3-bdf0-4a3a0ecd7138}')!
JQTabsFunctionalTest comment: ''!
!JQTabsFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !
!JQTabsFunctionalTest methodsFor!

initialize	super initialize.	selectedTab := 0!

renderContentOn: html	html div		script: (html jQuery new tabs			active: selectedTab;			onBeforeActivate: (html jQuery ajax 				callbackTabs: [ :event | selectedTab:= event at: #index ]));		with: [			html unorderedList: [				self berries keysAndValuesDo: [ :name :description |					html listItem: [						html anchor							url: (html jQuery ajax								html: [ :h | h text: description ];								fullUrl);							with: name ] ] ] ]!

selectors	^ #(renderContentOn:)!

title	^ 'Tabs Widget'!

url	^ 'http://docs.jquery.com/UI/Tabs'! !
!JQTabsFunctionalTest categoriesFor: #initialize!initialization!public! !
!JQTabsFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQTabsFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQTabsFunctionalTest categoriesFor: #title!accessing!public! !
!JQTabsFunctionalTest categoriesFor: #url!accessing!public! !

