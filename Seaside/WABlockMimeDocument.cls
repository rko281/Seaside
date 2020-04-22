﻿"Filed out from Dolphin Smalltalk 7"!

WAMimeDocument subclass: #WABlockMimeDocument
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WABlockMimeDocument guid: (GUID fromString: '{9a21dcfe-16af-4a24-b8c4-aed20fc564be}')!
WABlockMimeDocument comment: 'I am a MIME document whos contents are generated dynamically by a block.
!WABlockMimeDocument categoriesForClass!Seaside-Tests-Core-HTTP! !
!WABlockMimeDocument methodsFor!

contents

contents: aCollection

initializeOnBlock: aNiladicBlock

seasideMimeDocumentType: aMimeType
!WABlockMimeDocument categoriesFor: #contents!accessing!public! !
!WABlockMimeDocument categoriesFor: #contents:!accessing!public! !
!WABlockMimeDocument categoriesFor: #initializeOnBlock:!initialization!public! !
!WABlockMimeDocument categoriesFor: #seasideMimeDocumentType:!converting!public! !

!WABlockMimeDocument class methodsFor!

onBlock: aNiladicBlock
!WABlockMimeDocument class categoriesFor: #onBlock:!instance creation!public! !
