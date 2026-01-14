"Filed out from Dolphin Smalltalk"!

WARestfulHandler subclass: #WAPragmaStubHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPragmaStubHandler guid: (GUID fromString: '{4e363cbc-b7c8-456a-bc24-08d488f2a919}')!

WAPragmaStubHandler comment: ''!

!WAPragmaStubHandler categoriesForClass!Seaside-Tests-REST-Core! !

!WAPragmaStubHandler methodsFor!

compactDatabase: databaseName	##(Pragma post).	##(Pragma path: '/{databaseName}/_compact').	!

createBulkDocumentsInDatabase: databaseName	##(Pragma post).	##(Pragma path: '/{databaseName}/_bulk_docs').	!

createDatabase: databaseName	##(Pragma put).	!

createNewDocumentInDatabase: databaseName	##(Pragma post).	!

createOrUpdateDocument: documentId inDatabase: databaseName	##(Pragma put).	##(Pragma path: '/{databaseName}/{documentId}').	!

deleteDatabase: databaseName	##(Pragma delete).	!

deleteDocument: documentId inDatabase: databaseName	##(Pragma delete).	##(Pragma path: '/{databaseName}/{documentId}').	!

getAllDatabases	##(Pragma get).	##(Pragma path: '/_all_dbs').	!

getAllDocuments: databaseName	##(Pragma get).	##(Pragma path: '/{databaseName}/_all_docs').	!

getConfig	##(Pragma get).	##(Pragma path: '/_config').	!

getDatabase: databaseName	##(Pragma get).	!

getDocument: documentId ofDatabase: databaseName	##(Pragma get).	##(Pragma path: '/{databaseName}/{documentId}').	!

getInfo	##(Pragma get).	!

getStats	##(Pragma get).	##(Pragma path: '/_stats').	!

getUuids: numberOfUuids	##(Pragma get).	##(Pragma path: '/_uuids?count={numberOfUuids}').	!

getView: viewName inDesign: designName inDatabase: databaseName	##(Pragma get).	##(Pragma path: '/{databaseName}/_design/{designName}/_view/{viewName}').	!

options	##(Pragma options).!

queryDatabase: databaseName	##(Pragma post).	##(Pragma path: '/{databaseName}/_temp_view').	!

replicate	##(Pragma post).	##(Pragma path: '/_replicate').	!

updateDocument: documentId inDatabase: databaseName	##(Pragma patch).	##(Pragma path: '/{databaseName}/{documentId}').	! !

!WAPragmaStubHandler categoriesForMethods!
compactDatabase:!public!public/database! !
createBulkDocumentsInDatabase:!public!public/documents! !
createDatabase:!public!public/database! !
createNewDocumentInDatabase:!public!public/documents! !
createOrUpdateDocument:inDatabase:!public!public/documents! !
deleteDatabase:!public!public/database! !
deleteDocument:inDatabase:!public!public/documents! !
getAllDatabases!public!public/meta! !
getAllDocuments:!public!public/documents! !
getConfig!public!public/meta! !
getDatabase:!public!public/database! !
getDocument:ofDatabase:!public!public/documents! !
getInfo!public!public/meta! !
getStats!public!public/meta! !
getUuids:!public!public/meta! !
getView:inDesign:inDatabase:!public!public/documents! !
options!public!public/database! !
queryDatabase:!public!public/documents! !
replicate!public!public/meta! !
updateDocument:inDatabase:!public!public/documents! !
!

