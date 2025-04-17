"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAPathFunctionalTest
	instanceVariableNames: 'string'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPathFunctionalTest guid: (GUID fromString: '{b1dc4fac-121d-43d2-9088-947143e75264}')!

WAPathFunctionalTest comment: ''!

!WAPathFunctionalTest categoriesForClass!Unclassified! !

!WAPathFunctionalTest methodsFor!

renderContentOn: html	string notNil ifTrue: [ html anchor name: string ].		html paragraph: 'Whatever you submit below should be added to the URL both as a path element and a fragment (the part after #).'.	html form: [		html div: [			html textInput on: #string of: self.			html submitButton ] ]!

string	^ string!

string: anObject	string := anObject!

updateUrl: aUrl	super updateUrl: aUrl.	string isNil ifTrue: [ ^ self ].	aUrl addToPath: string.	aUrl fragment: string! !

!WAPathFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
string!accessing!public! !
string:!accessing!public! !
updateUrl:!public!updating! !
!

