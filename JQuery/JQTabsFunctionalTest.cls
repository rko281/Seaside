"Filed out from Dolphin Smalltalk"!

JQUiFunctionalTest subclass: #JQTabsFunctionalTest
	instanceVariableNames: 'selectedTab'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQTabsFunctionalTest guid: (GUID fromString: '{411f671d-d309-44e3-a843-71b6ae84b84e}')!

JQTabsFunctionalTest comment: ''!

!JQTabsFunctionalTest categoriesForClass!Functional! !

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

