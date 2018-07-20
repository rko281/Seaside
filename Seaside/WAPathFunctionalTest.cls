"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAPathFunctionalTest
	instanceVariableNames: 'string'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPathFunctionalTest guid: (GUID fromString: '{bc3382d7-b1ba-4fa4-88c4-cda4cabc6673}')!
WAPathFunctionalTest comment: ''!
!WAPathFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WAPathFunctionalTest methodsFor!

renderContentOn: html	string notNil ifTrue: [ html anchor name: string ].		html paragraph: 'Whatever you submit below should be added to the URL both as a path element and a fragment (the part after #).'.	html form: [		html div: [			html textInput on: #string of: self.			html submitButton ] ]!

string	^ string!

string: anObject	string := anObject!

updateUrl: aUrl	super updateUrl: aUrl.	string isNil ifTrue: [ ^ self ].	aUrl addToPath: string.	aUrl fragment: string! !
!WAPathFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WAPathFunctionalTest categoriesFor: #string!accessing!public! !
!WAPathFunctionalTest categoriesFor: #string:!accessing!public! !
!WAPathFunctionalTest categoriesFor: #updateUrl:!public!updating! !

