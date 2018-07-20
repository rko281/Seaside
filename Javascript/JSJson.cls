﻿"Filed out from Dolphin Smalltalk 7"!

JSObject subclass: #JSJson
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSJson guid: (GUID fromString: '{5f509dc9-97e7-4755-ad5d-8ea6bc85df41}')!
JSJson comment: 'I represent the JSON object (www.json.org) that is supported by most modern web browsers. For older browsers I require WAJsonDeploymentLibrary or WAJsonDevelopmentLibrary to be included.'!
!JSJson categoriesForClass!Javascript-Core! !
!JSJson methodsFor!

javascriptContentOn: aStream

parse: aString

parse: aString reviver: aFunction 

stringify: anObject

stringify: anObject replacer: aReplacer

stringify: anObject replacer: aReplacer space: aSpace

stringify: anObject space: aSpace
!JSJson categoriesFor: #javascriptContentOn:!printing!public! !
!JSJson categoriesFor: #parse:!accessing!public! !
!JSJson categoriesFor: #parse:reviver:!accessing!public! !
!JSJson categoriesFor: #stringify:!accessing!public! !
!JSJson categoriesFor: #stringify:replacer:!accessing!public! !
!JSJson categoriesFor: #stringify:replacer:space:!accessing!public! !
!JSJson categoriesFor: #stringify:space:!accessing!public! !
