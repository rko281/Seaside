"Filed out from Dolphin Smalltalk 7"!

WATool subclass: #WABrowser
	instanceVariableNames: 'contents model message findClassName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WABrowser guid: (GUID fromString: '{d4609dd8-c5eb-426b-a1aa-df32888c272d}')!
WABrowser comment: ''!
!WABrowser categoriesForClass!Unclassified! !
!WABrowser methodsFor!

accept
	| save |
	message := nil.
	save := contents.
	model contents: contents notifying: self.
	contents := save!

columns
	^ #( systemCategory class messageCategory message )!

contents
	^contents!

contents: aString 
	"the browser sends CRLF as line ending but Squeak wants CR"
	contents := GRPlatform current convertToSmalltalkNewlines: aString!

findClass
	self model setClass: (Smalltalk at: self findClassName asSymbol) selector: nil!

findClassName
	findClassName ifNil: [findClassName := ''].
	^findClassName!

findClassName: anObject
	findClassName := anObject!

initialize
	super initialize.
	self model: Browser new!

initialRequest: aRequest
	| theClass |
	super initialRequest: aRequest.
	aRequest fields at: 'class' ifPresent: [ :className |
		Smalltalk at: className asSymbol ifPresent: [ :class |
			theClass := (aRequest fields includesKey: 'meta')
				ifTrue: [ class class ]
				ifFalse: [ class ].
			self model setClass: theClass selector: nil.
			aRequest fields at: 'method' ifPresent: [ :selector |
				self model setClass: theClass selector: selector asSymbol ] ] ]!

model
	^model!

model: aBrowserModel
	model notNil ifTrue: [ model removeDependent: self ].
	aBrowserModel notNil ifTrue: [ aBrowserModel addDependent: self ].
	model := aBrowserModel.
	contents := model contents!

notify: aString at: location in: sourceStream
	message := aString allButLast: 3!

renderChooserOn: html 
	html form with: 
			[(html label)
				for: html nextId;
				with: 'Find class:'.
			(html textInput)
				id: html lastId;
				value: self findClassName;
				callback: [:value | self findClassName: value trimBlanks];
				script: (html jQuery this autocomplete 
							sourceCallback: [:term | self model classNamesFor: term asString trimBlanks]);
				onChange: 'submit()'.
			html submitButton
				callback: [ self findClass ];
				value: 'Find class' ]!

renderColumnsOn: html
	html div class: 'columns'; with: [
		self columns do: [ :each |
			html form class: 'column'; with: [
				| array |
				array := self model perform: (each , 'List') asSymbol.
				html div: [
					html select
						size: 10;
						list: array;
						onChange: 'submit()';
						selected: (array
							at: (self model perform: (each , 'ListIndex') asSymbol)
							ifAbsent: [ nil ]);
						callback: [ :item |
							self model
								perform: (each , 'ListIndex:') asSymbol
								with: (array indexOf: item) ] ] ] ] ] !

renderContentOn: html
	self
		renderChooserOn: html;
		renderColumnsOn: html;
		renderModeButtonsOn: html;
		renderMessageOn: html;
		renderContentPaneOn: html!

renderContentPaneOn: html
	html form class: 'definition'; with: [
	 	html div: [
			html textArea on: #contents of: self.
			html break.
			html submitButton on: #accept of: self ] ]!

renderMessageOn: html
	message isNil
		ifFalse: [ html strong: message ]!

renderModeButtonsOn: html
	html form class: 'mode'; with: [
		html div: [
			html submitButton
				callback: [ self showInstance ];
				value: 'instance'.
			html submitButton
				callback: [ self showHelp ];
				value: 'help'.
			html submitButton
				callback: [ self showClass ];
				value: 'class' ] ]!

select!

selectFrom: aPos to: anotherPos!

selectionInterval
	^ 1 to: 1!

showClass
	self model indicateClassMessages!

showHelp
	self model plusButtonHit!

showInstance
	self model indicateInstanceMessages!

states
	^ Array with: model!

style
	^ 'form, div.columns {
	padding: 2px;
	margin: 0;
}

form.column {
	padding: 0;
	width: 25%;
	float: left;
}
form.column select {
	width: 100%;
	border: 1px solid #aaa;
}

form.mode {
	clear: both;
}

form.definition textarea {
	width: 100%;
	height: 200px;
	border: 1px solid #aaa;
}'!

text
	^ Text fromString: ''!

update: aSymbol
	contents := model contents!

updateRoot: anHtmlRoot
	"This method allows you customize the <head> section of an HTML document. The API is very similar to the 'Canvas API' for rendering in the <body> section (where you 'draw' in #renderContentOn:).

	anHtmlRoot is an instance of WAHtmlRoot

	Whenever you override this method don't forget to send super"
	"super updateRoot: anHtmlRoot." "Removed intentinally, maybe is a good idea to have a basicUpdateRoot:"

	self script isNil ifFalse: [ anHtmlRoot addScript: self script ].
	self style isNil ifFalse: [ anHtmlRoot addStyle: self style ]!

updateUrl: aUrl
	super updateUrl: aUrl.
	self model selectedClass isNil ifFalse: [
		aUrl addField: 'class' value: self model selectedClass fullName.
		self model metaClassIndicated
			ifTrue: [ aUrl addField: 'meta' ] ].
	self model selectedMessageName isNil 
		ifFalse: [ aUrl addField: 'method' value: self model selectedMessageName ]! !
!WABrowser categoriesFor: #accept!actions!public! !
!WABrowser categoriesFor: #columns!accessing!public! !
!WABrowser categoriesFor: #contents!accessing!public! !
!WABrowser categoriesFor: #contents:!accessing!public! !
!WABrowser categoriesFor: #findClass!public! !
!WABrowser categoriesFor: #findClassName!accessing!private! !
!WABrowser categoriesFor: #findClassName:!accessing!private! !
!WABrowser categoriesFor: #initialize!initialization!public! !
!WABrowser categoriesFor: #initialRequest:!processing!public! !
!WABrowser categoriesFor: #model!accessing!public! !
!WABrowser categoriesFor: #model:!accessing!public! !
!WABrowser categoriesFor: #notify:at:in:!notifying!public! !
!WABrowser categoriesFor: #renderChooserOn:!public!rendering! !
!WABrowser categoriesFor: #renderColumnsOn:!public!rendering! !
!WABrowser categoriesFor: #renderContentOn:!public!rendering! !
!WABrowser categoriesFor: #renderContentPaneOn:!public!rendering! !
!WABrowser categoriesFor: #renderMessageOn:!public!rendering! !
!WABrowser categoriesFor: #renderModeButtonsOn:!public!rendering! !
!WABrowser categoriesFor: #select!notifying!public! !
!WABrowser categoriesFor: #selectFrom:to:!actions!public! !
!WABrowser categoriesFor: #selectionInterval!accessing!public! !
!WABrowser categoriesFor: #showClass!actions!public! !
!WABrowser categoriesFor: #showHelp!actions!public! !
!WABrowser categoriesFor: #showInstance!actions!public! !
!WABrowser categoriesFor: #states!accessing!public! !
!WABrowser categoriesFor: #style!public!rendering! !
!WABrowser categoriesFor: #text!accessing!public! !
!WABrowser categoriesFor: #update:!notifying!public! !
!WABrowser categoriesFor: #updateRoot:!public! !
!WABrowser categoriesFor: #updateUrl:!processing!public! !

!WABrowser class methodsFor!

applicationName
	"needed for RSRSS"
	^'tools/classbrowser'!

canBeRoot
	^ true!

description
	^ 'Smalltalk Code Browser'!

fullOnClass: aClass
	^ self fullOnClass: aClass selector: nil!

fullOnClass: aClass selector: aSelector
	^ self new model: (Browser new setClass: aClass selector: aSelector)!

initialize
	WAAdmin register: self asApplicationAt: self applicationName! !
!WABrowser class categoriesFor: #applicationName!accessing!public! !
!WABrowser class categoriesFor: #canBeRoot!accessing!public! !
!WABrowser class categoriesFor: #description!accessing!public! !
!WABrowser class categoriesFor: #fullOnClass:!instance creation!public! !
!WABrowser class categoriesFor: #fullOnClass:selector:!instance creation!public! !
!WABrowser class categoriesFor: #initialize!initialization!public! !

