"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WAHeadingTag
	instanceVariableNames: 'level'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHeadingTag guid: (GUID fromString: '{ed00c4c1-b6d9-465c-9e1d-4e0d9ad83fdf}')!

WAHeadingTag comment: 'A heading element briefly describes the topic of the section it introduces. Heading information may be used by user agents, for example, to construct a table of contents for a document automatically.There are six levels of headings in HTML with H1 as the most important and H6 as the least. Visual browsers usually render more important headings in larger fonts than less important ones.'!

!WAHeadingTag categoriesForClass!Seaside-Canvas-Tags! !

!WAHeadingTag methodsFor!

initialize	super initialize.	self level1!

level	^ level!

level: anInteger	level := (anInteger max: 1) min: 6!

level1	level := 1!

level2	level := 2!

level3	level := 3!

level4	level := 4!

level5	level := 5!

level6	level := 6!

tag	^ 'h' , self level greaseString! !

!WAHeadingTag categoriesForMethods!
initialize!initialization!public! !
level!accessing!public! !
level:!accessing!public! !
level1!convenience!public! !
level2!convenience!public! !
level3!convenience!public! !
level4!convenience!public! !
level5!convenience!public! !
level6!convenience!public! !
tag!accessing!public! !
!

