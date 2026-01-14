"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WASourceSetTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASourceSetTest guid: (GUID fromString: '{cf1058a8-3720-4ef8-931a-40b4e92be562}')!

WASourceSetTest comment: ''!

!WASourceSetTest categoriesForClass!Seaside-Tests-Functional! !

!WASourceSetTest methodsFor!

renderContentOn: html	"https://www.webkit.org/blog/2910/improved-support-for-high-resolution-displays-with-the-srcset-image-attribute/"	html paragraph: 'Example of the srcset attribute. The image contains a coloured striped pattern with some inline text that indicates which of the candidate images were selected.'.	html paragraph: 'Requires a high-resolution display and browser support. Currently only Retina and Safari/Chrome'.	html image		altText: 'Example of the srcset attribute. The image contains a coloured striped pattern with some inline text that indicates which of the candidate images were selected.';		sourceSet: 'http://webkit.org/demos/srcset/image-1x.png 1x, http://webkit.org/demos/srcset/image-2x.png 2x';		url: 'http://webkit.org/demos/srcset/image-src.png';		style: 'width: 400px; height: 400px;'! !

!WASourceSetTest categoriesForMethods!
renderContentOn:!public!rendering! !
!

