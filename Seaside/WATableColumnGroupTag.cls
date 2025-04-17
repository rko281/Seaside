"Filed out from Dolphin Smalltalk"!

WATableCellTag subclass: #WATableColumnGroupTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATableColumnGroupTag guid: (GUID fromString: '{78f585ad-41cb-4f10-a2b6-c77ab9cfe05e}')!

WATableColumnGroupTag comment: 'WATableColumnGroupTag groups a set of col elements. It allows you to group several semantically related columns together.'!

!WATableColumnGroupTag categoriesForClass!Tags! !

!WATableColumnGroupTag methodsFor!

span: anInteger	"This attribute must be an integer > 0; the default value is 1. This specifies the number of columns in a colgroup, or specifies the number of columns spanned by the col element."		self attributes at: 'span' put: anInteger!

tag	^ 'colgroup'!

width: anInteger	"The width attribute specifies the width of the columns"		self attributes at: 'width' put: anInteger! !

!WATableColumnGroupTag categoriesForMethods!
span:!attributes!public! !
tag!accessing!public! !
width:!attributes!public! !
!

