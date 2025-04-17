"Filed out from Dolphin Smalltalk"!

WARoot subclass: #WAHtmlRoot
	instanceVariableNames: 'docType htmlAttrs headAttrs bodyAttrs headElements title styles scripts'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHtmlRoot guid: (GUID fromString: '{46616d90-46e5-459e-a905-0754692b6384}')!

WAHtmlRoot comment: 'A WAHtmlRoot is the root element of an HTML Document (<html>).Instance Variables	bodyAttrs:		<WAHtmlAttributes>	context:			<WARenderContext>	docType:		<String>	headAttrs:		<WAHtmlAttributes>	headElements:	<OrderedCollection<WAHtmlElement>>	htmlAttrs:		<WAHtmlAttributes>	scripts:			<Set<String>>	styles:			<Set<String>>	title:			<String>bodyAttrs	- the attributes of the <body> elementcontext	- the context used to render the contents of the <body> elementdocType	- the document typeheadAttrs	- the attributes of the <head> elementheadElements	- the elements inside the <head> sectionhtmlAttrs	- the attributes of the <html> elementscripts	- contains the strings returned by WAPresenter >> #scriptstyles	- contains the strings returned by WAPresenter >> #styletitle	- the title of the HTML document, the contents of the <title> element'!

!WAHtmlRoot categoriesForClass!Document! !

!WAHtmlRoot methodsFor!

add: aHtmlElement	"Add a HTML head element to the receiver."	^ headElements add: aHtmlElement!

addScript: aString	"Include the script aString into the receiver."	scripts ifNil: [ scripts := Set new ].	scripts add: aString!

addStyle: aString	"Include the style-sheet aString into the receiver."	styles ifNil: [ styles := Set new ].	styles add: aString!

addXmlNamespaces	self htmlAttributes		at: 'xmlns' put: 'http://www.w3.org/1999/xhtml';		at: 'xml:lang' put: 'en';		at: 'lang' put: 'en'!

base	^ self add: (WABaseElement root: self)!

beHtml5	self docType: '<!!DOCTYPE html>'!

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

style	^ self add: (WAStyleElement root: self)!

style: aString	self style with: aString!

stylesheet	^ self link beStylesheet; beCss; yourself!

title	^ title!

title: aString	title := aString!

writeElementsOn: aDocument	aDocument openTag: 'title'; nextPutAll: title; closeTag: 'title'.	headElements do: [ :each | aDocument print: each ]!

writeFootOn: aDocument	aDocument closeTag: 'body'.	aDocument closeTag: 'html'!

writeHeadOn: aDocument	aDocument nextPutAll: docType.	aDocument openTag: 'html' attributes: htmlAttrs.	aDocument openTag: 'head' attributes: headAttrs.	self writeElementsOn: aDocument.	self writeStylesOn: aDocument.	self writeScriptsOn: aDocument.	aDocument closeTag: 'head'.	aDocument openTag: 'body' attributes: bodyAttrs!

writeScriptsOn: aDocument	scripts ifNil: [ ^ self ].	scripts do: [ :each |		aDocument print: ((WAScriptElement root: self)			beJavascript;			document: each;			yourself) ]!

writeStylesOn: aDocument	styles ifNil: [ ^ self ].	styles do: [ :each |		aDocument print: ((WALinkElement root: self)			beStylesheet; beCss;			document: each;			yourself) ]! !

!WAHtmlRoot categoriesForMethods!
add:!adding!public! !
addScript:!adding!public! !
addStyle:!adding!public! !
addXmlNamespaces!private! !
base!elements!public! !
beHtml5!doctype!public! !
bodyAttributes!accessing/attributes!public! !
closeOn:!public!writing! !
contentBase:!convenience!public! !
docType!doctype!public! !
docType:!doctype!public! !
headAttributes!accessing/attributes!public! !
headElements!accessing!public! !
headElements:!accessing!public! !
htmlAttributes!accessing/attributes!public! !
if!elements!public! !
initialize!initialization!public! !
javascript!elements!public! !
link!elements!public! !
meta!elements!public! !
openOn:!public!writing! !
redirectTo:delay:!convenience!public! !
revealedIf!elements!public! !
script!elements!public! !
style!elements!public! !
style:!convenience!public! !
stylesheet!elements!public! !
title!accessing/properties!public! !
title:!accessing/properties!public! !
writeElementsOn:!public!writing! !
writeFootOn:!public!writing! !
writeHeadOn:!public!writing! !
writeScriptsOn:!public!writing! !
writeStylesOn:!public!writing! !
!

