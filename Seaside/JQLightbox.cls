﻿"Filed out from Dolphin Smalltalk 7"!

WADecoration subclass: #JQLightbox
	instanceVariableNames: 'delegate'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQLightbox guid: (GUID fromString: '{927835a4-c193-46e3-9fbd-0af8c8ecafbc}')!
JQLightbox comment: ''!
!JQLightbox categoriesForClass!Unclassified! !
!JQLightbox methodsFor!

children
	^ super children copyWith: self delegate!

delegate
	^ delegate!

delegate: aComponent
	delegate := aComponent!

isDelegation
	^ true!

renderContentOn: html 
	"Under test and use with caution."

	| id |
	super renderContentOn: html.
	(html div)
		id: (id := html nextId);
		script: ((html jQuery new dialog)
					html: self delegate;
					resizable: false;
					modal: true;
					title: 'Please answer';
					autoOpen: true)!

style
	"Remove the close X in the title bar of the dialog."

	^'.ui-dialog-titlebar-close{
    display: none;
}'! !
!JQLightbox categoriesFor: #children!accessing!public! !
!JQLightbox categoriesFor: #delegate!accessing!public! !
!JQLightbox categoriesFor: #delegate:!accessing!public! !
!JQLightbox categoriesFor: #isDelegation!public! !
!JQLightbox categoriesFor: #renderContentOn:!public! !
!JQLightbox categoriesFor: #style!accessing-scripts!public! !

