"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAAdmin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'configuredApplicationDefaults configuredExceptionHandlingDefaults'!
WAAdmin guid: (GUID fromString: '{38d78414-f3a4-428d-899d-75aac4c379a4}')!
WAAdmin comment: ''!
!WAAdmin categoriesForClass!Seaside-Tools-Core! !
!WAAdmin class methodsFor!

applicationDefaults	| config |	config := WASharedConfiguration named: 'Application Defaults'.	(configuredApplicationDefaults ifNil: [ false ]) ifFalse: [		self configureApplicationDefaults: config.		configuredApplicationDefaults := true ].	^ config!

applicationExceptionHandlingDefaults	| config |	config := WASharedConfiguration named: 'Application Exception Handling Defaults'.	(configuredExceptionHandlingDefaults ifNil: [ false ]) ifFalse: [		self configureApplicationExceptionHandlingDefaults: config.		configuredExceptionHandlingDefaults := true ].	^ config!

clearAll	self clearDefaultDispatcher.	self clearConfigurationCaches.	self clearSessions!

clearConfigurationCaches	WASystemConfiguration clearAllDescriptions!

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
!WAAdmin class categoriesFor: #applicationDefaults!configuration!public! !
!WAAdmin class categoriesFor: #applicationExceptionHandlingDefaults!configuration!public! !
!WAAdmin class categoriesFor: #clearAll!development!public! !
!WAAdmin class categoriesFor: #clearConfigurationCaches!development!public! !
!WAAdmin class categoriesFor: #clearDefaultDispatcher!development!public! !
!WAAdmin class categoriesFor: #clearSessions!development!public! !
!WAAdmin class categoriesFor: #configureApplicationDefaults:!initialization!public! !
!WAAdmin class categoriesFor: #configureApplicationExceptionHandlingDefaults:!initialization!public! !
!WAAdmin class categoriesFor: #configureNewApplication:!public!registration! !
!WAAdmin class categoriesFor: #defaultDispatcher!configuration!public! !
!WAAdmin class categoriesFor: #defaultServerManager!public!server adaptors! !
!WAAdmin class categoriesFor: #register:asApplicationAt:!public!registration! !
!WAAdmin class categoriesFor: #register:asApplicationAt:in:!public!registration! !
!WAAdmin class categoriesFor: #register:asApplicationAt:user:password:!public!registration! !
!WAAdmin class categoriesFor: #register:at:!public!registration! !
!WAAdmin class categoriesFor: #register:at:in:!public!registration! !
!WAAdmin class categoriesFor: #serverAdaptors!public!server adaptors! !
!WAAdmin class categoriesFor: #unregister:!public!registration! !
!WAAdmin class categoriesFor: #unregister:in:!public!registration! !

