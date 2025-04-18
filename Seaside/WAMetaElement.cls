﻿"Filed out from Dolphin Smalltalk"!

WAHtmlElement subclass: #WAMetaElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMetaElement guid: (GUID fromString: '{c7a47258-859a-4165-b494-31d07d46ebbb}')!

WAMetaElement comment: 'The META element can be used to identify properties of a document (e.g., author, expiration date, a list of key words, etc.) and assign values to those properties. This specification does not define a normative set of properties.Each META element specifies a property/value pair. The name attribute identifies the property and the content attribute specifies the property''s value.For example, the following declaration sets a value for the Author property:<META name="Author" content="Dave Raggett">The lang attribute can be used with META to specify the language for the value of the content attribute. This enables speech synthesizers to apply language dependent pronunciation rules.In this example, the author''s name is declared to be French:htm meta	name: ''Author''; language: ''fr''; content: ''Arnaud Le Hors''	Note. The META element is a generic mechanism for specifying meta data. However, some HTML elements and attributes already handle certain pieces of meta data and may be used by authors instead of META to specify those pieces: the TITLE element, the ADDRESS element, the INS and DEL elements, the title attribute, and the cite attribute.Note. When a property specified by a META element takes a value that is a URI, some authors prefer to specify the meta data via the LINK element. Thus, the following meta data declaration:html meta      name: ''DC.identifier'';      content: ''http://www.ietf.org/rfc/rfc1866.txt''might also be written:html link         relationship: ''DC.identifier'';         type: ''text/plain'';         url: ''http://www.ietf.org/rfc/rfc1866.txt''The http-equiv attribute can be used in place of the name attribute and has a special significance when documents are retrieved via the Hypertext Transfer Protocol (HTTP). HTTP servers may use the property name specified by the http-equiv attribute to create an [RFC822]-style header in the HTTP response. Please see the HTTP specification ([RFC2616]) for details on valid HTTP headers.The following sample META declaration:htttp meta         responseHeaderName: ''Expires'';         content: ''Tue, 20 Aug 1996 14:25:27 GMT''will result in the HTTP header:Expires: Tue, 20 Aug 1996 14:25:27 GMTThis can be used by caches to determine when to fetch a fresh copy of the associated document.Note. Some user agents support the use of META to refresh the current page after a specified number of seconds, with the option of replacing it by a different URI. Authors should not use this technique to forward users to different pages, as this makes the page inaccessible to some users. Instead, automatic page forwarding should be done using server-side redirects.html meta         redirectAfter: 5 to: ''http://www.google.com/'''!

!WAMetaElement categoriesForClass!Document-Elements! !

!WAMetaElement methodsFor!

beLeftToRight	self textDirection: 'LTR'!

beRightToLeft	self textDirection: 'RTL'!

charset: aString	"The charset attribute specifies the character encoding used by the document. This is a character encoding declaration. If the attribute is present in an XML document, its value must be an ASCII case-insensitive match for the string 'UTF-8' (and the document is therefore forced to use UTF-8 as its encoding).The charset attribute on the meta element has no effect in XML documents, and is only allowed in order to facilitate migration to and from XHTML.There must not be more than one meta element with a charset attribute per document."	self attributes at: 'charset' put: aString!

content: aString	self attributeAt: 'content' put: aString!

contentScriptType: aMimeTypeOrString	self responseHeaderName: 'Content-Script-Type'.	self content: aMimeTypeOrString!

contentType: aMimeTypeOrString	self responseHeaderName: 'Content-Type'.	self content: aMimeTypeOrString!

language: aString	self attributeAt: 'lang' put: aString!

name: aString	self attributeAt: 'name' put: aString!

redirectAfter: seconds to: aString 	self responseHeaderName: 'refresh'.	self content: seconds greaseString , ';URL=' , aString!

responseHeaderName: aString	self attributeAt: 'http-equiv' put: aString!

scheme: aString	self		greaseDeprecatedApi: 'WAMetaElement>>scheme:'		details: 'Use only one scheme per field, or make the scheme declaration part of the value. https://www.geeksforgeeks.org/what-are-the-html-tags-that-deprecated-in-html5/'.		self attributeAt: 'scheme' put: aString!

tag	^ 'meta'!

textDirection: aString	self attributeAt: 'dir' put: aString!

turboPrefetch: aString	"Prefetching links is enabled by default since Turbo v8, 	but you can disable it by adding this meta tag to your page with value false."	self name: 'turbo-prefetch'.	self content: aString! !

!WAMetaElement categoriesForMethods!
beLeftToRight!convenience!public! !
beRightToLeft!convenience!public! !
charset:!attributes!public! !
content:!attributes!public! !
contentScriptType:!convenience!public! !
contentType:!convenience!public! !
language:!attributes!public! !
name:!attributes!public! !
redirectAfter:to:!convenience!public! !
responseHeaderName:!attributes!public! !
scheme:!attributes!public! !
tag!accessing!public! !
textDirection:!attributes!public! !
turboPrefetch:!attributes!public! !
!

