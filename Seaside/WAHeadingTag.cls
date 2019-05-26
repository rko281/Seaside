"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WAHeadingTag
	instanceVariableNames: 'level'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHeadingTag guid: (GUID fromString: '{f25d9dc1-418c-4f28-8610-835d7f5ffcbb}')!
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
!WAHeadingTag categoriesFor: #initialize!initialization!public! !
!WAHeadingTag categoriesFor: #level!accessing!public! !
!WAHeadingTag categoriesFor: #level:!accessing!public! !
!WAHeadingTag categoriesFor: #level1!convenience!public! !
!WAHeadingTag categoriesFor: #level2!convenience!public! !
!WAHeadingTag categoriesFor: #level3!convenience!public! !
!WAHeadingTag categoriesFor: #level4!convenience!public! !
!WAHeadingTag categoriesFor: #level5!convenience!public! !
!WAHeadingTag categoriesFor: #level6!convenience!public! !
!WAHeadingTag categoriesFor: #tag!accessing!public! !

