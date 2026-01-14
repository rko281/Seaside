"Filed out from Dolphin Smalltalk"!

WATagCanvas subclass: #WAHtmlCanvas
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHtmlCanvas guid: (GUID fromString: '{7cf4cff7-817d-46f4-8434-5ecd69699a48}')!

WAHtmlCanvas comment: 'I''m a canvas for building HTML.'!

!WAHtmlCanvas categoriesForClass!Seaside-Canvas-Canvas! !

!WAHtmlCanvas methodsFor!

abbreviated	"Defines an abbreviation, such as 'M.', 'Inc.', 'et al.', 'etc.'"	^ self tag: 'abbr'!

abbreviated: aBlock	self abbreviated with: aBlock!

acronym	"Defines an acronym, such as 'GmbH', 'NATO', and 'F.B.I.'"	self		greaseDeprecatedApi: 'WAHtmlCanvas>>acronym'		details: 'https://www.w3docs.com/learn-html/deprecated-html-tags.html'.	^ self tag: 'acronym'!

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

big	"Defines big text."	self		greaseDeprecatedApi: 'WAHtmlCanvas>>big'		details: 'https://www.w3docs.com/learn-html/deprecated-html-tags.html'.	^ self tag: 'big'!

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

command	^ self brush: WACommandTag new!

command: aBlock	self command with: aBlock!

datalist	^ self brush: WADatalistTag new!

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

details	^ self brush: WADetailsTag new!

details: aBlock	self details with: aBlock!

div	"Defines a section in a document."	^ self tag: 'div'!

div: aBlock	self div with: aBlock!

emailInput	^ self brush: WAEmailInputTag new!

embed	"The embed element represents an integration point for an external (typically non-HTML) application or interactive content."	self		greaseDeprecatedApi: 'WAHtmlCanvas>>embed'		details: 'https://www.w3docs.com/learn-html/deprecated-html-tags.html'.	^ self brush: WAEmbedTag new!

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

formatText: aString with: collection	| stream previousText |	stream := aString readStream.	previousText := WriteStream on: String new.	[ stream atEnd ] whileFalse: [ | currentChar | 			(currentChar := stream next) = ${				ifTrue: [ 					| expression index | 					expression := stream upTo: $}.					index := Integer readFrom: expression ifFail: [ expression ].					self text: previousText contents.					previousText := WriteStream on: String new.					self render: (collection at: index) ]				ifFalse: [					currentChar = $\						ifTrue: [ stream atEnd ifFalse: [ previousText nextPut: stream next ] ]						ifFalse: [ previousText nextPut: currentChar ] ] ].	self text: previousText contents.!

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

menu	self		greaseDeprecatedApi: 'WAHtmlCanvas>>menu'		details: 'https://www.w3docs.com/learn-html/deprecated-html-tags.html'.	^ self brush: WAMenuTag new!

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

slot	^ self brush: WASlotTag new!

slot: aBlock	self slot with: aBlock!

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

template	^ self brush: WATemplateTag new!

template: aBlock	self template with: aBlock!

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

!WAHtmlCanvas categoriesForMethods!
abbreviated!public!tags/block! !
abbreviated:!public!tags/block! !
acronym!public!tags/deprecated! !
acronym:!public!tags/deprecated! !
address!public!tags/block! !
address:!public!tags/block! !
anchor!public!tags/input! !
anchor:!public!tags/input! !
article!public!tags! !
article:!public!tags! !
aside!public!tags! !
aside:!public!tags! !
audio!public!tags! !
audio:!public!tags! !
basicForm!public!tags/input! !
basicForm:!public!tags/input! !
bidirectional!public!tags! !
bidirectional:!public!tags! !
bidirectionalOverride!public!tags! !
bidirectionalOverride:!public!tags! !
big!public!tags/deprecated! !
big:!public!tags/deprecated! !
blockquote!public!tags/block! !
blockquote:!public!tags/block! !
break!public!tags! !
button!form/buttons!public! !
button:!form/buttons!public! !
cancelButton!form/buttons!public! !
cancelButton:!form/buttons!public! !
canvas!public!tags! !
canvas:!public!tags! !
checkbox!form/elements!public! !
citation!public!tags/block! !
citation:!public!tags/block! !
code!public!tags/output! !
code:!public!tags/output! !
colorInput!public!tags/input! !
command!public!tags! !
command:!public!tags! !
datalist!public!tags! !
datalist:!public!tags! !
dateInput!form/elements!public! !
dateInput5!public!tags/input! !
dateTimeInput!public!tags/input! !
dateTimeLocalInput!public!tags/input! !
definition!public!tags/output! !
definition:!public!tags/output! !
definitionData!public!tags/lists! !
definitionData:!public!tags/lists! !
definitionList!public!tags/lists! !
definitionList:!public!tags/lists! !
definitionTerm!public!tags/lists! !
definitionTerm:!public!tags/lists! !
deleted!public!tags/block! !
deleted:!public!tags/block! !
details!public!tags! !
details:!public!tags! !
div!public!tags/styles! !
div:!public!tags/styles! !
emailInput!public!tags/input! !
embed!public!tags/deprecated! !
embed:!public!tags/deprecated! !
emphasis!public!tags/format! !
emphasis:!public!tags/format! !
encodeCharacter:!convenience!public! !
fieldSet!public!tags/input! !
fieldSet:!public!tags/input! !
figure!public!tags! !
figure:!public!tags! !
figureCaption!public!tags! !
figureCaption:!public!tags! !
fileUpload!form/elements!public! !
footer!public!tags! !
footer:!public!tags! !
form!form!public! !
form:!public!tags/input! !
formatText:with:!convenience!public! !
header!public!tags! !
header:!public!tags! !
heading!public!tags! !
heading:!public!tags! !
headingGroup!public!tags! !
headingGroup:!public!tags! !
hiddenInput!form/elements!public! !
horizontalRule!public!tags! !
html:!public! !
iframe!public!tags/transitional! !
image!public!tags/images! !
image:!public!tags/images! !
imageButton!form/buttons!public! !
imageButton:!form/buttons!public! !
inserted!public!tags/block! !
inserted:!public!tags/block! !
keyboard!public!tags/output! !
keyboard:!public!tags/output! !
label!public!tags/input! !
label:!public!tags/input! !
legend!public!tags/input! !
legend:!public!tags/input! !
lineBreakOpportunity!public!tags! !
lineBreakOpportunity:!public!tags! !
listItem!public!tags/lists! !
listItem:!public!tags/lists! !
main!public!tags! !
main:!public!tags! !
map!public!tags/images! !
map:!public!tags/images! !
marked!public!tags! !
marked:!public!tags! !
menu!public!tags/deprecated! !
menu:!public!tags/deprecated! !
meter!public!tags! !
meter:!public!tags! !
monthInput!public!tags/input! !
multiSelect!form/elements!public! !
multiSelect:!form/elements!public! !
navigation!public!tags! !
navigation:!public!tags! !
numberInput!public!tags/input! !
object!public!tags/program! !
object:!public!tags/program! !
option!form/elements!public! !
option:!form/elements!public! !
optionGroup!form/elements!public! !
optionGroup:!form/elements!public! !
orderedList!public!tags/lists! !
orderedList:!public!tags/lists! !
output!public!tags! !
output:!public!tags! !
paragraph!public!tags! !
paragraph:!public!tags! !
parameter!public!tags/program! !
parameter:!public!tags/program! !
passwordInput!form/elements!public! !
passwordInput:!form/elements!public! !
popupAnchor!public!tags/input! !
popupAnchor:!public!tags/input! !
preformatted!public!tags/output! !
preformatted:!public!tags/output! !
progress!public!tags! !
progress:!public!tags! !
quote!public!tags/block! !
quote:!public!tags/block! !
radioButton!form/elements!public! !
radioButton:!form/elements!public! !
radioGroup!form/elements!public! !
radioGroup:!form/elements!public! !
rangeInput!public!tags/input! !
ruby!public!tags/ruby! !
ruby:!public!tags/ruby! !
rubyParentheses!public!tags/ruby! !
rubyParentheses:!public!tags/ruby! !
rubyText!public!tags/ruby! !
rubyText:!public!tags/ruby! !
sample!public!tags/output! !
sample:!public!tags/output! !
script!public!tags/program! !
script:!public!tags/program! !
searchInput!public!tags/input! !
section!public!tags! !
section:!public!tags! !
select!form/elements!public! !
select:!form/elements!public! !
slot!public!tags/web/components! !
slot:!public!tags/web/components! !
small!public!tags/format! !
small:!public!tags/format! !
source!public!tags! !
source:!public!tags! !
spaceEntity!private! !
span!public!tags/styles! !
span:!public!tags/styles! !
strong!public!tags/format! !
strong:!public!tags/format! !
submitButton!form/buttons!public! !
submitButton:!form/buttons!public! !
subscript!public!tags/format! !
subscript:!public!tags/format! !
summary!public!tags! !
summary:!public!tags! !
superscript!public!tags/format! !
superscript:!public!tags/format! !
table!public!tags/tables! !
table:!public!tags/tables! !
tableBody!public!tags/tables! !
tableBody:!public!tags/tables! !
tableCaption!public!tags/tables! !
tableCaption:!public!tags/tables! !
tableColumn!public!tags/tables! !
tableColumn:!public!tags/tables! !
tableColumnGroup!public!tags/tables! !
tableColumnGroup:!public!tags/tables! !
tableData!public!tags/tables! !
tableData:!public!tags/tables! !
tableFoot!public!tags/tables! !
tableFoot:!public!tags/tables! !
tableHead!public!tags/tables! !
tableHead:!public!tags/tables! !
tableHeading!public!tags/tables! !
tableHeading:!public!tags/tables! !
tableRow!public!tags/tables! !
tableRow:!public!tags/tables! !
telephoneInput!public!tags/input! !
teletype!public!tags/output! !
teletype:!public!tags/output! !
template!public!tags/web/components! !
template:!public!tags/web/components! !
textArea!public!tags/input! !
textArea:!form/elements!public! !
textInput!form/elements!public! !
textInput:!form/elements!public! !
time!public!tags! !
time:!public!tags/input! !
timeInput!form/elements!public! !
timeInput5!public!tags/input! !
track!public!tags! !
track:!public!tags! !
unorderedList!public!tags/lists! !
unorderedList:!public!tags/lists! !
urlInput!public!tags/input! !
variable!public!tags/output! !
variable:!public!tags/output! !
video!public!tags! !
video:!public!tags! !
weekInput!public!tags/input! !
withLineBreaksAndUrls:!convenience!public! !
withUrls:!convenience!public! !
!

!WAHtmlCanvas class methodsFor!

builder	^ super builder			rootClass: WAHtmlRoot;			documentClass: WAHtmlDocument;			yourself!

initialize	self selectAsDefault!

unload	self unselectAsDefault! !

!WAHtmlCanvas class categoriesForMethods!
builder!instance creation!public! !
initialize!class initialization!public! !
unload!class initialization!public! !
!

