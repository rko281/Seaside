"Filed out from Dolphin Smalltalk"!

WATableCellTag subclass: #WATableColumnGroupTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATableColumnGroupTag guid: (GUID fromString: '{f83e9c68-a4a2-46e3-b6a0-8caec2947a0e}')!

WATableColumnGroupTag comment: 'WATableColumnGroupTag groups a set of col elements. It allows you to group several semantically related columns together.'!

!WATableColumnGroupTag categoriesForClass!Seaside-Canvas-Tags! !

!WATableColumnGroupTag methodsFor!

span: anInteger	"This attribute must be an integer > 0; the default value is 1. This specifies the number of columns in a colgroup, or specifies the number of columns spanned by the col element."		self attributes at: 'span' put: anInteger!

tag	^ 'colgroup'!

width: anInteger	"The width attribute specifies the width of the columns"		self attributes at: 'width' put: anInteger! !

!WATableColumnGroupTag categoriesForMethods!
span:!attributes!public! !
tag!accessing!public! !
width:!attributes!public! !
!

