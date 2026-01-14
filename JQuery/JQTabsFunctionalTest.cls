"Filed out from Dolphin Smalltalk"!

JQUiFunctionalTest subclass: #JQTabsFunctionalTest
	instanceVariableNames: 'selectedTab'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQTabsFunctionalTest guid: (GUID fromString: '{2afda186-49b9-445c-8ec7-bcb027df2cca}')!

JQTabsFunctionalTest comment: ''!

!JQTabsFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !

!JQTabsFunctionalTest methodsFor!

initialize	super initialize.	selectedTab := 0!

renderContentOn: html	html div		script: (html jQuery new tabs			active: selectedTab;			onBeforeActivate: (html jQuery ajax 				callbackTabs: [ :event | selectedTab:= event at: #index ]));		with: [			html unorderedList: [				self berries keysAndValuesDo: [ :name :description |					html listItem: [						html anchor							url: (html jQuery ajax								html: [ :h | h text: description ];								fullUrl);							with: name ] ] ] ]!

selectors	^ #(renderContentOn:)!

title	^ 'Tabs Widget'!

url	^ 'http://docs.jquery.com/UI/Tabs'! !

!JQTabsFunctionalTest categoriesForMethods!
initialize!initialization!public! !
renderContentOn:!public!rendering! !
selectors!accessing!public! !
title!accessing!public! !
url!accessing!public! !
!

