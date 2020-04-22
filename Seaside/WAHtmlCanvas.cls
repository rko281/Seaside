"Filed out from Dolphin Smalltalk 7"!

WATagCanvas subclass: #WAHtmlCanvas
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHtmlCanvas guid: (GUID fromString: '{1b970896-e851-4209-b9dd-a4127048c7c9}')!
WAHtmlCanvas comment: 'I''m a canvas for building HTML.'!
!WAHtmlCanvas categoriesForClass!Seaside-Canvas-Canvas! !
!WAHtmlCanvas methodsFor!

abbreviated	"Defines an abbreviation, such as 'M.', 'Inc.', 'et al.', 'etc.'"	^ self tag: 'abbr'!

abbreviated: aBlock	self abbreviated with: aBlock!

acronym	"Defines an acronym, such as 'GmbH', 'NATO', and 'F.B.I.'"	^ self tag: 'acronym'!

acronym: aBlock	self acronym with: aBlock!

address	"Defines an address element."	^ self tag: 'address'!

address: aBlock	self address with: aBlock!

anchor	"Defines an anchor."	^ self brush: WAAnchorTag new!

anchor: aBlock	self anchor with: aBlock!

article	"The article element represents a section of a page that consists of a composition that forms an independent part of a document, page, or site. This could be a forum post, a magazine or newspaper article, a Web log entry, a user-submitted comment, or any other independent item of content.	An article element is 'independent' in that its contents could stand alone, for example in syndication. However, the element is still associated with its ancestors; for instance, contact information that applies to a parent body element still covers the article as well.	When article elements are nested, the inner article elements represent articles that are in principle related to the contents of the outer article. For instance, a Web log entry on a site that accepts user-submitted comments could represent the comments as article elements nested within the article element for the Web log entry.	Author information associated with an article element (q.v. the address element) does not apply to nested article elements.	Each article element potentially has a heading."	^ self tag: 'article'!

article: aBlock	self article with: aBlock!

aside	"The aside element represents a section of a page that consists of content that is tangentially related to the content around the aside element, and which could be considered separate from that content. Such sections are often represented as sidebars in printed typography.	When used as an inline-level content container, the element represents a paragraph.	Each aside element potentially has a heading. "	^ self tag: 'aside'!

aside: aBlock	self aside with: aBlock!

audio	"An audio element represents a sound or audio stream."	^ self brush: WAAudioTag new!

audio: aBlock	self audio with: aBlock!

basicForm	^ self brush: WABasicFormTag new!

basicForm: aBlock	self basicForm with: aBlock!

bidirectional	"The bdi element represents a span of text that is to be isolated from its surroundings for the purposes of bidirectional text formatting."	^ self tag: 'bdi'!

bidirectional: aBlock	self bidirectional with: aBlock!

bidirectionalOverride	"The bdo element represents explicit text directionality formatting control for its children. It allows authors to override the Unicode bidirectional algorithm by explicitly specifying a direction override. [BIDI]Authors must specify the dir attribute on this element, with the value ltr to specify a left-to-right override and with the value rtl to specify a right-to-left override."	^ self tag: 'bdo'!

bidirectionalOverride: aBlock	self bidirectionalOverride with: aBlock!

big	"Defines big text."	^ self tag: 'big'!

big: aBlock	self big with: aBlock!

blockquote	"Defines a long quotation."	^ self tag: 'blockquote'!

blockquote: aBlock	self blockquote with: aBlock!

break	"Inserts a single line break."	^ self brush: WABreakTag new!

button	^ self brush: WAButtonTag new!

button: anObject	^ self button with: anObject!

cancelButton	^ self brush: WACancelButtonTag new!

cancelButton: anObject	^ self cancelButton with: anObject!

canvas	^ self brush: WACanvasTag new!

canvas: aBlock	self canvas with: aBlock!

checkbox	^ self brush: WACheckboxTag new!

citation	"Defines a citation."	^ self tag: 'cite'!

citation: aBlock	self citation with: aBlock!

code	"Defines computer code text."	^ self tag: 'code'!

code: aBlock	self code with: aBlock!

colorInput	^ self brush: WAColorInputTag new!

command	^ self brush: WACommandTag new	!

command: aBlock	self command with: aBlock!

datalist	^ self brush: WADatalistTag new	!

datalist: aBlock	self datalist with: aBlock!

dateInput	^ self brush: WADateInput new!

dateInput5	^ self brush: WADateInputTag new!

dateTimeInput	^ self brush: WADateTimeInputTag new!

dateTimeLocalInput	^ self brush: WADateTimeLocalInputTag new!

definition	"Defines a definition term."	^ self tag: 'dfn'!

definition: aBlock	self definition with: aBlock!

definitionData	"Defines a definition description."	^ self tag: 'dd'!

definitionData: aBlock	self definitionData with: aBlock!

definitionList	"Defines a definition list."	^ self tag: 'dl'!

definitionList: aBlock	self definitionList with: aBlock!

definitionTerm	"Defines a definition term."	^ self tag: 'dt'!

definitionTerm: aBlock	self definitionTerm with: aBlock!

deleted	"Defines deleted text."	^ self brush: (WAEditTag tag: 'del')!

deleted: aBlock	self deleted with: aBlock!

details	^ self brush: WADetailsTag new	!

details: aBlock	self details with: aBlock!

div	"Defines a section in a document."	^ self tag: 'div'!

div: aBlock	self div with: aBlock!

emailInput	^ self brush: WAEmailInputTag new!

embed	"The embed element represents an integration point for an external (typically non-HTML) application or interactive content."	^ self brush: WAEmbedTag new!

embed: aBlock	self embed with: aBlock!

emphasis	"Defines emphasized text."	^ self tag: 'em'!

emphasis: aBlock	self emphasis with: aBlock!

encodeCharacter: aCharacter 	self html: '&#' , aCharacter greaseInteger greaseString , ';'!

fieldSet	"Defines a fieldset."	^ self brush: WAFieldSetTag new!

fieldSet: aBlock	self fieldSet with: aBlock!

figure	"no known browser support		The figure element represents a paragraph consisting of embedded content and a caption.The first embedded content element child of the figure element, if any, is the paragraph's content.The first legend element child of the element, if any, represents the caption of the embedded content. If there is no child legend element, then there is no caption. 	e.g.:	html figure: [		html legend: 'Credit: Media Inc., 2007'.		html image url: 'smith.jpg'; altText: 'Photo: J. Smith' ]"	^ self tag: 'figure'!

figure: aBlock	self figure with: aBlock!

figureCaption	"The figcaption element represents a caption or legend for the rest of the contents of the figcaption element's parent figure element, if any."	^ self tag: 'figcaption'!

figureCaption: aBlock	self figureCaption with: aBlock!

fileUpload	^ self brush: WAFileUploadTag new!

footer	"The footer element represents the footer for the section it applies to. A footer typically contains information about its section such as who wrote it, links to related documents, copyright data, and the like.	footer elements must not contain any footer, header, h1, h2, h3, h4, h5, or h6 elements, or any of the sectioning elements (such as section), as descendants.	When used as an inline-level content container, the element represents a paragraph.	Contact information for the section given in a footer should be marked up using the address element."	^ self tag: 'footer'!

footer: aBlock	self footer with: aBlock!

form	^ self brush: WAFormTag new!

form: aBlock	self form with: aBlock!

header	"The header element represents the header of a section. Headers may contain more than just the section's heading \u2014 for example it would be reasonable for the header to include version history information.	header elements must not contain any header elements, footer elements, or any sectioning elements (such as section) as descendants.	header elements must have at least one h1, h2, h3, h4, h5, or h6 element as a descendant. "	^ self tag: 'header'!

header: aBlock	self header with: aBlock!

heading	"Defines header 1 to header 6."	^ self brush: WAHeadingTag new!

heading: aBlock	self heading with: aBlock!

headingGroup	"The hgroup element represents the heading of a section. The element is used to group a set of h1-h6 elements when the heading has multiple levels, such as subheadings, alternative titles, or taglines.	For the purposes of document summaries, outlines, and the like, the text of hgroup elements is defined to be the text of the highest ranked h1-h6 element descendant of the hgroup element, if there are any such elements, and the first such element if there are multiple elements with that rank. If there are no such elements, then the text of the hgroup element is the empty string.	The rank of an hgroup element is the rank of the highest-ranked h1-h6 element descendant of the hgroup element, if there are any such elements, or otherwise the same as for an h1 element (the highest rank)."	^ self tag: 'hgroup'!

headingGroup: aBlock	self headingGroup with: aBlock!

hiddenInput	^ self brush: WAHiddenInputTag new!

horizontalRule	"Defines a horizontal rule."	^ self brush: WAHorizontalRuleTag new!

html: aString 	"Emit aString unescaped onto the target document."	self flush.	self document nextPutAll: aString greaseString!

iframe	^ self brush: WAIframeTag new!

image	"Defines an image."	^ self brush: WAImageTag new!

image: aBlock	self image with: aBlock!

imageButton	^ self brush: WAImageButtonTag new!

imageButton: anObject	^ self imageButton with: anObject!

inserted	"Defines inserted text."	^ self brush: (WAEditTag tag: 'ins')!

inserted: aBlock	self inserted with: aBlock!

keyboard	"Defines keyboard text."	^ self tag: 'kbd'!

keyboard: aBlock	self keyboard with: aBlock!

keyGenerator	^ self brush: WAKeyGeneratorTag new!

label	"Defines a label for a form control."	^ self brush: WALabelTag new!

label: aBlock	self label with: aBlock!

legend	"Defines a title in a fieldset."	^ self tag: 'legend'!

legend: aBlock	self legend with: aBlock!

lineBreakOpportunity	"The wbr element represents a line break opportunity."	^ self brush: WAOptionalBreakTag new!

lineBreakOpportunity: aBlock	self lineBreakOpportunity with: aBlock!

listItem	"Defines a list item."	^ self tag: 'li'!

listItem: aBlock	self listItem with: aBlock!

main	"The HTML <main> element represents the dominant content of the <body> of a document. The main content area consists of content that is directly related to or expands upon the central topic of a document, or the central functionality of an application."	^ self tag: 'main'!

main: aBlock	self main with: aBlock!

map	"Defines an anchor to be used around an image."	^ self brush: WAImageMapTag new!

map: aBlock	self map with: aBlock!

marked	"no known browser support		The mark element represents a run of text in one document marked or highlighted for reference purposes.In the following snippet, a paragraph of text refers to a specific part of a code fragment.<p>The highlighted part below is where the error lies:</p><pre><code>var i: Integer;begin   i := <mark>1.1</mark>;end.</code></pre>Another example of the mark element is highlighting parts of a document that are matching some search string. If someone looked at a document, and the server knew that the user was searching for the word 'kitten', then the server might return the document with one paragraph modified as follows:<p>I also have some <mark>kitten</mark>s who are visiting methese days. They're really cute. I think they like my garden!! Maybe Ishould adopt a <mark>kitten</mark>.</p>"	^ self tag: 'mark'!

marked: aBlock	self marked with: aBlock!

menu	^ self brush: WAMenuTag new	!

menu: aBlock	self menu with: aBlock!

meter	^ self brush: WAMeterTag new!

meter: aBlock	self meter with: aBlock!

monthInput	^ self brush: WAMonthInputTag new!

multiSelect	^ self brush: WAMultiSelectTag new!

multiSelect: aBlock	^ self multiSelect with: aBlock!

navigation	"The nav element represents a section of a page that links to other pages or to parts within the page: a section with navigation links.	When used as an inline-level content container, the element represents a paragraph.	Each nav element potentially has a heading."	^ self tag: 'nav'!

navigation: aBlock	self navigation with: aBlock!

numberInput	^ self brush: WANumberInputTag new!

object	"Defines an embedded object."	^ self brush: WAObjectTag new!

object: aBlock	self object with: aBlock!

option	^ self brush: WAOptionTag new!

option: aBlock	^ self option with: aBlock!

optionGroup	^ self brush: WAOptionGroupTag new!

optionGroup: aBlock	^ self optionGroup with: aBlock!

orderedList	"Defines an ordered list."	^ self brush: WAOrderedListTag new!

orderedList: aBlock	self orderedList with: aBlock!

output	^ self brush: WAOutputTag new!

output: aBlock	^ self output with: aBlock!

paragraph	"Defines a paragraph."	^ self tag: 'p'!

paragraph: aBlock	self paragraph with: aBlock!

parameter	"Defines a parameter for an object."	^ self brush: WAParameterTag new!

parameter: aBlock	self parameter!

passwordInput	^ self brush: WAPasswordInputTag new!

passwordInput: anObject	^ self passwordInput with: anObject!

popupAnchor	^ self brush: WAPopupAnchorTag new!

popupAnchor: aBlock	self popupAnchor with: aBlock!

preformatted	"Defines preformatted text."	^ self tag: 'pre'!

preformatted: aBlock	self preformatted with: aBlock!

progress	^ self brush: WAProgressTag new!

progress: aBlock	self progress with: aBlock!

quote	"Defines a short quotation."	^ self tag: 'q'!

quote: aBlock	self quote with: aBlock!

radioButton	^ self brush: WARadioButtonTag new!

radioButton: aBlock	^ self radioButton with: aBlock!

radioGroup	^ WARadioGroup canvas: self!

radioGroup: aBlock	^ aBlock value: self radioGroup!

rangeInput	^ self brush: WARangeInputTag new!

ruby	^ self tag: 'ruby'!

ruby: aBlock	self ruby with: aBlock!

rubyParentheses	^ self tag: 'rp'!

rubyParentheses: aBlock	self rubyParentheses with: aBlock!

rubyText	^ self tag: 'rt'!

rubyText: aBlock	self rubyText with: aBlock!

sample	"Defines sample computer code."	^ self tag: 'samp'!

sample: aBlock	self sample with: aBlock!

script	"Defines a script."	^ self brush: WAScriptTag new!

script: aStringOrJSObject	self script with: aStringOrJSObject!

searchInput	^ self brush: WASearchInputTag new!

section	"The section element represents a generic document or application section. A section, in this context, is a thematic grouping of content, typically with a header, possibly with a footer."	^ self tag: 'section'!

section: aBlock	self section with: aBlock!

select	^ self brush: WASelectTag new!

select: aBlock	^ self select with: aBlock!

small	"Defines small text."	^ self tag: 'small'!

small: aBlock	self small with: aBlock!

source	^ self brush: WASourceTag new!

source: aBlock	self source with: aBlock!

spaceEntity	"The HTML entity representing a space. To be subclassed as needed."	^ '&nbsp;'!

span	"Defines a section in a document."	^ self tag: 'span'!

span: aBlock	self span with: aBlock!

strong	"Defines strong text."	^ self tag: 'strong'!

strong: aBlock	self strong with: aBlock!

submitButton	^ self brush: WASubmitButtonTag new!

submitButton: anObject	^ self submitButton with: anObject!

subscript	"Defines subscripted text."	^ self tag: 'sub'!

subscript: aBlock	self subscript with: aBlock!

summary	"The summary element represents a summary, caption, or legend for the rest of the contents of the summary element's parent details element, if any."	^ self tag: 'summary'!

summary: aBlock	self summary with: aBlock!

superscript	"Defines superscripted text."	^ self tag: 'sup'!

superscript: aBlock	self superscript with: aBlock!

table	"Defines a table."	^ self brush: WATableTag new!

table: aBlock	self table with: aBlock!

tableBody	"Defines a table body."	^ self tag: 'tbody'!

tableBody: aBlock	self tableBody with: aBlock!

tableCaption	"Defines a table caption."	^ self tag: 'caption'!

tableCaption: aBlock	self tableCaption with: aBlock!

tableColumn	"Defines attributes for table columns."	^ self brush: WATableColumnTag new!

tableColumn: aBlock	self tableColumn with: aBlock!

tableColumnGroup	"Defines groups of table columns."	^ self brush: WATableColumnGroupTag new!

tableColumnGroup: aBlock	self tableColumnGroup with: aBlock!

tableData	"Defines a table cell."	^ self brush: WATableDataTag new!

tableData: aBlock	self tableData with: aBlock!

tableFoot	"Defines a table footer."	^ self tag: 'tfoot'!

tableFoot: aBlock	^ self tableFoot with: aBlock!

tableHead	"Defines a table header."	^ self tag: 'thead'!

tableHead: aBlock	self tableHead with: aBlock!

tableHeading	"Defines a table header."	^ self brush: WATableHeadingTag new!

tableHeading: aBlock	self tableHeading with: aBlock!

tableRow	"Defines a table row."	^ self tag: 'tr'!

tableRow: aBlock	self tableRow with: aBlock!

telephoneInput	^ self brush: WATelephoneInputTag new!

teletype	"Defines teletype text."	^ self tag: 'tt'!

teletype: aBlock	self teletype with: aBlock!

textArea	^ self brush: WATextAreaTag new!

textArea: anObject	^ self textArea with: anObject!

textInput	^ self brush: WATextInputTag new!

textInput: anObject	^ self textInput with: anObject!

time	^ self brush: WATimeTag new!

time: aBlock	self time with: aBlock!

timeInput	^ self brush: WATimeInput new!

timeInput5	^ self brush: WATimeInputTag new!

track	^ self brush: WATrackTag new!

track: aBlock	self track with: aBlock!

unorderedList	"Defines an unordered list."	^ self brush: WAUnorderedListTag new!

unorderedList: aBlock	self unorderedList with: aBlock!

urlInput	^ self brush: WAUrlInputTag new!

variable	"Defines a variable."	^ self tag: 'var'!

variable: aBlock	self variable with: aBlock!

video	^ self brush: WAVideoTag new!

video: aBlock	self video with: aBlock!

weekInput	^ self brush: WAWeekInputTag new!

withLineBreaksAndUrls: aString	| stream |	aString ifNil: [ ^ self ].	stream := aString readStream.	[ stream atEnd ] whileFalse: [ 		self withUrls: stream nextLine.		stream atEnd			ifFalse: [ self break ] ]!

withUrls: aString 	| stream url |	stream := aString readStream.	[ stream atEnd ] whileFalse: 		[ self text: (stream greaseUpToAll: 'http://').		stream atEnd ifFalse: 			[ url := 'http://' , (stream upTo: Character space).			self anchor				url: url;				with: url.			self text: ' ' ] ]! !
!WAHtmlCanvas categoriesFor: #abbreviated!public!tags/block! !
!WAHtmlCanvas categoriesFor: #abbreviated:!public!tags/block! !
!WAHtmlCanvas categoriesFor: #acronym!public!tags/block! !
!WAHtmlCanvas categoriesFor: #acronym:!public!tags/block! !
!WAHtmlCanvas categoriesFor: #address!public!tags/block! !
!WAHtmlCanvas categoriesFor: #address:!public!tags/block! !
!WAHtmlCanvas categoriesFor: #anchor!public!tags/input! !
!WAHtmlCanvas categoriesFor: #anchor:!public!tags/input! !
!WAHtmlCanvas categoriesFor: #article!public!tags! !
!WAHtmlCanvas categoriesFor: #article:!public!tags! !
!WAHtmlCanvas categoriesFor: #aside!public!tags! !
!WAHtmlCanvas categoriesFor: #aside:!public!tags! !
!WAHtmlCanvas categoriesFor: #audio!public!tags! !
!WAHtmlCanvas categoriesFor: #audio:!public!tags! !
!WAHtmlCanvas categoriesFor: #basicForm!public!tags/input! !
!WAHtmlCanvas categoriesFor: #basicForm:!public!tags/input! !
!WAHtmlCanvas categoriesFor: #bidirectional!public!tags! !
!WAHtmlCanvas categoriesFor: #bidirectional:!public!tags! !
!WAHtmlCanvas categoriesFor: #bidirectionalOverride!public!tags! !
!WAHtmlCanvas categoriesFor: #bidirectionalOverride:!public!tags! !
!WAHtmlCanvas categoriesFor: #big!public!tags/format! !
!WAHtmlCanvas categoriesFor: #big:!public!tags/format! !
!WAHtmlCanvas categoriesFor: #blockquote!public!tags/block! !
!WAHtmlCanvas categoriesFor: #blockquote:!public!tags/block! !
!WAHtmlCanvas categoriesFor: #break!public!tags! !
!WAHtmlCanvas categoriesFor: #button!form/buttons!public! !
!WAHtmlCanvas categoriesFor: #button:!form/buttons!public! !
!WAHtmlCanvas categoriesFor: #cancelButton!form/buttons!public! !
!WAHtmlCanvas categoriesFor: #cancelButton:!form/buttons!public! !
!WAHtmlCanvas categoriesFor: #canvas!public!tags! !
!WAHtmlCanvas categoriesFor: #canvas:!public!tags! !
!WAHtmlCanvas categoriesFor: #checkbox!form/elements!public! !
!WAHtmlCanvas categoriesFor: #citation!public!tags/block! !
!WAHtmlCanvas categoriesFor: #citation:!public!tags/block! !
!WAHtmlCanvas categoriesFor: #code!public!tags/output! !
!WAHtmlCanvas categoriesFor: #code:!public!tags/output! !
!WAHtmlCanvas categoriesFor: #colorInput!public!tags/input! !
!WAHtmlCanvas categoriesFor: #command!public!tags! !
!WAHtmlCanvas categoriesFor: #command:!public!tags! !
!WAHtmlCanvas categoriesFor: #datalist!public!tags! !
!WAHtmlCanvas categoriesFor: #datalist:!public!tags! !
!WAHtmlCanvas categoriesFor: #dateInput!form/elements!public! !
!WAHtmlCanvas categoriesFor: #dateInput5!public!tags/input! !
!WAHtmlCanvas categoriesFor: #dateTimeInput!public!tags/input! !
!WAHtmlCanvas categoriesFor: #dateTimeLocalInput!public!tags/input! !
!WAHtmlCanvas categoriesFor: #definition!public!tags/output! !
!WAHtmlCanvas categoriesFor: #definition:!public!tags/output! !
!WAHtmlCanvas categoriesFor: #definitionData!public!tags/lists! !
!WAHtmlCanvas categoriesFor: #definitionData:!public!tags/lists! !
!WAHtmlCanvas categoriesFor: #definitionList!public!tags/lists! !
!WAHtmlCanvas categoriesFor: #definitionList:!public!tags/lists! !
!WAHtmlCanvas categoriesFor: #definitionTerm!public!tags/lists! !
!WAHtmlCanvas categoriesFor: #definitionTerm:!public!tags/lists! !
!WAHtmlCanvas categoriesFor: #deleted!public!tags/block! !
!WAHtmlCanvas categoriesFor: #deleted:!public!tags/block! !
!WAHtmlCanvas categoriesFor: #details!public!tags! !
!WAHtmlCanvas categoriesFor: #details:!public!tags! !
!WAHtmlCanvas categoriesFor: #div!public!tags/styles! !
!WAHtmlCanvas categoriesFor: #div:!public!tags/styles! !
!WAHtmlCanvas categoriesFor: #emailInput!public!tags/input! !
!WAHtmlCanvas categoriesFor: #embed!public!tags! !
!WAHtmlCanvas categoriesFor: #embed:!public!tags! !
!WAHtmlCanvas categoriesFor: #emphasis!public!tags/format! !
!WAHtmlCanvas categoriesFor: #emphasis:!public!tags/format! !
!WAHtmlCanvas categoriesFor: #encodeCharacter:!convenience!public! !
!WAHtmlCanvas categoriesFor: #fieldSet!public!tags/input! !
!WAHtmlCanvas categoriesFor: #fieldSet:!public!tags/input! !
!WAHtmlCanvas categoriesFor: #figure!public!tags! !
!WAHtmlCanvas categoriesFor: #figure:!public!tags! !
!WAHtmlCanvas categoriesFor: #figureCaption!public!tags! !
!WAHtmlCanvas categoriesFor: #figureCaption:!public!tags! !
!WAHtmlCanvas categoriesFor: #fileUpload!form/elements!public! !
!WAHtmlCanvas categoriesFor: #footer!public!tags! !
!WAHtmlCanvas categoriesFor: #footer:!public!tags! !
!WAHtmlCanvas categoriesFor: #form!form!public! !
!WAHtmlCanvas categoriesFor: #form:!public!tags/input! !
!WAHtmlCanvas categoriesFor: #header!public!tags! !
!WAHtmlCanvas categoriesFor: #header:!public!tags! !
!WAHtmlCanvas categoriesFor: #heading!public!tags! !
!WAHtmlCanvas categoriesFor: #heading:!public!tags! !
!WAHtmlCanvas categoriesFor: #headingGroup!public!tags! !
!WAHtmlCanvas categoriesFor: #headingGroup:!public!tags! !
!WAHtmlCanvas categoriesFor: #hiddenInput!form/elements!public! !
!WAHtmlCanvas categoriesFor: #horizontalRule!public!tags! !
!WAHtmlCanvas categoriesFor: #html:!public! !
!WAHtmlCanvas categoriesFor: #iframe!public!tags/transitional! !
!WAHtmlCanvas categoriesFor: #image!public!tags/images! !
!WAHtmlCanvas categoriesFor: #image:!public!tags/images! !
!WAHtmlCanvas categoriesFor: #imageButton!form/buttons!public! !
!WAHtmlCanvas categoriesFor: #imageButton:!form/buttons!public! !
!WAHtmlCanvas categoriesFor: #inserted!public!tags/block! !
!WAHtmlCanvas categoriesFor: #inserted:!public!tags/block! !
!WAHtmlCanvas categoriesFor: #keyboard!public!tags/output! !
!WAHtmlCanvas categoriesFor: #keyboard:!public!tags/output! !
!WAHtmlCanvas categoriesFor: #keyGenerator!public!tags! !
!WAHtmlCanvas categoriesFor: #label!public!tags/input! !
!WAHtmlCanvas categoriesFor: #label:!public!tags/input! !
!WAHtmlCanvas categoriesFor: #legend!public!tags/input! !
!WAHtmlCanvas categoriesFor: #legend:!public!tags/input! !
!WAHtmlCanvas categoriesFor: #lineBreakOpportunity!public!tags! !
!WAHtmlCanvas categoriesFor: #lineBreakOpportunity:!public!tags! !
!WAHtmlCanvas categoriesFor: #listItem!public!tags/lists! !
!WAHtmlCanvas categoriesFor: #listItem:!public!tags/lists! !
!WAHtmlCanvas categoriesFor: #main!public!tags! !
!WAHtmlCanvas categoriesFor: #main:!public!tags! !
!WAHtmlCanvas categoriesFor: #map!public!tags/images! !
!WAHtmlCanvas categoriesFor: #map:!public!tags/images! !
!WAHtmlCanvas categoriesFor: #marked!public!tags! !
!WAHtmlCanvas categoriesFor: #marked:!public!tags! !
!WAHtmlCanvas categoriesFor: #menu!public!tags! !
!WAHtmlCanvas categoriesFor: #menu:!public!tags! !
!WAHtmlCanvas categoriesFor: #meter!public!tags! !
!WAHtmlCanvas categoriesFor: #meter:!public!tags! !
!WAHtmlCanvas categoriesFor: #monthInput!public!tags/input! !
!WAHtmlCanvas categoriesFor: #multiSelect!form/elements!public! !
!WAHtmlCanvas categoriesFor: #multiSelect:!form/elements!public! !
!WAHtmlCanvas categoriesFor: #navigation!public!tags! !
!WAHtmlCanvas categoriesFor: #navigation:!public!tags! !
!WAHtmlCanvas categoriesFor: #numberInput!public!tags/input! !
!WAHtmlCanvas categoriesFor: #object!public!tags/program! !
!WAHtmlCanvas categoriesFor: #object:!public!tags/program! !
!WAHtmlCanvas categoriesFor: #option!form/elements!public! !
!WAHtmlCanvas categoriesFor: #option:!form/elements!public! !
!WAHtmlCanvas categoriesFor: #optionGroup!form/elements!public! !
!WAHtmlCanvas categoriesFor: #optionGroup:!form/elements!public! !
!WAHtmlCanvas categoriesFor: #orderedList!public!tags/lists! !
!WAHtmlCanvas categoriesFor: #orderedList:!public!tags/lists! !
!WAHtmlCanvas categoriesFor: #output!public!tags! !
!WAHtmlCanvas categoriesFor: #output:!public!tags! !
!WAHtmlCanvas categoriesFor: #paragraph!public!tags! !
!WAHtmlCanvas categoriesFor: #paragraph:!public!tags! !
!WAHtmlCanvas categoriesFor: #parameter!public!tags/program! !
!WAHtmlCanvas categoriesFor: #parameter:!public!tags/program! !
!WAHtmlCanvas categoriesFor: #passwordInput!form/elements!public! !
!WAHtmlCanvas categoriesFor: #passwordInput:!form/elements!public! !
!WAHtmlCanvas categoriesFor: #popupAnchor!public!tags/input! !
!WAHtmlCanvas categoriesFor: #popupAnchor:!public!tags/input! !
!WAHtmlCanvas categoriesFor: #preformatted!public!tags/output! !
!WAHtmlCanvas categoriesFor: #preformatted:!public!tags/output! !
!WAHtmlCanvas categoriesFor: #progress!public!tags! !
!WAHtmlCanvas categoriesFor: #progress:!public!tags! !
!WAHtmlCanvas categoriesFor: #quote!public!tags/block! !
!WAHtmlCanvas categoriesFor: #quote:!public!tags/block! !
!WAHtmlCanvas categoriesFor: #radioButton!form/elements!public! !
!WAHtmlCanvas categoriesFor: #radioButton:!form/elements!public! !
!WAHtmlCanvas categoriesFor: #radioGroup!form/elements!public! !
!WAHtmlCanvas categoriesFor: #radioGroup:!form/elements!public! !
!WAHtmlCanvas categoriesFor: #rangeInput!public!tags/input! !
!WAHtmlCanvas categoriesFor: #ruby!public!tags/ruby! !
!WAHtmlCanvas categoriesFor: #ruby:!public!tags/ruby! !
!WAHtmlCanvas categoriesFor: #rubyParentheses!public!tags/ruby! !
!WAHtmlCanvas categoriesFor: #rubyParentheses:!public!tags/ruby! !
!WAHtmlCanvas categoriesFor: #rubyText!public!tags/ruby! !
!WAHtmlCanvas categoriesFor: #rubyText:!public!tags/ruby! !
!WAHtmlCanvas categoriesFor: #sample!public!tags/output! !
!WAHtmlCanvas categoriesFor: #sample:!public!tags/output! !
!WAHtmlCanvas categoriesFor: #script!public!tags/program! !
!WAHtmlCanvas categoriesFor: #script:!public!tags/program! !
!WAHtmlCanvas categoriesFor: #searchInput!public!tags/input! !
!WAHtmlCanvas categoriesFor: #section!public!tags! !
!WAHtmlCanvas categoriesFor: #section:!public!tags! !
!WAHtmlCanvas categoriesFor: #select!form/elements!public! !
!WAHtmlCanvas categoriesFor: #select:!form/elements!public! !
!WAHtmlCanvas categoriesFor: #small!public!tags/format! !
!WAHtmlCanvas categoriesFor: #small:!public!tags/format! !
!WAHtmlCanvas categoriesFor: #source!public!tags! !
!WAHtmlCanvas categoriesFor: #source:!public!tags! !
!WAHtmlCanvas categoriesFor: #spaceEntity!private! !
!WAHtmlCanvas categoriesFor: #span!public!tags/styles! !
!WAHtmlCanvas categoriesFor: #span:!public!tags/styles! !
!WAHtmlCanvas categoriesFor: #strong!public!tags/format! !
!WAHtmlCanvas categoriesFor: #strong:!public!tags/format! !
!WAHtmlCanvas categoriesFor: #submitButton!form/buttons!public! !
!WAHtmlCanvas categoriesFor: #submitButton:!form/buttons!public! !
!WAHtmlCanvas categoriesFor: #subscript!public!tags/format! !
!WAHtmlCanvas categoriesFor: #subscript:!public!tags/format! !
!WAHtmlCanvas categoriesFor: #summary!public!tags! !
!WAHtmlCanvas categoriesFor: #summary:!public!tags! !
!WAHtmlCanvas categoriesFor: #superscript!public!tags/format! !
!WAHtmlCanvas categoriesFor: #superscript:!public!tags/format! !
!WAHtmlCanvas categoriesFor: #table!public!tags/tables! !
!WAHtmlCanvas categoriesFor: #table:!public!tags/tables! !
!WAHtmlCanvas categoriesFor: #tableBody!public!tags/tables! !
!WAHtmlCanvas categoriesFor: #tableBody:!public!tags/tables! !
!WAHtmlCanvas categoriesFor: #tableCaption!public!tags/tables! !
!WAHtmlCanvas categoriesFor: #tableCaption:!public!tags/tables! !
!WAHtmlCanvas categoriesFor: #tableColumn!public!tags/tables! !
!WAHtmlCanvas categoriesFor: #tableColumn:!public!tags/tables! !
!WAHtmlCanvas categoriesFor: #tableColumnGroup!public!tags/tables! !
!WAHtmlCanvas categoriesFor: #tableColumnGroup:!public!tags/tables! !
!WAHtmlCanvas categoriesFor: #tableData!public!tags/tables! !
!WAHtmlCanvas categoriesFor: #tableData:!public!tags/tables! !
!WAHtmlCanvas categoriesFor: #tableFoot!public!tags/tables! !
!WAHtmlCanvas categoriesFor: #tableFoot:!public!tags/tables! !
!WAHtmlCanvas categoriesFor: #tableHead!public!tags/tables! !
!WAHtmlCanvas categoriesFor: #tableHead:!public!tags/tables! !
!WAHtmlCanvas categoriesFor: #tableHeading!public!tags/tables! !
!WAHtmlCanvas categoriesFor: #tableHeading:!public!tags/tables! !
!WAHtmlCanvas categoriesFor: #tableRow!public!tags/tables! !
!WAHtmlCanvas categoriesFor: #tableRow:!public!tags/tables! !
!WAHtmlCanvas categoriesFor: #telephoneInput!public!tags/input! !
!WAHtmlCanvas categoriesFor: #teletype!public!tags/output! !
!WAHtmlCanvas categoriesFor: #teletype:!public!tags/output! !
!WAHtmlCanvas categoriesFor: #textArea!public!tags/input! !
!WAHtmlCanvas categoriesFor: #textArea:!form/elements!public! !
!WAHtmlCanvas categoriesFor: #textInput!form/elements!public! !
!WAHtmlCanvas categoriesFor: #textInput:!form/elements!public! !
!WAHtmlCanvas categoriesFor: #time!public!tags! !
!WAHtmlCanvas categoriesFor: #time:!public!tags/input! !
!WAHtmlCanvas categoriesFor: #timeInput!form/elements!public! !
!WAHtmlCanvas categoriesFor: #timeInput5!public!tags/input! !
!WAHtmlCanvas categoriesFor: #track!public!tags! !
!WAHtmlCanvas categoriesFor: #track:!public!tags! !
!WAHtmlCanvas categoriesFor: #unorderedList!public!tags/lists! !
!WAHtmlCanvas categoriesFor: #unorderedList:!public!tags/lists! !
!WAHtmlCanvas categoriesFor: #urlInput!public!tags/input! !
!WAHtmlCanvas categoriesFor: #variable!public!tags/output! !
!WAHtmlCanvas categoriesFor: #variable:!public!tags/output! !
!WAHtmlCanvas categoriesFor: #video!public!tags! !
!WAHtmlCanvas categoriesFor: #video:!public!tags! !
!WAHtmlCanvas categoriesFor: #weekInput!public!tags/input! !
!WAHtmlCanvas categoriesFor: #withLineBreaksAndUrls:!convenience!public! !
!WAHtmlCanvas categoriesFor: #withUrls:!convenience!public! !

!WAHtmlCanvas class methodsFor!

builder	^ super builder			rootClass: WAHtmlRoot;			documentClass: WAHtmlDocument;			yourself!

initialize	self selectAsDefault!

unload	self unselectAsDefault! !
!WAHtmlCanvas class categoriesFor: #builder!instance creation!public! !
!WAHtmlCanvas class categoriesFor: #initialize!class initialization!public! !
!WAHtmlCanvas class categoriesFor: #unload!class initialization!public! !

