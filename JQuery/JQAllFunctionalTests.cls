"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #JQAllFunctionalTests
	instanceVariableNames: 'default tests contents'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQAllFunctionalTests guid: (GUID fromString: '{47ae3594-17e7-48b7-87a4-9bccac3c36a5}')!
JQAllFunctionalTests comment: ''!
!JQAllFunctionalTests categoriesForClass!JQuery-Tests-Core-Functional! !
!JQAllFunctionalTests methodsFor!

children	^ Array with: contents!

default	^ JQWelcomeFunctionalTest new!

heading	^ self class description!

initialize	super initialize.	tests := self tests.	contents := default := self default!

initialRequest: aRequest	super initialRequest: aRequest.	tests do: [ :category |		category value do: [ :entry | | requestPath |			requestPath := aRequest url path.			requestPath isEmpty				ifFalse: [					(self pathFor: entry value title) = requestPath last						ifTrue: [ contents := entry value ] ] ] ]!

menu	^ #(('http://www.seaside.st/' 'Seaside') ('http://jquery.com/' 'jQuery') ('http://api.jquery.com/' 'Documentation'))!

pathFor: aString	^ (aString select: [ :each | each isAlphaNumeric ]) asLowercase!

renderBodyOn: html	html div class: 'body'; with: [ 		self renderTestsOn: html.		self renderMainOn: html.		html div style: 'clear: both' ]!

renderBottomOn: html	html div class: 'bottom'!

renderBrowserOn: html	self renderReadmeOn: html.	self renderDemoOn: html.	self renderSmalltalkOn: html.	self renderJavascriptOn: html!

renderContentOn: html	html div id: 'canvas'; with: [		html div id: 'header'; with: [ 			self renderHeaderOn: html ].		html div id: 'content'; with: [			self renderTopOn: html.			self renderHeadOn: html.			self renderBodyOn: html.			self renderBottomOn: html ] ].	self renderTimeoutOn: html!

renderDemoOn: html	html heading level: 4; with: 'Demo'.	html div class: 'demo'; with: contents!

renderHeaderOn: html	self renderLogoOn: html.	self renderMenuOn: html!

renderHeadOn: html	html div class: 'head'; with: [		html heading level: 2; with: [			html anchor				callback: [ contents := default ];				with: self heading ].		html paragraph: self slogan ]!

renderJavascriptOn: html	| context |	html heading level: 4; with: 'Source'.	html div class: 'code'; with: [		context := html context copy.		context document: (WAPrettyPrintedDocument context: html context).		context document scriptGenerator: html document scriptGenerator class new.		contents renderWithContext: context.		context document scriptGenerator closeOn: context document ]!

renderLogoOn: html	html heading level: 1; class: 'logo'; with: [		html anchor			title: self title;			callback: [ contents := default ];			with: [ html span: self title ] ]!

renderMainOn: html	html div class: 'main'; with: [		html heading			level: 3;			with: contents title.		contents selectors isEmpty			ifTrue: [ html render: contents ]			ifFalse: [ self renderBrowserOn: html ] ]!

renderMenuOn: html	html div id: 'menu'; with: [		html div class: 'left'.		html unorderedList: [			self menu do: [ :pair |				html listItem: [					html anchor						url: pair first;						with: pair last ] ] ].		html div class: 'right' ]!

renderReadmeOn: html	contents renderReadmeOn: html!

renderSmalltalkOn: html 	| source |	html heading level: 4; with: 'Smalltalk'.	contents selectors do: [ :selector | 		source := ((contents class whichClassIncludesSelector: selector) 			sourceCodeAt: selector) greaseString readStream.		html div class: 'code'; with: [			html span				class: 'signature';				with: [ html text: contents class name; text: '>>'; text: source nextLine ].			html break.			[ source atEnd ] whileFalse: [ 				[ source peek = Character tab ] whileTrue: [ 					html space; space; space.					source next ].				html render: source nextLine; break ] ] ]		separatedBy: [ html break ]!

renderTestsOn: html	html div class: 'tests'; with: [		tests do: [ :titleAndItems |			html heading level: 3; with: titleAndItems key.			html unorderedList: [				titleAndItems value do: [ :titleAndClass |					html listItem						class: 'active' if: contents = titleAndClass value;						with: [ 							html anchor								useBaseUrl;								callback: [ contents := titleAndClass value ];								extraPath: (self pathFor: titleAndClass value title);								with: titleAndClass key ] ] ] ] ]!

renderTimeoutOn: html	"Warn the user if an error occurs during an AJAX action (mostly this is a session timeout) and refreshes the current page (causing the default error/expiry handling to kick in)."	html document addLoadScript: (html jQuery ajaxSetup		onError: (html javascript			alert: 'The session has expired.';			refresh))				"An alternative implementation is to trigger a request now and then so that the session never expires:"	"html document addLoadScript: (html jQuery ajax		callback: [ 'the session is active' ]; 		interval: 60 seconds)"!

renderTopOn: html	html div class: 'top'!

slogan	^ 'Say it in Smalltalk, Do it with jQuery'!

states	^ Array with: self!

tests	^ Array 		with: 'Ajax' -> (Array 			with: 'Ajax' -> JQAjaxFunctionalTest new			with: 'Form' -> JQFormFunctionalTest new			with: 'Request' -> JQRequestFunctionalTest new			with: 'JSON' -> JQJsonFunctionalTest new			with: 'Counter' -> JQCounterFunctionalTest new			with: 'Repeating' -> JQRepeatingFunctionalTest new)		with: 'Other' -> (Array			with: 'Effect' -> JQEffectsFunctionalTest new			with: 'Animate' -> JQAnimateFunctionalTest new)!

title	^ 'jQuery for Seaside'!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.	anHtmlRoot title: self title!

updateUrl: aUrl	super updateUrl: aUrl.	aUrl addToPath: (self pathFor: contents title)!

url	^ 'http://www.jquery.com/'! !
!JQAllFunctionalTests categoriesFor: #children!hooks!public! !
!JQAllFunctionalTests categoriesFor: #default!configuration!public! !
!JQAllFunctionalTests categoriesFor: #heading!configuration!public! !
!JQAllFunctionalTests categoriesFor: #initialize!initialization!public! !
!JQAllFunctionalTests categoriesFor: #initialRequest:!hooks!public! !
!JQAllFunctionalTests categoriesFor: #menu!configuration!public! !
!JQAllFunctionalTests categoriesFor: #pathFor:!private! !
!JQAllFunctionalTests categoriesFor: #renderBodyOn:!public!rendering! !
!JQAllFunctionalTests categoriesFor: #renderBottomOn:!public!rendering! !
!JQAllFunctionalTests categoriesFor: #renderBrowserOn:!public!rendering/browser! !
!JQAllFunctionalTests categoriesFor: #renderContentOn:!public!rendering! !
!JQAllFunctionalTests categoriesFor: #renderDemoOn:!public!rendering/browser! !
!JQAllFunctionalTests categoriesFor: #renderHeaderOn:!public!rendering! !
!JQAllFunctionalTests categoriesFor: #renderHeadOn:!public!rendering! !
!JQAllFunctionalTests categoriesFor: #renderJavascriptOn:!public!rendering/browser! !
!JQAllFunctionalTests categoriesFor: #renderLogoOn:!public!rendering! !
!JQAllFunctionalTests categoriesFor: #renderMainOn:!public!rendering! !
!JQAllFunctionalTests categoriesFor: #renderMenuOn:!public!rendering! !
!JQAllFunctionalTests categoriesFor: #renderReadmeOn:!public!rendering/browser! !
!JQAllFunctionalTests categoriesFor: #renderSmalltalkOn:!public!rendering/browser! !
!JQAllFunctionalTests categoriesFor: #renderTestsOn:!public!rendering! !
!JQAllFunctionalTests categoriesFor: #renderTimeoutOn:!public!rendering! !
!JQAllFunctionalTests categoriesFor: #renderTopOn:!public!rendering! !
!JQAllFunctionalTests categoriesFor: #slogan!configuration!public! !
!JQAllFunctionalTests categoriesFor: #states!hooks!public! !
!JQAllFunctionalTests categoriesFor: #tests!configuration!public! !
!JQAllFunctionalTests categoriesFor: #title!configuration!public! !
!JQAllFunctionalTests categoriesFor: #updateRoot:!public!updating! !
!JQAllFunctionalTests categoriesFor: #updateUrl:!public!updating! !
!JQAllFunctionalTests categoriesFor: #url!configuration!public! !

!JQAllFunctionalTests class methodsFor!

canBeRoot	^ true!

description	^ 'jQuery Functional Test Suite'!

initialize	| application |	application := WAAdmin register: self asApplicationAt: 'javascript/jquery'.	application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator.	application 		addLibrary: JQDeploymentLibrary;		addLibrary: JQAllFunctionalTestsLibrary.	application := WAAdmin register: WAAllFunctionalTests asApplicationAt: 'tests/functional-ajaxified'.	application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator.	application		preferenceAt: #sessionClass put: WAExpirySession;		addLibrary: JQDeploymentLibrary;		addLibrary: JQAjaxifierLibrary! !
!JQAllFunctionalTests class categoriesFor: #canBeRoot!public!testing! !
!JQAllFunctionalTests class categoriesFor: #description!accessing!public! !
!JQAllFunctionalTests class categoriesFor: #initialize!initialization!public! !

