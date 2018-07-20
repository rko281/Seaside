"Filed out from Dolphin Smalltalk 7"!

WARoot subclass: #WAHtmlRoot
	instanceVariableNames: 'docType htmlAttrs headAttrs bodyAttrs headElements title styles scripts'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHtmlRoot guid: (GUID fromString: '{244b46d5-a067-4b87-a70b-d6aedc784aec}')!
WAHtmlRoot comment: 'A WAHtmlRoot is the root element of an HTML Document (<html>).Instance Variables	bodyAttrs:		<WAHtmlAttributes>	context:			<WARenderContext>	docType:		<String>	headAttrs:		<WAHtmlAttributes>	headElements:	<OrderedCollection<WAHtmlElement>>	htmlAttrs:		<WAHtmlAttributes>	scripts:			<Set<String>>	styles:			<Set<String>>	title:			<String>bodyAttrs	- the attributes of the <body> elementcontext	- the context used to render the contents of the <body> elementdocType	- the document typeheadAttrs	- the attributes of the <head> elementheadElements	- the elements inside the <head> sectionhtmlAttrs	- the attributes of the <html> elementscripts	- contains the strings returned by WAPresenter >> #scriptstyles	- contains the strings returned by WAPresenter >> #styletitle	- the title of the HTML document, the contents of the <title> element'!
!WAHtmlRoot categoriesForClass!Seaside-Core-Document! !
!WAHtmlRoot methodsFor!

add: aHtmlElement	"Add a HTML head element to the receiver."	^ headElements add: aHtmlElement!

addScript: aString	"Include the script aString into the receiver."	scripts ifNil: [ scripts := Set new ].	scripts add: aString!

addStyle: aString	"Include the style-sheet aString into the receiver."	styles ifNil: [ styles := Set new ].	styles add: aString!

addXmlNamespaces	self htmlAttributes		at: 'xmlns' put: 'http://www.w3.org/1999/xhtml';		at: 'xml:lang' put: 'en';		at: 'lang' put: 'en'!

base	^ self add: (WABaseElement root: self)!

beHtml5	self docType: '<!!DOCTYPE html>'!

beXhtml10Strict	self meta contentScriptType: WAMimeType textJavascript.	self addXmlNamespaces.	self docType: '<!!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'!

beXhtml10Transitional	self meta contentScriptType: WAMimeType textJavascript.	self addXmlNamespaces.	self docType: '<!!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">'!

beXhtml11	self meta contentScriptType: WAMimeType textJavascript.	self addXmlNamespaces.	self docType: '<!!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">'!

bodyAttributes	^ bodyAttrs ifNil: [ bodyAttrs := WAHtmlAttributes new ]!

closeOn: aDocument	aDocument scriptGenerator		close: self on: aDocument.	self writeFootOn: aDocument!

contentBase: urlString	self base url: urlString!

docType	^ docType!

docType: aString	"Set the document-type of the receiver. The table at http://www.w3.org/TR/2002/NOTE-xhtml-media-types-20020430/ summarizes the recommendation to content authors for labeling their XHTML documents:Media type				XHTML 1.0 (HTML compatible)	XHTML 1.0 (other)	XHTML Basic / 1.1	XHTML+MathMLtext/html				MAY							SHOULD NOT			SHOULD NOT			SHOULD NOTapplication/xhtml+xml	SHOULD							SHOULD				SHOULD				SHOULDapplication/xml			MAY							MAY				MAY				MAYtext/xml					MAY							MAY				MAY				MAY"	docType := aString!

headAttributes	^ headAttrs ifNil: [ headAttrs := WAHtmlAttributes new ]!

headElements	^ headElements!

headElements: anOrderedCollection	headElements := anOrderedCollection!

htmlAttributes	^ htmlAttrs ifNil: [ htmlAttrs := WAHtmlAttributes new ]!

if	^ WAConditionalComment root: self!

initialize	super initialize.	headElements := OrderedCollection new.	title := docType := String new!

javascript	^ self script beJavascript; yourself!

link	^ self add: (WALinkElement root: self)!

meta	^ self add: (WAMetaElement root: self)!

openOn: aDocument	aDocument scriptGenerator 		open: self on: aDocument.	self writeHeadOn: aDocument!

redirectTo: aLocationString delay: aNumber	self meta redirectAfter: aNumber to: aLocationString!

revealedIf	^ WARevealedConditionalComment root: self!

script	^ self add: (WAScriptElement root: self)!

stylesheet	^ self link beStylesheet; beCss; yourself!

title	^ title!

title: aString	title := aString!

writeElementsOn: aDocument	aDocument openTag: 'title'; nextPutAll: title; closeTag: 'title'.	headElements do: [ :each | aDocument print: each ]!

writeFootOn: aDocument	aDocument closeTag: 'body'.	aDocument closeTag: 'html'!

writeHeadOn: aDocument	aDocument nextPutAll: docType.	aDocument openTag: 'html' attributes: htmlAttrs.	aDocument openTag: 'head' attributes: headAttrs.	self writeElementsOn: aDocument.	self writeStylesOn: aDocument.	self writeScriptsOn: aDocument.	aDocument closeTag: 'head'.	aDocument openTag: 'body' attributes: bodyAttrs!

writeScriptsOn: aDocument	scripts ifNil: [ ^ self ].	scripts do: [ :each |		aDocument print: ((WAScriptElement root: self)			beJavascript;			document: each;			yourself) ]!

writeStylesOn: aDocument	styles ifNil: [ ^ self ].	styles do: [ :each |		aDocument print: ((WALinkElement root: self)			beStylesheet; beCss;			document: each;			yourself) ]! !
!WAHtmlRoot categoriesFor: #add:!adding!public! !
!WAHtmlRoot categoriesFor: #addScript:!adding!public! !
!WAHtmlRoot categoriesFor: #addStyle:!adding!public! !
!WAHtmlRoot categoriesFor: #addXmlNamespaces!private! !
!WAHtmlRoot categoriesFor: #base!elements!public! !
!WAHtmlRoot categoriesFor: #beHtml5!doctype!public! !
!WAHtmlRoot categoriesFor: #beXhtml10Strict!doctype!public! !
!WAHtmlRoot categoriesFor: #beXhtml10Transitional!doctype!public! !
!WAHtmlRoot categoriesFor: #beXhtml11!doctype!public! !
!WAHtmlRoot categoriesFor: #bodyAttributes!accessing/attributes!public! !
!WAHtmlRoot categoriesFor: #closeOn:!public!writing! !
!WAHtmlRoot categoriesFor: #contentBase:!convenience!public! !
!WAHtmlRoot categoriesFor: #docType!doctype!public! !
!WAHtmlRoot categoriesFor: #docType:!doctype!public! !
!WAHtmlRoot categoriesFor: #headAttributes!accessing/attributes!public! !
!WAHtmlRoot categoriesFor: #headElements!accessing!public! !
!WAHtmlRoot categoriesFor: #headElements:!accessing!public! !
!WAHtmlRoot categoriesFor: #htmlAttributes!accessing/attributes!public! !
!WAHtmlRoot categoriesFor: #if!elements!public! !
!WAHtmlRoot categoriesFor: #initialize!initialization!public! !
!WAHtmlRoot categoriesFor: #javascript!elements!public! !
!WAHtmlRoot categoriesFor: #link!elements!public! !
!WAHtmlRoot categoriesFor: #meta!elements!public! !
!WAHtmlRoot categoriesFor: #openOn:!public!writing! !
!WAHtmlRoot categoriesFor: #redirectTo:delay:!convenience!public! !
!WAHtmlRoot categoriesFor: #revealedIf!elements!public! !
!WAHtmlRoot categoriesFor: #script!elements!public! !
!WAHtmlRoot categoriesFor: #stylesheet!elements!public! !
!WAHtmlRoot categoriesFor: #title!accessing/properties!public! !
!WAHtmlRoot categoriesFor: #title:!accessing/properties!public! !
!WAHtmlRoot categoriesFor: #writeElementsOn:!public!writing! !
!WAHtmlRoot categoriesFor: #writeFootOn:!public!writing! !
!WAHtmlRoot categoriesFor: #writeHeadOn:!public!writing! !
!WAHtmlRoot categoriesFor: #writeScriptsOn:!public!writing! !
!WAHtmlRoot categoriesFor: #writeStylesOn:!public!writing! !

