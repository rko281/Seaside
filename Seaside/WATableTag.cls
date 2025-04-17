"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WATableTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATableTag guid: (GUID fromString: '{834116de-711a-4101-9f89-8812ec42606a}')!

WATableTag comment: 'The <table> tag defines a table. Inside a <table> tag you can put table headers, table rows, table cells, and other tables.'!

!WATableTag categoriesForClass!Tags! !

!WATableTag methodsFor!

cellpadding: anInteger	self attributes at: 'cellpadding' put: anInteger!

cellspacing: anInteger	self attributes at: 'cellspacing' put: anInteger!

frame: aString	"frame = void|above|below|hsides|lhs|rhs|vsides|box|border [CI]    This attribute specifies which sides of the frame surrounding a table will be visible. Possible values:        * void: No sides. This is the default value.        * above: The top side only.        * below: The bottom side only.        * hsides: The top and bottom sides only.        * vsides: The right and left sides only.        * lhs: The left-hand side only.        * rhs: The right-hand side only.        * box: All four sides.        * border: All four sides."	self attributes at: 'frame' put: aString!

rules: aString	"rules = none|groups|rows|cols|all [CI]    This attribute specifies which rules will appear between cells within a table. The rendering of rules is user agent dependent. Possible values:        * none: No rules. This is the default value.        * groups: Rules will appear between row groups (see THEAD, TFOOT, and TBODY) and column groups (see COLGROUP and COL) only.        * rows: Rules will appear between rows only.        * cols: Rules will appear between columns only.        * all: Rules will appear between all rows and columns."	self attributes at: 'rules' put: aString!

summary: aString	self attributes at: 'summary' put: aString!

tag	^ 'table'! !

!WATableTag categoriesForMethods!
cellpadding:!attributes!public! !
cellspacing:!attributes!public! !
frame:!attributes!public! !
rules:!attributes!public! !
summary:!attributes!public! !
tag!accessing!public! !
!

