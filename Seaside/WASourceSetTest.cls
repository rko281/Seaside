﻿"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WASourceSetTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASourceSetTest guid: (GUID fromString: '{b9ba28c0-09ec-4f3a-84bd-29c5274178ee}')!

WASourceSetTest comment: ''!

!WASourceSetTest categoriesForClass!Unclassified! !

!WASourceSetTest methodsFor!

renderContentOn: html	"https://www.webkit.org/blog/2910/improved-support-for-high-resolution-displays-with-the-srcset-image-attribute/"	html paragraph: 'Example of the srcset attribute. The image contains a coloured striped pattern with some inline text that indicates which of the candidate images were selected.'.	html paragraph: 'Requires a high-resolution display and browser support. Currently only Retina and Safari/Chrome'.	html image		altText: 'Example of the srcset attribute. The image contains a coloured striped pattern with some inline text that indicates which of the candidate images were selected.';		sourceSet: 'http://webkit.org/demos/srcset/image-1x.png 1x, http://webkit.org/demos/srcset/image-2x.png 2x';		url: 'http://webkit.org/demos/srcset/image-src.png';		style: 'width: 400px; height: 400px;'! !

!WASourceSetTest categoriesForMethods!
renderContentOn:!public!rendering! !
!

