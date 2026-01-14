"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAByMethodRoutesTest
	instanceVariableNames: 'routes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAByMethodRoutesTest guid: (GUID fromString: '{7d4012de-1d8a-4def-a233-6882d16cf050}')!

WAByMethodRoutesTest comment: ''!

!WAByMethodRoutesTest categoriesForClass!Seaside-Tests-REST-Core! !

!WAByMethodRoutesTest methodsFor!

assertMethod: aMethodString selector: aSymbol path: aFirstCollectionOfStrings arguments: aSecondCollectionOfStrings	self		assertMethod: aMethodString		selector: aSymbol		path: aFirstCollectionOfStrings		parameters: Dictionary new		arguments: aSecondCollectionOfStrings!

assertMethod: aMethodString selector: aSymbol path: aFirstCollectionOfStrings parameters: aDictionary arguments: aSecondCollectionOfStrings	| result stub requestUrl request context |	requestUrl := WAUrl new		addAllToPath: aFirstCollectionOfStrings;		queryFields: aDictionary;		yourself.	request := WARequest		method: aMethodString		uri: requestUrl.	context := WARequestContext request: request response: WAResponse new.	result := routes routeForContext: context consume: true ifAbsent: [ self assert: false ].	stub := WAByMethodRoutesStub new.	result sendMessageTo: stub.	self assert: stub selector = aSymbol.	self assert: stub arguments = aSecondCollectionOfStrings.	self assert: context consumer atEnd!

routes	^ OrderedCollection new		"Meta"		add: (WARoute get: #getInfo);		add: (WARoute get: '/_all_dbs' selector: #getAllDatabases);		add: (WARoute get: '/_config' selector: #getConfig);		add: (WARoute get: '/_stats' selector: #getStats);		add: (WARoute get: '/_uuids?count={1}' selector: #getUuids:);		add: (WARoute post: '/_replicate' selector: #replicate);				"Database"		add: (WARoute post: '/{1}/_compact' selector: #compactDatabase:);		add: (WARoute put: #createDatabase:);		add: (WARoute delete: #deleteDatabase:);		add: (WARoute get: #getDatabase:);				"Documents"		add: (WARoute get: '/{1}/_all_docs' selector: #getAllDocuments:);		add: (WARoute get: '/{2}/{1}' selector: #getDocument:ofDatabase:);		add: (WARoute post: #createNewDocumentInDatabase:);		add: (WARoute put: '/{2}/{1}' selector: #createOrUpdateDocument:inDatabase:);		add: (WARoute delete: '/{2}/{1}' selector: #deleteDocument:inDatabase:);		add: (WARoute post: '/{1}/_bulk_docs' selector: #createBulkDocumentsInDatabase:);		add: (WARoute post: '/{1}/_temp_view' selector: #queryDatabase:);		add: (WARoute get: '/{3}/_design/{2}/_view/{1}' selector: #getView:inDesign:inDatabase:);		yourself!

setUp	super setUp.	routes := WAByMethodRoutes routes: self routes!

testArgumentNamesOf	self assert: (GRPlatform current argumentNamesOf: (WAByMethodRoutesStub compiledMethodAt: #deleteDocument:inDatabase:)) asSet = #('aFirstString' 'aSecondString') asSet!

testCompactDatabase	self		assertMethod: 'POST'		selector: #compactDatabase:		path: #('credit_cards' '_compact')		arguments: #('credit_cards')!

testCreateBulkDocumentsInDatabase	self		assertMethod: 'POST'		selector: #createBulkDocumentsInDatabase:		path: #('credit_cards' '_bulk_docs')		arguments: #('credit_cards')!

testCreateDatabase	self		assertMethod: 'PUT'		selector: #createDatabase:		path: #('credit_cards')		arguments: #('credit_cards')!

testCreateNewDocumentInDatabase	self		assertMethod: 'POST'		selector: #createNewDocumentInDatabase:		path: #('credit_cards')		arguments: #('credit_cards')!

testCreateOrUpdateDocumentinDatabase	self		assertMethod: 'PUT'		selector: #createOrUpdateDocument:inDatabase:		path: #('credit_cards' '1111-2222-3333-4444')		arguments: #('1111-2222-3333-4444' 'credit_cards')!

testDeleteDatabase	self		assertMethod: 'DELETE'		selector: #deleteDatabase:		path: #('credit_cards')		arguments: #('credit_cards')!

testDeleteDocumentInDatabase	self		assertMethod: 'DELETE'		selector: #deleteDocument:inDatabase:		path: #('credit_cards' '1111-2222-3333-4444')		arguments: #('1111-2222-3333-4444' 'credit_cards')!

testGetAllDatabases	self		assertMethod: 'GET'		selector: #getAllDatabases		path: #('_all_dbs')		arguments: #()!

testGetConfig	self		assertMethod: 'GET'		selector: #getConfig		path: #('_config')		arguments: #()!

testGetDatabase	self		assertMethod: 'GET'		selector: #getDatabase:		path: #('credit_cards')		arguments: #('credit_cards')!

testGetDocumentOfDatabase	self		assertMethod: 'GET'		selector: #getDocument:ofDatabase:		path: #('credit_cards' '1111-2222-3333-4444')		arguments: #('1111-2222-3333-4444' 'credit_cards')!

testGetInfo	self		assertMethod: 'GET'		selector: #getInfo		path: #()		arguments: #()!

testGetStats	self		assertMethod: 'GET'		selector: #getStats		path: #('_stats')		arguments: #()!

testGetUuids	self		assertMethod: 'GET'		selector: #getUuids:		path: #('_uuids')		parameters: (Dictionary new			at: 'count' put: '100';			yourself)		arguments: #('100')!

testGetViewInDesignInDatabase	self		assertMethod: 'GET'		selector: #getView:inDesign:inDatabase:		path: #('credit_cards' '_design' 'fraud' '_view' 'recent')		arguments: #('recent' 'fraud' 'credit_cards')!

testPathUnconsumedWhenNotFound	| requestUrl request context notFound |	requestUrl := WAUrl new		addAllToPath: #('I' 'can' 'not' 'be' 'found');		yourself.	request := WARequest		method: 'GET'		uri: requestUrl.	context := WARequestContext request: request response: WAResponse new.	notFound := false.	routes routeForContext: context consume: true ifAbsent: [ notFound := true ].	self assert: notFound.	self deny: context consumer atEnd.	self assert: context consumer upToEnd = #('I' 'can' 'not' 'be' 'found') asOrderedCollection!

testQueryDatabase	self		assertMethod: 'POST'		selector: #queryDatabase:		path: #('credit_cards' '_temp_view')		arguments: #('credit_cards')!

testReplicate	self		assertMethod: 'POST'		selector: #replicate		path: #('_replicate')		arguments: #()! !

!WAByMethodRoutesTest categoriesForMethods!
assertMethod:selector:path:arguments:!private! !
assertMethod:selector:path:parameters:arguments:!private! !
routes!private! !
setUp!public!running! !
testArgumentNamesOf!public!tests! !
testCompactDatabase!public!tests! !
testCreateBulkDocumentsInDatabase!public!tests! !
testCreateDatabase!public!tests! !
testCreateNewDocumentInDatabase!public!tests! !
testCreateOrUpdateDocumentinDatabase!public!tests! !
testDeleteDatabase!public!tests! !
testDeleteDocumentInDatabase!public!tests! !
testGetAllDatabases!public!tests! !
testGetConfig!public!tests! !
testGetDatabase!public!tests! !
testGetDocumentOfDatabase!public!tests! !
testGetInfo!public!tests! !
testGetStats!public!tests! !
testGetUuids!public!tests! !
testGetViewInDesignInDatabase!public!tests! !
testPathUnconsumedWhenNotFound!public!tests! !
testQueryDatabase!public!tests! !
testReplicate!public!tests! !
!

