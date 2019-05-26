"Filed out from Dolphin Smalltalk 7"!

JQFunctionalTest subclass: #JQRequestFunctionalTest
	instanceVariableNames: 'logger'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQRequestFunctionalTest guid: (GUID fromString: '{6665cf93-7350-4a4f-a748-dac38fef21d5}')!
JQRequestFunctionalTest comment: ''!
!JQRequestFunctionalTest categoriesForClass!JQuery-Tests-Core-Functional! !
!JQRequestFunctionalTest methodsFor!

initialize	super initialize.	logger := OrderedCollection new!

loggerOn: aScript	aScript << ((aScript jQuery: #logger) contents remove).	aScript << (logger		inject: (aScript jQuery: #logger)		into: [ :result :each | result append: [ :html | html text: each; break ] ]).	logger := OrderedCollection new!

renderButton: aString ajax: anAjax on: html	html button		bePush;		onClick: (anAjax			serializeForm;			onSuccess: ((html jQuery: #logger)				append: 'Request Success');			script: [ :s | self loggerOn: s ]);		with: aString!

renderContentOn: html	html form: [ 		self renderText: 'Field 1' on: html.		self renderText: 'Field 2' on: html.		html div 			id: 'logger';			class: 'code'.		html paragraph: [			self renderButton: 'Get' ajax: html jQuery get on: html.			self renderButton: 'Script' ajax: html jQuery getScript on: html.			self renderButton: 'Post' ajax: html jQuery post on: html ] ]!

renderText: aString on: html	| id |	html fieldSet: [		html label			for: (id := html nextId);			with: aString.		html span: [			html textInput				id: id;				value: aString;				callback: [ :value | logger addLast: aString , ': ' , value greaseString ] ] ]!

selectors	^ #(renderContentOn: renderButton:ajax:on:)!

style	^ 'fieldset { border: none; margin: 1em 0; padding: 0; }fieldset label, fieldset span, fieldset p { display: block; float: left; width: 50%; margin: 0; padding: 0; }'!

title	^ 'Ajax Requests'! !
!JQRequestFunctionalTest categoriesFor: #initialize!initialization!public! !
!JQRequestFunctionalTest categoriesFor: #loggerOn:!private! !
!JQRequestFunctionalTest categoriesFor: #renderButton:ajax:on:!public!rendering! !
!JQRequestFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQRequestFunctionalTest categoriesFor: #renderText:on:!public!rendering! !
!JQRequestFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQRequestFunctionalTest categoriesFor: #style!hooks!public! !
!JQRequestFunctionalTest categoriesFor: #title!accessing!public! !

