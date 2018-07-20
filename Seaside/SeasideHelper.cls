"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SeasideHelper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SeasideHelper guid: (GUID fromString: '{a7be80d0-9b87-4e7a-bc6e-b3a98993fdb5}')!
SeasideHelper comment: ''!
!SeasideHelper categoriesForClass!Kernel-Objects! !
!SeasideHelper class methodsFor!

corePackageReferences

	"The list of package file refs which (together with their prerequisities) will load the core Seaside functionality"

	^#(
		'Grease\Grease-Dolphin-Core.pax' 
		'Seaside\Seaside-Dolphin-Core.pax' 
		'Seaside\Seaside-Dolphin-Environment.pax' 
		'Seaside\Seaside-Dolphin-Development.pax' 
		'Seaside\Seaside-Dolphin-Flow.pax'
		'Seaside\Seaside-Dolphin-Email.pax'
		'Seaside\Seaside-Dolphin-Extensions.pax'
		'Seaside\Seaside-Dolphin-JSON-Core.pax'
		'Seaside\Seaside-Dolphin-Welcome.pax'
		'Javascript\Javascript-Dolphin-Core.pax'
		'JQuery\JQuery-JSON.pax'
		'Seaside\Seaside-Flow.pax'
		'Seaside\Seaside-Adaptors-Dolphin-Swazoo.pax'
	)!

loadPackageReferences: aCollection

	aCollection do: 
		[ :each | 
		(Package manager includesPackageNamed: (File splitStemFrom: each)) ifFalse: 
			[Package manager install: (FileLocator imageRelative localFileSpecFor: each)]]!

loadSeaside

	self loadPackageReferences: self corePackageReferences!

loadTests

	self loadPackageReferences: self testPackageReferences!

testPackageReferences

	"The list of package file refs which (together with their prerequisities) will load all relevant tests for Seaside and associated functionality"

	^#(
		'Grease\Grease-Tests-Dolphin-Core.pax'
		'Seaside\Seaside-Tests-Dolphin-Continuation.pax'
		'Seaside\Seaside-Tests-Dolphin-Functional.pax'
		'Seaside\Seaside-Tests-Dolphin-Core.pax'
		'Seaside\Seaside-Tests-Component.pax'
		'Seaside\Seaside-Tests-RenderLoop.pax'
		'Seaside\Seaside-Tests-Session.pax'
		'Seaside\Seaside-Tests-Welcome.pax'
		'Javascript\Javascript-Tests-Dolphin-Core.pax'
		'JQuery\JQuery-Tests-UI.pax'
		'Swazoo\Swazoo Tests.pax'
		'Sport\Sport Tests.pax'
	)!

welcome

	"Example JQuery applications reside in test packages"
	self loadPackageReferences: #('Javascript-Tests-Dolphin-Core' 'JQuery-Tests-UI').

	"We use indirect class refs to avoid setting up package prerequisities.
	Instead the package loading (which is order-dependent) is done via the loadSeaside method"
	((Smalltalk at: #WASwazooAdaptor) port: 8080)
		codec: ((Smalltalk at: #GRCodec) forEncoding: 'utf-8');
		start.

	ShellLibrary default shellOpen: 'http://localhost:8080/seaside/'! !
!SeasideHelper class categoriesFor: #corePackageReferences!constants!public! !
!SeasideHelper class categoriesFor: #loadPackageReferences:!helpers!private! !
!SeasideHelper class categoriesFor: #loadSeaside!helpers!public! !
!SeasideHelper class categoriesFor: #loadTests!helpers!public! !
!SeasideHelper class categoriesFor: #testPackageReferences!constants!public! !
!SeasideHelper class categoriesFor: #welcome!helpers!public! !

