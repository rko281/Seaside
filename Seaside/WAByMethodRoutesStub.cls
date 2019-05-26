"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WAByMethodRoutesStub
	instanceVariableNames: 'selector arguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAByMethodRoutesStub guid: (GUID fromString: '{b5138b35-a759-41e9-b13a-afdec9d184c8}')!
WAByMethodRoutesStub comment: ''!
!WAByMethodRoutesStub categoriesForClass!Seaside-Tests-REST-Core! !
!WAByMethodRoutesStub methodsFor!

arguments	^ arguments!

compactDatabase: aString	selector := #compactDatabase:.	arguments := Array with: aString!

createBulkDocumentsInDatabase: aString	selector := #createBulkDocumentsInDatabase:.	arguments := Array with: aString!

createDatabase: aString	selector := #createDatabase:.	arguments := Array with: aString!

createNewDocumentInDatabase: aString	selector := #createNewDocumentInDatabase:.	arguments := Array with: aString!

createOrUpdateDocument: aFirstString inDatabase: aSecondString	selector := #createOrUpdateDocument:inDatabase:.	arguments := Array with: aFirstString with: aSecondString!

deleteDatabase: aString	selector := #deleteDatabase:.	arguments := Array with: aString!

deleteDocument: aFirstString inDatabase: aSecondString	selector := #deleteDocument:inDatabase:.	arguments := Array with: aFirstString with: aSecondString!

getAllDatabases	selector := #getAllDatabases.	arguments := Array new!

getAllDocuments: aString	selector := #getAllDocuments:.	arguments := Array with: aString!

getConfig	selector := #getConfig.	arguments := Array new!

getDatabase: aString	selector := #getDatabase:.	arguments := Array with: aString!

getDocument: aFirstString ofDatabase: aSecondString	selector := #getDocument:ofDatabase:.	arguments := Array with: aFirstString with: aSecondString!

getInfo	selector := #getInfo.	arguments := Array new!

getStats	selector := #getStats.	arguments := Array new!

getUuids: aString	selector := #getUuids:.	arguments := Array with: aString!

getView: aFirstString inDesign: aSecondString inDatabase: aThirdString	selector := #getView:inDesign:inDatabase:.	arguments := Array with: aFirstString with: aSecondString with: aThirdString!

queryDatabase: aString	selector := #queryDatabase:.	arguments := Array with: aString!

replicate	selector := #replicate.	arguments := Array new!

selector	^ selector! !
!WAByMethodRoutesStub categoriesFor: #arguments!accessing!public! !
!WAByMethodRoutesStub categoriesFor: #compactDatabase:!public!stubs! !
!WAByMethodRoutesStub categoriesFor: #createBulkDocumentsInDatabase:!public!stubs! !
!WAByMethodRoutesStub categoriesFor: #createDatabase:!public!stubs! !
!WAByMethodRoutesStub categoriesFor: #createNewDocumentInDatabase:!public!stubs! !
!WAByMethodRoutesStub categoriesFor: #createOrUpdateDocument:inDatabase:!public!stubs! !
!WAByMethodRoutesStub categoriesFor: #deleteDatabase:!public!stubs! !
!WAByMethodRoutesStub categoriesFor: #deleteDocument:inDatabase:!public!stubs! !
!WAByMethodRoutesStub categoriesFor: #getAllDatabases!public!stubs! !
!WAByMethodRoutesStub categoriesFor: #getAllDocuments:!public!stubs! !
!WAByMethodRoutesStub categoriesFor: #getConfig!public!stubs! !
!WAByMethodRoutesStub categoriesFor: #getDatabase:!public!stubs! !
!WAByMethodRoutesStub categoriesFor: #getDocument:ofDatabase:!public!stubs! !
!WAByMethodRoutesStub categoriesFor: #getInfo!public!stubs! !
!WAByMethodRoutesStub categoriesFor: #getStats!public!stubs! !
!WAByMethodRoutesStub categoriesFor: #getUuids:!public!stubs! !
!WAByMethodRoutesStub categoriesFor: #getView:inDesign:inDatabase:!public!stubs! !
!WAByMethodRoutesStub categoriesFor: #queryDatabase:!public!stubs! !
!WAByMethodRoutesStub categoriesFor: #replicate!public!stubs! !
!WAByMethodRoutesStub categoriesFor: #selector!accessing!public! !

