"Filed out from Dolphin Smalltalk 7"!

WARestfulHandler subclass: #WAPragmaStubHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPragmaStubHandler guid: (GUID fromString: '{4c6d8284-4ae6-4384-944e-399dd27df555}')!
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
!WAPragmaStubHandler categoriesFor: #compactDatabase:!public!public/database! !
!WAPragmaStubHandler categoriesFor: #createBulkDocumentsInDatabase:!public!public/documents! !
!WAPragmaStubHandler categoriesFor: #createDatabase:!public!public/database! !
!WAPragmaStubHandler categoriesFor: #createNewDocumentInDatabase:!public!public/documents! !
!WAPragmaStubHandler categoriesFor: #createOrUpdateDocument:inDatabase:!public!public/documents! !
!WAPragmaStubHandler categoriesFor: #deleteDatabase:!public!public/database! !
!WAPragmaStubHandler categoriesFor: #deleteDocument:inDatabase:!public!public/documents! !
!WAPragmaStubHandler categoriesFor: #getAllDatabases!public!public/meta! !
!WAPragmaStubHandler categoriesFor: #getAllDocuments:!public!public/documents! !
!WAPragmaStubHandler categoriesFor: #getConfig!public!public/meta! !
!WAPragmaStubHandler categoriesFor: #getDatabase:!public!public/database! !
!WAPragmaStubHandler categoriesFor: #getDocument:ofDatabase:!public!public/documents! !
!WAPragmaStubHandler categoriesFor: #getInfo!public!public/meta! !
!WAPragmaStubHandler categoriesFor: #getStats!public!public/meta! !
!WAPragmaStubHandler categoriesFor: #getUuids:!public!public/meta! !
!WAPragmaStubHandler categoriesFor: #getView:inDesign:inDatabase:!public!public/documents! !
!WAPragmaStubHandler categoriesFor: #options!public!public/database! !
!WAPragmaStubHandler categoriesFor: #queryDatabase:!public!public/documents! !
!WAPragmaStubHandler categoriesFor: #replicate!public!public/meta! !
!WAPragmaStubHandler categoriesFor: #updateDocument:inDatabase:!public!public/documents! !

