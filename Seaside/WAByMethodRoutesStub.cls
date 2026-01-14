"Filed out from Dolphin Smalltalk"!

Object subclass: #WAByMethodRoutesStub
	instanceVariableNames: 'selector arguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAByMethodRoutesStub guid: (GUID fromString: '{813c2218-4209-4898-8c47-7a6baee63912}')!

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

!WAByMethodRoutesStub categoriesForMethods!
arguments!accessing!public! !
compactDatabase:!public!stubs! !
createBulkDocumentsInDatabase:!public!stubs! !
createDatabase:!public!stubs! !
createNewDocumentInDatabase:!public!stubs! !
createOrUpdateDocument:inDatabase:!public!stubs! !
deleteDatabase:!public!stubs! !
deleteDocument:inDatabase:!public!stubs! !
getAllDatabases!public!stubs! !
getAllDocuments:!public!stubs! !
getConfig!public!stubs! !
getDatabase:!public!stubs! !
getDocument:ofDatabase:!public!stubs! !
getInfo!public!stubs! !
getStats!public!stubs! !
getUuids:!public!stubs! !
getView:inDesign:inDatabase:!public!stubs! !
queryDatabase:!public!stubs! !
replicate!public!stubs! !
selector!accessing!public! !
!

