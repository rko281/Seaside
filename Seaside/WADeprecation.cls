"Filed out from Dolphin Smalltalk 7"!

WATool subclass: #WADeprecation
	instanceVariableNames: 'table filter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADeprecation guid: (GUID fromString: '{ae6805e7-289e-49e8-9902-cb0153eadedb}')!
WADeprecation comment: ''!
!WADeprecation categoriesForClass!Seaside-Development-Core! !
!WADeprecation methodsFor!

buildTable	^ WATableReport new		rowPeriod: 1;		rowColors: #( '#eee' 'white' );		rows: self notifications;		columns: (Array			with: (WAReportColumn selector: #messageText title: 'Deprecated')			with: (WAReportColumn selector: #details title: 'Details'));		yourself!

children	^ Array with: self table!

filter: aFilter	filter := aFilter!

notifications	^ filter notifications!

renderContentOn: html	html div		class: 'tool';		with: [			html render: self table.			html anchor				callback: [ self resetDeprecationWarnings ];				with: 'Reset deprecation warnings' ]	!

resetDeprecationWarnings	filter reset.	self answer!

table	^ table ifNil: [ table := self buildTable ]! !
!WADeprecation categoriesFor: #buildTable!private! !
!WADeprecation categoriesFor: #children!hooks!public! !
!WADeprecation categoriesFor: #filter:!accessing!public! !
!WADeprecation categoriesFor: #notifications!accessing!public! !
!WADeprecation categoriesFor: #renderContentOn:!public!rendering! !
!WADeprecation categoriesFor: #resetDeprecationWarnings!actions!public! !
!WADeprecation categoriesFor: #table!accessing!public! !

!WADeprecation class methodsFor!

on: filter	^ self new		filter: filter;		yourself! !
!WADeprecation class categoriesFor: #on:!instance creation!public! !

