"Filed out from Dolphin Smalltalk"!

JQFunctionalTest subclass: #JQAnimateFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQAnimateFunctionalTest guid: (GUID fromString: '{f5311227-758b-42d7-a702-f0d87e33f145}')!

JQAnimateFunctionalTest comment: ''!

!JQAnimateFunctionalTest categoriesForClass!Functional! !

!JQAnimateFunctionalTest methodsFor!

renderAbsoluteOn: html	html anchor		onClick: ((html jQuery: #seastar) animate opacity: 0.0);		with: 'Opacity 0%'.	html anchor		onClick: ((html jQuery: #seastar) animate opacity: 0.5);		with: 'Opacity 50%'.	html anchor		onClick: ((html jQuery: #seastar) animate opacity: 1.0);		with: 'Opacity 100%'!

renderContentOn: html	html paragraph class: 'actions'; with: [		self renderRelativeOn: html.		self renderAbsoluteOn: html.		self renderToggleOn: html ].	self renderSeastarOn: html!

renderRelativeOn: html	html anchor		onClick: ((html jQuery: #seastar) animate left: '-=100px');		with: 'Move Left'.	html anchor		onClick: ((html jQuery: #seastar) animate left: '+=100px');		with: 'Move Right'!

renderToggleOn: html	html anchor		onClick: ((html jQuery: #seastar) animate width: 'toggle');		with: 'Toggle Width'.	html anchor		onClick: ((html jQuery: #seastar) animate height: 'toggle');		with: 'Toggle Height'!

selectors	^ #(renderContentOn: renderRelativeOn: renderAbsoluteOn: renderToggleOn: renderSeastarOn:)!

title	^ 'Animations'! !

!JQAnimateFunctionalTest categoriesForMethods!
renderAbsoluteOn:!public!rendering! !
renderContentOn:!public!rendering! !
renderRelativeOn:!public!rendering! !
renderToggleOn:!public!rendering! !
selectors!accessing!public! !
title!accessing!public! !
!

