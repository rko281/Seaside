"Filed out from Dolphin Smalltalk"!

WARestfulHandler subclass: #WACORSResourceExample
	instanceVariableNames: 'sampleData'
	classVariableNames: 'CorsAdaptor OriginAdaptor'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACORSResourceExample guid: (GUID fromString: '{3283b0be-8d26-447d-90a0-bf4b1a6cf8ec}')!

WACORSResourceExample comment: ''!

!WACORSResourceExample categoriesForClass!Unclassified! !

!WACORSResourceExample methodsFor!

deleteEntry	##(Pragma method: 'DELETE').	##(Pragma path: 'entries').	##(Pragma produces: 'application/json').		^ self sampleData removeFirst asJson!

getEntries	##(Pragma method: 'GET').	##(Pragma path: 'entries').	##(Pragma produces: 'application/json').	^ self sampleData asJson!

initialize 	super initialize.	self addFilterFirst: WACORSFilter new.!

initializeSampleData	^ sampleData := ((1 to: 10) collect: [ :index | 		                 Dictionary new			                 at: 'id' put: index;			                 at: 'title'			                 put: ('Item <1p>' expandMacrosWith: 2);			                 yourself ]) asOrderedCollection!

sampleData	sampleData ifNil: [ self initializeSampleData ].	^ sampleData! !

!WACORSResourceExample categoriesForMethods!
deleteEntry!public!routes! !
getEntries!public!routes! !
initialize!initialization!public! !
initializeSampleData!private! !
sampleData!private! !
!

!WACORSResourceExample class methodsFor!

concreteAdaptorClass	^ WAServerAdaptor withAllSubclasses detect: [ :one | one isAbstract not and:[ one name ~= 'WATestServerAdaptor' ] ]!

corsAdaptor	^ CorsAdaptor!

corsAdaptorPort	^ 8888!

initialize	##(Pragma script).	self register!

originAdaptorPort	^ 8080!

register	##(Pragma script).	WAAdmin register: self at: self resourceUrl!

registerCorsAdaptor  (Smalltalk at: #'GemServer' ifAbsent: [ nil ])    ifNil: [ self registerCorsAdaptorRegular ]    ifNotNil: [ self registerCorsAdaptorInGemStone ]!

registerCorsAdaptorInGemStone  | gemserver |  gemserver := (Smalltalk at: #'GemServer') gemServerNamed: 'Seaside'.  (gemserver ports includes: self corsAdaptorPort)    ifFalse: [       gemserver ports: gemserver ports , {(self corsAdaptorPort)}.      gemserver restartGems.      (gemserver waitForStartGems: 20)        ifFalse: [           Transcript            cr;            show: 'Failed to start gemserver'.          self assert: false ].      (Delay forSeconds: 3) wait ]!

registerCorsAdaptorRegular	CorsAdaptor := WAAdmin serverAdaptors		               detect: [ :adaptor | adaptor class == self concreteAdaptorClass and: [ adaptor port = self corsAdaptorPort ] ]		               ifNone: [ self concreteAdaptorClass port: self corsAdaptorPort ].	CorsAdaptor start!

resourceUrl	^ 'tests/corsData'!

startAdaptors	##(Pragma script).	WAServerManager default adaptors		ifEmpty: [ 			OriginAdaptor := (self concreteAdaptorClass port:				                  self originAdaptorPort) start.			self registerCorsAdaptor ]		ifNotEmpty: [ :adaptors | 			OriginAdaptor := adaptors				                 detect: [ :one | one port = self originAdaptorPort ]				                 ifNone: [ self concreteAdaptorClass port: self originAdaptorPort ].			OriginAdaptor start.			CorsAdaptor := adaptors				               detect: [ :one | one port = self corsAdaptorPort ]				               ifNone: [ self concreteAdaptorClass port: self corsAdaptorPort ].			CorsAdaptor start ]!

unregister  ##(Pragma script).  WAAdmin unregister: self resourceUrl!

unregisterCorsAdaptor  (Smalltalk at: #'GemServer' ifAbsent:[ nil ])    ifNil: [ self unregisterCorsAdaptorRegular ]    ifNotNil: [ self unregisterCorsAdaptorInGemStone ]!

unregisterCorsAdaptorInGemStone  | gemserver |  gemserver := (Smalltalk at: #'GemServer') gemServerNamed: 'Seaside'.  (gemserver ports includes: self corsAdaptorPort)    ifTrue: [       gemserver stopGems.		(Delay forSeconds: 3) wait.      gemserver ports: (gemserver ports copyWithout: self corsAdaptorPort).      gemserver startGems.      (gemserver waitForStartGems: 20)        ifFalse: [           Transcript            cr;            show: 'Failed to start gemserver'.          self assert: false ].      (Delay forSeconds: 3) wait ]!

unregisterCorsAdaptorRegular	CorsAdaptor ifNotNil:[ CorsAdaptor stop; unregister ].	CorsAdaptor := nil! !

!WACORSResourceExample class categoriesForMethods!
concreteAdaptorClass!accessing!public! !
corsAdaptor!public!setup! !
corsAdaptorPort!accessing!public! !
initialize!initialization!public! !
originAdaptorPort!accessing!public! !
register!public!setup! !
registerCorsAdaptor!public!setup! !
registerCorsAdaptorInGemStone!public!setup! !
registerCorsAdaptorRegular!public!setup! !
resourceUrl!public!setup! !
startAdaptors!public!setup! !
unregister!public!setup! !
unregisterCorsAdaptor!public!setup! !
unregisterCorsAdaptorInGemStone!public!setup! !
unregisterCorsAdaptorRegular!public!setup! !
!

