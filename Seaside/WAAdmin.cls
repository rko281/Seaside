"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAAdmin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'configuredApplicationDefaults configuredExceptionHandlingDefaults'!

WAAdmin guid: (GUID fromString: '{a1a59433-0614-487f-a1fd-c15afef785a6}')!

WAAdmin comment: ''!

!WAAdmin categoriesForClass!Unclassified! !

!WAAdmin class methodsFor!

applicationDefaults	| config |	config := WASharedConfiguration named: 'Application Defaults'.	(configuredApplicationDefaults ifNil: [ false ]) ifFalse: [		self configureApplicationDefaults: config.		configuredApplicationDefaults := true ].	^ config!

applicationExceptionHandlingDefaults	| config |	config := WASharedConfiguration named: 'Application Exception Handling Defaults'.	(configuredExceptionHandlingDefaults ifNil: [ false ]) ifFalse: [		self configureApplicationExceptionHandlingDefaults: config.		configuredExceptionHandlingDefaults := true ].	^ config!

clearAll	self clearDefaultDispatcher.	self clearConfigurationCaches.	self clearSessions!

clearConfigurationCaches	WASystemConfiguration clearAllDescriptions.	self defaultServerManager adaptors do: [ :adaptor |		adaptor requestHandler withDescendantsDo: [ :handler |			handler configuration clearSearchContexts ] ]!

clearDefaultDispatcher	WADispatcher resetDefault!

clearSessions	self defaultServerManager adaptors do: [ :adaptor |		adaptor requestHandler withDescendantsDo: [ :handler |			handler isApplication ifTrue: [ handler clear ] ] ]!

configureApplicationDefaults: aSharedConfiguration	"WARenderLoopConfiguration is added by default because most users will use WASession and the Render Loop."	(aSharedConfiguration parents includes: WARenderLoopConfiguration instance) ifFalse: [		aSharedConfiguration addParent: WARenderLoopConfiguration instance ]!

configureApplicationExceptionHandlingDefaults: aSharedConfiguration	(aSharedConfiguration parents includes: WAExceptionFilterConfiguration instance) ifFalse: [		aSharedConfiguration addParent: WAExceptionFilterConfiguration instance ]!

configureNewApplication: anApplication	| filter |	anApplication configuration		removeParent: WAApplicationConfiguration instance; "make the chain slightly cleaner"		addParent: WARenderLoopConfiguration instance;		addParent: self applicationDefaults.			filter := WAExceptionFilter new.	filter configuration addParent: self applicationExceptionHandlingDefaults.	anApplication addFilter: filter!

defaultDispatcher	^ WADispatcher default!

defaultServerManager	"Return the default server manager"		^ WAServerManager default!

register: aComponentClass asApplicationAt: aString	^ self register: aComponentClass asApplicationAt: aString in: self defaultDispatcher!

register: aComponentClass asApplicationAt: aString in: aDispatcher	"Use this to programmatically register a component as an application."	| application |	application := self register: WAApplication at: aString in: aDispatcher.	self configureNewApplication: application.	application rootClass: aComponentClass.	^ application!

register: aComponentClass asApplicationAt: aString user: user password: password 	"Like #register:asApplicationAt: but additionally adds password protection."	| application |	application := self 		register: aComponentClass		asApplicationAt: aString.	application configuration addParent: WAAuthConfiguration instance.	application 		preferenceAt: #login		put: user.	application 		preferenceAt: #passwordHash		put: (GRPlatform current secureHashFor: password).	application addFilter: WAAuthenticationFilter new.	^ application!

register: anEntryPointClass at: aString	^ self register: anEntryPointClass at: aString in: self defaultDispatcher!

register: aRequestHandlerClass at: aString in: aDispatcher	| dispatcher subStrings |	dispatcher := aDispatcher.	subStrings := GRPlatform subStringsIn: aString splitBy: $/.	subStrings allButLast do: [ :each |		dispatcher := dispatcher handlers 				at: each				ifAbsent: [ dispatcher register: WADispatcher new at: each ] ].	^ dispatcher register: aRequestHandlerClass new at: subStrings last!

serverAdaptors	"Return a collection of Server Adaptors that are currently registered in the default Server Manager."	^ self defaultServerManager adaptors!

unregister: aString	"Unregister the application aString in the default dispatcher."	^ self unregister: aString in: self defaultDispatcher!

unregister: aString in: aDispatcher	"Unregister the application aString in aDispatcher."	| dispatcher |	dispatcher := aDispatcher.	GRPlatform subStringsIn: aString splitBy: $/ do: [ :each |		dispatcher := dispatcher handlers				at: each				ifAbsent: [ ^ nil ] ].	^ dispatcher parent		unregister: dispatcher! !

!WAAdmin class categoriesForMethods!
applicationDefaults!configuration!public! !
applicationExceptionHandlingDefaults!configuration!public! !
clearAll!development!public! !
clearConfigurationCaches!development!public! !
clearDefaultDispatcher!development!public! !
clearSessions!development!public! !
configureApplicationDefaults:!initialization!public! !
configureApplicationExceptionHandlingDefaults:!initialization!public! !
configureNewApplication:!public!registration! !
defaultDispatcher!configuration!public! !
defaultServerManager!public!server adaptors! !
register:asApplicationAt:!public!registration! !
register:asApplicationAt:in:!public!registration! !
register:asApplicationAt:user:password:!public!registration! !
register:at:!public!registration! !
register:at:in:!public!registration! !
serverAdaptors!public!server adaptors! !
unregister:!public!registration! !
unregister:in:!public!registration! !
!

