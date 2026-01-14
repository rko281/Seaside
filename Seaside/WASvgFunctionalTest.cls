"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WASvgFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASvgFunctionalTest guid: (GUID fromString: '{cf3d6c6a-e3d1-4165-8385-d9dbcdc97556}')!

WASvgFunctionalTest comment: ''!

!WASvgFunctionalTest categoriesForClass!Seaside-Tests-Functional! !

!WASvgFunctionalTest methodsFor!

renderContentOn: html	html object		type: 'image/svg+xml' seasideMimeType;		width: 512;		height: 512;		standby: 'loading tiger';		url: 'http://upload.wikimedia.org/wikipedia/commons/f/fd/Ghostscript_Tiger.svg';		with: 'Your browser doesn''t support SVG'! !

!WASvgFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
!

