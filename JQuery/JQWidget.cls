﻿"Filed out from Dolphin Smalltalk"!

JQPlugin subclass: #JQWidget
	instanceVariableNames: 'action arguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQWidget guid: (GUID fromString: '{4c17dc2b-12b3-4d34-8494-ed205dc66054}')!

JQWidget comment: ''!

!JQWidget categoriesForClass!Objects! !

!JQWidget methodsFor!

action: aString	self action: aString arguments: nil!

action: aString arguments: anArray	action := aString.	arguments := anArray!

arguments	| result |	result := OrderedCollection new.	action isNil		ifFalse: [ result addLast: action ].	arguments isNil		ifFalse: [ result addAll: arguments ].	(options isNil or: [ options isEmpty ])		ifFalse: [ result addLast: options ].	^ result!

destroy	"Completely remove the functionality."		self action: 'destroy'!

disable	"Disable the functionality."		self action: 'disable'!

enable	"Enable the functionality."					self action: 'enable'!

option: aString	"Get an option aString."		self action: 'option' arguments: (Array with: aString)!

option: aString put: anObject	"Set an option aString to anObject."		self action: 'option' arguments: (Array with: aString with: anObject)! !

!JQWidget categoriesForMethods!
action:!private! !
action:arguments:!private! !
arguments!accessing!public! !
destroy!actions!public! !
disable!actions!public! !
enable!actions!public! !
option:!actions!public! !
option:put:!actions!public! !
!

!JQWidget class methodsFor!

generate	"This code is used to generate the widget classes from the JQuery documentation. It is not necessary to port or call this method from any Smalltalk platform other than Pharo. The actual code of this method is commented to avoid problems on other platforms."	"| model base comment |	model := RBNamespace new.	base := 'http://docs.jquery.com/action/raw/'.	comment := [ :input |		(String with: (Character value: 34)) , ((((input copyWithRegex: '<(li|br/?)>' matchesReplacedWith: (String with: Character cr)) copyWithRegex: '<[^>]+>' matchesReplacedWith: '') copyReplaceAll: (String with: (Character value: 34)) with: '''') copyReplaceAll: '''''' with: '''') , (String with: (Character value: 34)) ].	#(	'Draggable'		'UI/API/1.8/Draggable'		'Droppable'		'UI/API/1.8/Droppable'		'Resizable'		'UI/API/1.8/Resizable' 		'Selectable'		'UI/API/1.8/Selectable' 		'Sortable'		'UI/API/1.8/Sortable'				'Accordion'		'UI/API/1.8/Accordion'		'Autocomplete'	'UI/API/1.8/Autocomplete'		'Button'			'UI/API/1.8/Button'		'Datepicker'	'UI/API/1.8/Datepicker'		'Dialog'			'UI/API/1.8/Dialog'		'Progressbar'	'UI/API/1.7.2/Progressbar'		'Slider'			'UI/API/1.8/Slider'		'Tabs'			'UI/API/1.8/Tabs'				'Position'		'UI/Utility/Position') pairsDo: [ :id :url |		| stream string class matcher tokens argument dictionary removals selector source |		' fetch documentation '.		stream := HTTPSocket httpGet: base , url.		stream isString ifTrue: [ self error: stream ].		string := (stream contents			replaceAll: Character cr with: Character space)			replaceAll: Character lf with: Character space.		' prepare class '.		removals := Set new.		class := model classNamed: ('JQ' , id) asSymbol.		class isNil ifTrue: [ self error: 'Class not found JQ' , id ].		class selectors do: [ :rselector |			((class protocolsFor: rselector)				anySatisfy: [ :each | each endsWith: '-generated' ])					ifTrue: [ removals add: rselector ] ].		' generate options '.		matcher := '\{\{UIAPIPluginOption\|' asRegex.		matcher matchesIn: string do: [ :match |			tokens := string copyFrom: (matcher subEnd: 1) first + 1 to: string size.			tokens := (((tokens readStream upToAll: '}}')				copyReplaceAll: '|' with: ' |') findTokens: $|)				collect: [ :each | each withBlanksCondensed ].			argument := ((tokens at: 3)				copyReplaceAll: ',' with: 'Or')				select: [ :each | each isAlphaNumeric ].			argument := (argument first isVowel				ifTrue: [ 'an' ] ifFalse: [ 'a' ]) , argument.			selector := ((tokens at: 2) , ':') asSymbol.			source := selector , ' ' , argument , '	' , (comment value: (tokens at: 5)) , '	self optionAt: ' , (tokens at: 2) printString , ' put: ' , argument.			removals remove: selector ifAbsent: [ ].			(class sourceCodeFor: selector) = source				ifFalse: [ class compile: source classified: #'options-generated' ] ].					' generate utility options '.		matcher := '\{\{UIAPIUtilityOption\|' asRegex.		matcher matchesIn: string do: [ :match |			tokens := string copyFrom: (matcher subEnd: 1) first + 1 to: string size.			tokens := (((tokens readStream upToAll: '}}')				copyReplaceAll: '|' with: ' |') findTokens: $|)				collect: [ :each | each withBlanksCondensed ].			argument := ((tokens at: 2)				copyReplaceAll: ',' with: 'Or')				select: [ :each | each isAlphaNumeric ].			argument := (argument first isVowel				ifTrue: [ 'an' ] ifFalse: [ 'a' ]) , argument.			selector := ((tokens at: 1) , ':') asSymbol.			source := selector , ' ' , argument , '	' , (comment value: (tokens at: 4)) , '	self optionAt: ' , (tokens at: 1) printString , ' put: ' , argument.			removals remove: selector ifAbsent: [ ].			(class sourceCodeFor: selector) = source				ifFalse: [ class compile: source classified: #'options-generated' ] ].		' generate events '.		matcher := '\{\{(UIAPIPluginEvent|UIAPIPluginDatepickerEvent)\|' asRegex.		matcher matchesIn: string do: [ :match |			tokens := string copyFrom: (matcher subEnd: 1) first to: string size.			dictionary := Dictionary new.			((tokens readStream upToAll: '}}') findTokens: $|) do: [ :each |				dictionary					at: (each copyUpTo: $=) withBlanksCondensed asLowercase					put: (each copyAfter: $=) withBlanksCondensed ].			((dictionary includesKey: 'event') and: [ dictionary includesKey: 'description' ]) ifTrue: [				selector := ((((dictionary at: 'event') beginsWith: 'on')					ifTrue: [ dictionary at: 'event' ]					ifFalse: [ 'on' , (dictionary at: 'event') capitalized ]) , ':') asSymbol.				source := selector , ' anObject	' , (comment value: (dictionary at: 'description')) , '	self optionAt: ' , (dictionary at: 'event') printString , ' put: anObject asFunction'.				removals remove: selector ifAbsent: [ ].				(class sourceCodeFor: selector) = source					ifFalse: [ class compile: source classified: #'events-generated' ] ] ].					' generate methods '.		matcher := '\{\{UIAPIPluginMethod\|' asRegex.		matcher matchesIn: string do: [ :match |			tokens := string copyFrom: (matcher subEnd: 1) first to: string size.			Transcript show: class name; show: (tokens readStream upToAll: '}}'); cr; cr ].		' remove methods not present anymore '.		removals do: [ :rselector | class removeMethod: rselector ] ].	' open changes '.	model changes open"! !

!JQWidget class categoriesForMethods!
generate!private! !
!

