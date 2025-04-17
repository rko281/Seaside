"Filed out from Dolphin Smalltalk"!

WAContentElement subclass: #WALinkElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WALinkElement guid: (GUID fromString: '{e6ab0903-3c0c-4c20-8494-6f5b8e183a12}')!

WALinkElement comment: 'Defines either a link or style sheet rules. If it has children then it defines style sheet rules, else it defines a link.= if link =This element defines a link. Unlike A, it may only appear in the HEAD section of a document, although it may appear any number of times. Although LINK has no content, it conveys relationship information that may be rendered by user agents in a variety of ways (e.g., a tool-bar with a drop-down menu of links).= style sheet rules =The STYLE element allows authors to put style sheet rules in the head of the document. HTML permits any number of STYLE elements in the HEAD section of a document.User agents that don''t support style sheets, or don''t support the specific style sheet language used by a STYLE element, must hide the contents of the STYLE element. It is an error to render the content as part of the document''s text. Some style sheet languages support syntax for hiding the content from non-conforming user agents.'!

!WALinkElement categoriesForClass!Document-Elements! !

!WALinkElement methodsFor!

add: anElement	super add: anElement.	attributes isNil ifFalse: [		attributes removeKey: 'rel' ifAbsent: [ "ignore" ] ]!

addAll	self addMedia: 'all'!

addAural	self addMedia: 'aural'!

addBraille	self addMedia: 'braille'!

addHandheld	self addMedia: 'handheld'!

addMedia: aString	self attributes addMedia: aString!

addPrint	self addMedia: 'print'!

addProjection	self addMedia: 'projection'!

addScreen	self addMedia: 'screen'!

addTeletype	self addMedia: 'tty'!

addTelevision	self addMedia: 'tv'!

beAlternate	"Gives alternate representations of the current document."	self relationship: 'alternate'!

beAlternateStylesheet	self relationship: 'alternate stylesheet'!

beAppendix	self relationship: 'appendix'!

beArchives	"Provides a link to a collection of records, documents, or other materials of historical interest."	self relationship: 'archives'!

beAtom	self type: 'application/atom+xml' seasideMimeType!

beAuthor	"Gives a link to the current document's author."	self relationship: 'author'!

beBookmark	self relationship: 'bookmark'!

beCanonical	"Used to specify a canonical URL."	self relationship: 'canonical'!

beChapter	self relationship: 'chapter'!

beCopyright	self relationship: 'copyright'!

beCss	self type: WAMimeType textCss!

beFirst	"Indicates that the current document is a part of a series, and that the first document in the series is the referenced document."	self relationship: 'first'!

beFontDefinition	self relationship: 'fontdef'!

beGlossary	self relationship: 'glossary'!

beHelp	self relationship: 'help'!

beIndex	self relationship: 'index'!

beLast	self relationship: 'last'!

beMicrosummary	"http://wiki.mozilla.org/Microsummaries"	self relationship: 'microsummary'!

beNext	"Indicates that the current document is a part of a series, and that the next document in the series is the referenced document."	self relationship: 'next'!

bePrevious	"Indicates that the current document is a part of a series, and that the previous document in the series is the referenced document."	self relationship: 'previous'!

beRss	self type: 'application/rss+xml' seasideMimeType!

beSearch	"Gives a link to a resource that can be used to search through the current document and its related pages. "	self relationship: 'search'!

beSection	self relationship: 'section'!

beShortcutIcon	self relationship: 'shortcut icon'!

beStart	"Refers to the first document in a collection of documents. This link type tells search engines which document is considered by the author to be the starting point of the collection."	self relationship: 'start'!

beStylesheet	"Imports a stylesheet."	self relationship: 'stylesheet'!

beSubsection	self relationship: 'subsection'!

beTableOfContents	self relationship: 'contents'!

beTop	self relationship: 'top'!

beUp	"Provides a link to a document giving the context for the current document."	self relationship: 'up'!

isClosed	^ children isEmptyOrNil!

media: aString	"This attribute specifies the intended destination medium for style information. It may be a single media descriptor or a comma-separated list. The default value for this attribute is 'screen'."	self attributeAt: 'media' put: aString!

relationship: aString	"This attribute describes the relationship from the current document to the anchor specified by the href attribute. The value of this attribute is a space-separated list of link types."		self attributes at: 'rel' append: aString!

reverse: aString	"This attribute is used to describe a reverse link from the anchor specified by the href attribute to the current document. The value of this attribute is a space-separated list of link types."	self		greaseDeprecatedApi: 'WALinkElement>>reverse:'		details: 'Use the rel attribute. https://www.geeksforgeeks.org/what-are-the-html-tags-that-deprecated-in-html5/'.		self attributeAt: 'rev' put: aString!

tag	^ children isEmptyOrNil		ifTrue: [ 'link' ]		ifFalse: [ 'style' ]!

title: aString	self attributeAt: 'title' put: aString!

url: aString	self attributeAt: 'href' put: aString! !

!WALinkElement categoriesForMethods!
add:!accessing/children!public! !
addAll!media!public! !
addAural!media!public! !
addBraille!media!public! !
addHandheld!media!public! !
addMedia:!media!public! !
addPrint!media!public! !
addProjection!media!public! !
addScreen!media!public! !
addTeletype!media!public! !
addTelevision!media!public! !
beAlternate!public!relationship! !
beAlternateStylesheet!public!relationship! !
beAppendix!public!relationship! !
beArchives!public!relationship! !
beAtom!public!type! !
beAuthor!public!relationship! !
beBookmark!public!relationship! !
beCanonical!public!relationship! !
beChapter!public!relationship! !
beCopyright!public!relationship! !
beCss!public!type! !
beFirst!public!relationship! !
beFontDefinition!public!relationship! !
beGlossary!public!relationship! !
beHelp!public!relationship! !
beIndex!public!relationship! !
beLast!public!relationship! !
beMicrosummary!public!relationship! !
beNext!public!relationship! !
bePrevious!public!relationship! !
beRss!public!type! !
beSearch!public!relationship! !
beSection!public!relationship! !
beShortcutIcon!public!relationship! !
beStart!public!relationship! !
beStylesheet!public!relationship! !
beSubsection!public!relationship! !
beTableOfContents!public!relationship! !
beTop!public!relationship! !
beUp!public!relationship! !
isClosed!public!testing! !
media:!attributes!public! !
relationship:!attributes!public! !
reverse:!attributes!public! !
tag!accessing!public! !
title:!attributes!public! !
url:!attributes!public! !
!

