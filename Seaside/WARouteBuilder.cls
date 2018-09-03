"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WARouteBuilder
	instanceVariableNames: 'compiled method path produces consumes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'configuration'!
WARouteBuilder guid: (GUID fromString: '{4c101e83-03a2-4b7a-8243-ae3b288ccd56}')!
WARouteBuilder comment: 'I am a builder for building WARoute instances from a CompiledMethod.Instance Variables:	compiled	<CompiledMethod>	method		<String>	path		<String>	produces	<WAWildcardMimeTypeMatch|WAMimeTypeMatch>	consumes	<Collection<WAWildcardMimeTypeMatch|WAMimeTypeMatch>>Class Instance Variables:	configuration	<Collection>'!
!WARouteBuilder categoriesForClass!Seaside-REST-Core-Route! !
!WARouteBuilder methodsFor!

consumes: aString	##(Pragma configuration).		consumes add: (WAMimeTypeMatch fromString: aString)!

copy	##(Pragma configuration).		self method: 'COPY'!

create	^ path isNil		ifTrue: [ self createSimpleRoute ]		ifFalse: [ self createComplexRoute ]!

createComplexRoute	^ WAComplexRoute		method: method selector: compiled selector pattern: path		arguments: (GRPlatform current argumentNamesOf: compiled)		produces: produces		consumes: (self createMimeTypeMatch: consumes)!

createMimeTypeMatch: aCollection	^ aCollection isEmpty		ifTrue: [ WAWildcardMimeTypeMatch new ]		ifFalse: [			aCollection size = 1				ifTrue: [ aCollection first ]				ifFalse: [ WACompositeMimeTypeMatch matches: aCollection ] ]!

createSimpleRoute	^ WASimpleRoute		method: method		selector: compiled selector		produces: produces		consumes: (self createMimeTypeMatch: consumes)!

delete	##(Pragma configuration).		self method: 'DELETE'!

get	##(Pragma configuration).		self method: 'GET'!

initializeOn: aCompiledMethod	self initialize.	compiled := aCompiledMethod.	method := 'GET'.	path := aCompiledMethod selector greaseString.	consumes := OrderedCollection new.	produces := WAWildcardMimeTypeMatch new!

method: aString	##(Pragma configuration).		method := aString asUppercase!

move	##(Pragma configuration).		self method: 'MOVE'!

options	##(Pragma configuration).	self method: 'OPTIONS'!

patch	##(Pragma configuration).	self method: 'PATCH'!

path: aString	##(Pragma configuration).		path := aString!

post	##(Pragma configuration).		self method: 'POST'!

produces: aString	##(Pragma configuration).		produces := WAMimeTypeMatch fromString: aString!

put	##(Pragma configuration).		self method: 'PUT'! !
!WARouteBuilder categoriesFor: #consumes:!configuration!public! !
!WARouteBuilder categoriesFor: #copy!configuration methods!public! !
!WARouteBuilder categoriesFor: #create!private! !
!WARouteBuilder categoriesFor: #createComplexRoute!private! !
!WARouteBuilder categoriesFor: #createMimeTypeMatch:!private! !
!WARouteBuilder categoriesFor: #createSimpleRoute!private! !
!WARouteBuilder categoriesFor: #delete!configuration methods!public! !
!WARouteBuilder categoriesFor: #get!configuration methods!public! !
!WARouteBuilder categoriesFor: #initializeOn:!initialization!public! !
!WARouteBuilder categoriesFor: #method:!configuration!public! !
!WARouteBuilder categoriesFor: #move!configuration methods!public! !
!WARouteBuilder categoriesFor: #options!configuration methods!public! !
!WARouteBuilder categoriesFor: #patch!configuration methods!public! !
!WARouteBuilder categoriesFor: #path:!configuration!public! !
!WARouteBuilder categoriesFor: #post!configuration methods!public! !
!WARouteBuilder categoriesFor: #produces:!configuration!public! !
!WARouteBuilder categoriesFor: #put!configuration methods!public! !

!WARouteBuilder class methodsFor!

createRoutesFor: aClass	^ self createRoutesFrom: aClass to: aClass!

createRoutesFrom: aClass to: aSuperClass	| current seen routes |	current := aClass.	seen := IdentitySet new.	routes := OrderedCollection new.	[ current notNil ] whileTrue: [ 		current selectorsAndMethodsDo: [ :selector :method |			(seen includes: selector) ifFalse: [				| pragmas |				pragmas := method pragmas					select: [ :pragma | configuration includes: pragma keyword ].				pragmas isEmpty ifFalse: [					routes add: (pragmas						inject: (self on: method)						into: [ :builder :pragma | builder perform: pragma keyword withArguments: pragma arguments ])							create ].				seen add: selector ] ].		current = aSuperClass			ifTrue: [ ^ routes ].		current := current superclass ].	^ routes!

initialize	configuration := IdentitySet new.	(Pragma allNamed: #configuration in: self)		do: [ :pragma | configuration add: pragma methodSelector ]!

on: aCompiledMethod	^ self basicNew initializeOn: aCompiledMethod! !
!WARouteBuilder class categoriesFor: #createRoutesFor:!public! !
!WARouteBuilder class categoriesFor: #createRoutesFrom:to:!public! !
!WARouteBuilder class categoriesFor: #initialize!initialization!public! !
!WARouteBuilder class categoriesFor: #on:!instance creation!public! !

