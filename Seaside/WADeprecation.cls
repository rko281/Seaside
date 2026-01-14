"Filed out from Dolphin Smalltalk"!

WATool subclass: #WADeprecation
	instanceVariableNames: 'table filter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADeprecation guid: (GUID fromString: '{c21e5811-f35e-491e-9aa0-b725e14674e9}')!

WADeprecation comment: ''!

!WADeprecation categoriesForClass!Seaside-Development-Core! !

!WADeprecation methodsFor!

buildTable	^ WATableReport new		rowPeriod: 1;		rowColors: #( '#eee' 'white' );		rows: self notifications;		columns: (Array			with: (WAReportColumn selector: #messageText title: 'Deprecated')			with: (WAReportColumn selector: #details title: 'Details'));		yourself!

children	^ Array with: self table!

filter: aFilter	filter := aFilter!

notifications	^ filter notifications!

renderContentOn: html	html div		class: 'tool';		with: [			html render: self table.			html anchor				callback: [ self resetDeprecationWarnings ];				with: 'Reset deprecation warnings' ]!

resetDeprecationWarnings	filter reset.	self answer!

table	^ table ifNil: [ table := self buildTable ]! !

!WADeprecation categoriesForMethods!
buildTable!private! !
children!hooks!public! !
filter:!accessing!public! !
notifications!accessing!public! !
renderContentOn:!public!rendering! !
resetDeprecationWarnings!actions!public! !
table!accessing!public! !
!

!WADeprecation class methodsFor!

on: filter	^ self new		filter: filter;		yourself! !

!WADeprecation class categoriesForMethods!
on:!instance creation!public! !
!

