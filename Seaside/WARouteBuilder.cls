"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WARouteBuilder
	instanceVariableNames: 'compiled method path produces consumes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'configuration'!

WARouteBuilder guid: (GUID fromString: '{8c9893a7-8e20-46d4-8fb9-297331e86047}')!

WARouteBuilder comment: 'I am a builder for building WARoute instances from a CompiledMethod.Instance Variables:	compiled	<CompiledMethod>	method		<String>	path		<String>	produces	<WAWildcardMimeTypeMatch|WAMimeTypeMatch>	consumes	<Collection<WAWildcardMimeTypeMatch|WAMimeTypeMatch>>Class Instance Variables:	configuration	<Collection>'!

!WARouteBuilder categoriesForClass!Route! !

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

!WARouteBuilder categoriesForMethods!
consumes:!configuration!public! !
copy!configuration methods!public! !
create!private! !
createComplexRoute!private! !
createMimeTypeMatch:!private! !
createSimpleRoute!private! !
delete!configuration methods!public! !
get!configuration methods!public! !
initializeOn:!initialization!public! !
method:!configuration!public! !
move!configuration methods!public! !
options!configuration methods!public! !
patch!configuration methods!public! !
path:!configuration!public! !
post!configuration methods!public! !
produces:!configuration!public! !
put!configuration methods!public! !
!

!WARouteBuilder class methodsFor!

createRoutesFor: aClass	^ self createRoutesFrom: aClass to: aClass!

createRoutesFrom: aClass to: aSuperClass	| current seen routes |	current := aClass.	seen := IdentitySet new.	routes := OrderedCollection new.	[ current notNil ] whileTrue: [ 		current selectorsAndMethodsDo: [ :selector :method |			(seen includes: selector) ifFalse: [				| pragmas |				pragmas := method pragmas					select: [ :pragma | configuration includes: (GRPlatform current selectorOfPragma: pragma) ].				pragmas isEmpty ifFalse: [					routes add: (pragmas						inject: (self on: method)						into: [ :builder :pragma | builder perform: (GRPlatform current selectorOfPragma: pragma) withArguments: pragma arguments ])							create ].				seen add: selector ] ].		current = aSuperClass			ifTrue: [ ^ routes ].		current := current superclass ].	^ routes!

initialize	configuration := IdentitySet new.	(Pragma allNamed: #configuration in: self)		do: [ :pragma | configuration add: pragma method selector ]!

on: aCompiledMethod	^ self basicNew initializeOn: aCompiledMethod! !

!WARouteBuilder class categoriesForMethods!
createRoutesFor:!public! !
createRoutesFrom:to:!public! !
initialize!initialization!public! !
on:!instance creation!public! !
!

