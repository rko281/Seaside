"Filed out from Dolphin Smalltalk 7"!

JQFunctionalTest subclass: #JQAnimateFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQAnimateFunctionalTest guid: (GUID fromString: '{6f609b59-3798-4986-b7eb-09a2cc8832ea}')!
JQAnimateFunctionalTest comment: ''!
!JQAnimateFunctionalTest categoriesForClass!JQuery-Tests-Core-Functional! !
!JQAnimateFunctionalTest methodsFor!

renderAbsoluteOn: html	html anchor		onClick: ((html jQuery: #seastar) animate opacity: 0.0);		with: 'Opacity 0%'.	html anchor		onClick: ((html jQuery: #seastar) animate opacity: 0.5);		with: 'Opacity 50%'.	html anchor		onClick: ((html jQuery: #seastar) animate opacity: 1.0);		with: 'Opacity 100%'!

renderContentOn: html	html paragraph class: 'actions'; with: [		self renderRelativeOn: html.		self renderAbsoluteOn: html.		self renderToggleOn: html ].	self renderSeastarOn: html!

renderRelativeOn: html	html anchor		onClick: ((html jQuery: #seastar) animate left: '-=100px');		with: 'Move Left'.	html anchor		onClick: ((html jQuery: #seastar) animate left: '+=100px');		with: 'Move Right'!

renderToggleOn: html	html anchor		onClick: ((html jQuery: #seastar) animate width: 'toggle');		with: 'Toggle Width'.	html anchor		onClick: ((html jQuery: #seastar) animate height: 'toggle');		with: 'Toggle Height'!

selectors	^ #(renderContentOn: renderRelativeOn: renderAbsoluteOn: renderToggleOn: renderSeastarOn:)!

title	^ 'Animations'! !
!JQAnimateFunctionalTest categoriesFor: #renderAbsoluteOn:!public!rendering! !
!JQAnimateFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQAnimateFunctionalTest categoriesFor: #renderRelativeOn:!public!rendering! !
!JQAnimateFunctionalTest categoriesFor: #renderToggleOn:!public!rendering! !
!JQAnimateFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQAnimateFunctionalTest categoriesFor: #title!accessing!public! !

