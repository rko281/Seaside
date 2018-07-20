﻿"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAEncodingFunctionalTest
	instanceVariableNames: 'urlencoded multipart get'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAEncodingFunctionalTest guid: (GUID fromString: '{a309aa36-be60-4622-8be3-e9dfba84aed7}')!
WAEncodingFunctionalTest comment: 'A WAEncodingFunctionalTest test whether Seaside correctly handles non-ASCII strings. Unfortunately due to differences in server setup and source code encodings this test requires manual interaction.
!WAEncodingFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WAEncodingFunctionalTest methodsFor!

get

get: aString

initialize

multipart

multipart: aString

renderCharacterByCharacter: aString on: html

renderClassName: aString on: html 

renderContentOn: html

renderExplanationOn: html

renderGetOn: html

renderMultipartOn: html

renderUrlencodedOn: html

urlencoded

urlencoded: aString
!WAEncodingFunctionalTest categoriesFor: #get!accessing!public! !
!WAEncodingFunctionalTest categoriesFor: #get:!accessing!public! !
!WAEncodingFunctionalTest categoriesFor: #initialize!initialization!public! !
!WAEncodingFunctionalTest categoriesFor: #multipart!accessing!public! !
!WAEncodingFunctionalTest categoriesFor: #multipart:!accessing!public! !
!WAEncodingFunctionalTest categoriesFor: #renderCharacterByCharacter:on:!public!rendering! !
!WAEncodingFunctionalTest categoriesFor: #renderClassName:on:!public!rendering! !
!WAEncodingFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WAEncodingFunctionalTest categoriesFor: #renderExplanationOn:!public!rendering! !
!WAEncodingFunctionalTest categoriesFor: #renderGetOn:!public!rendering! !
!WAEncodingFunctionalTest categoriesFor: #renderMultipartOn:!public!rendering! !
!WAEncodingFunctionalTest categoriesFor: #renderUrlencodedOn:!public!rendering! !
!WAEncodingFunctionalTest categoriesFor: #urlencoded!accessing!public! !
!WAEncodingFunctionalTest categoriesFor: #urlencoded:!accessing!public! !
