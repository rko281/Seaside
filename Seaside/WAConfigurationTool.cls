"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAConfigurationTool
	instanceVariableNames: 'component'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAConfigurationTool guid: (GUID fromString: '{abcfa82d-bb1e-4799-8b15-0443ee81e8a7}')!

WAConfigurationTool comment: ''!

!WAConfigurationTool categoriesForClass!Seaside-Tools-Web! !

!WAConfigurationTool methodsFor!

children	^ Array with: component!

component	^ component!

initializeOn: aDispatcher	self initialize.	component := WAConfigurationBrowser on: aDispatcher!

renderComponentOn: html	html render: component!

renderContentOn: html	html table		class: 'wa-config';		cellpadding: 0;		cellspacing: 0;		with: [			html tableRow: [				html tableData					style: 'width: 100%';					with: [ self renderHeadingOn: html ].				html tableData rowSpan: 2; with: [ self renderLogoOn: html ] ].			html tableRow: [				html tableData: [ self renderTopBarOn: html ] ] ].	html div: [ self renderComponentOn: html ]!

renderHeadingOn: html	html div		class: 'header';		with: self title!

renderLogoOn: html	html anchor		url: (WAUrl new 			host: 'www.seaside.st';			yourself);		with: [ html div class: 'smallLogo' ]!

renderTopBarOn: html 	| handler |	html div		class: 'topbar';		with: [			| selectedTools |			handler := component selection.			selectedTools := ((WAConfigurationToolPlugin 				allSubclassesOn: handler				for: component)					select: [ :each | each isActive ]).								(selectedTools	select: [ :each | each priority < 0 ])				do: [ :each | html render: each ]				separatedBy: [ html space ].			html text: ' | '.				(selectedTools	select: [ :each | each priority >= 0 ])				do: [ :each | html render: each ]				separatedBy: [ html space ] ]!

title	^ self component title! !

!WAConfigurationTool categoriesForMethods!
children!hooks!public! !
component!accessing!public! !
initializeOn:!initialization!public! !
renderComponentOn:!public!rendering! !
renderContentOn:!public!rendering! !
renderHeadingOn:!public!rendering! !
renderLogoOn:!public!rendering! !
renderTopBarOn:!public!rendering! !
title!accessing!public! !
!

!WAConfigurationTool class methodsFor!

canBeRoot	^ true!

description	^ 'Configuration Tool'!

initialize	(WAAdmin register: self asApplicationAt: 'config') addLibrary: WAToolFiles!

new	^ self on: WAAdmin defaultDispatcher!

on: anEntryPoint	^ self basicNew initializeOn: anEntryPoint; yourself! !

!WAConfigurationTool class categoriesForMethods!
canBeRoot!public!testing! !
description!accessing!public! !
initialize!class initialization!public! !
new!instance creation!public! !
on:!instance creation!public! !
!

