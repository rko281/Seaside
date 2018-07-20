"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAConfigurationTool
	instanceVariableNames: 'component'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAConfigurationTool guid: (GUID fromString: '{c7007322-0caf-4927-987a-31a021ab2b2f}')!
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
!WAConfigurationTool categoriesFor: #children!hooks!public! !
!WAConfigurationTool categoriesFor: #component!accessing!public! !
!WAConfigurationTool categoriesFor: #initializeOn:!initialization!public! !
!WAConfigurationTool categoriesFor: #renderComponentOn:!public!rendering! !
!WAConfigurationTool categoriesFor: #renderContentOn:!public!rendering! !
!WAConfigurationTool categoriesFor: #renderHeadingOn:!public!rendering! !
!WAConfigurationTool categoriesFor: #renderLogoOn:!public!rendering! !
!WAConfigurationTool categoriesFor: #renderTopBarOn:!public!rendering! !
!WAConfigurationTool categoriesFor: #title!accessing!public! !

!WAConfigurationTool class methodsFor!

canBeRoot	^ true!

description	^ 'Configuration Tool'!

initialize	(WAAdmin register: self asApplicationAt: 'config') addLibrary: WAToolFiles!

new	^ self on: WAAdmin defaultDispatcher!

on: anEntryPoint	^ self basicNew initializeOn: anEntryPoint; yourself! !
!WAConfigurationTool class categoriesFor: #canBeRoot!public!testing! !
!WAConfigurationTool class categoriesFor: #description!accessing!public! !
!WAConfigurationTool class categoriesFor: #initialize!class initialization!public! !
!WAConfigurationTool class categoriesFor: #new!instance creation!public! !
!WAConfigurationTool class categoriesFor: #on:!instance creation!public! !

