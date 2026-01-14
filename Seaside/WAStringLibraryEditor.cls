"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAStringLibraryEditor
	instanceVariableNames: 'library'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAStringLibraryEditor guid: (GUID fromString: '{49946c46-f36d-46a5-a8f8-604d57fa66dc}')!

WAStringLibraryEditor comment: ''!

!WAStringLibraryEditor categoriesForClass!Seaside-Tools-Web! !

!WAStringLibraryEditor methodsFor!

library	^ library!

library: aLibrary	library := aLibrary!

renderContentOn: html	html div		class: 'groupContent';		with: [			self renderHeadingsOn: html.			self renderFilesOn: html.			self renderWriteToDiskOn: html.			html space.			self renderDoneOn: html ]!

renderDoneOn: html	html anchor		class: 'large';		title: 'Close and return';		callback: [ self answer ];		with: 'Close'!

renderFilesOn: html	html unorderedList: [		self library filenames			do: [ :each |				html listItem: [					html anchor						class: 'download';						url: (self urlFor: each);						with: each ] ] ]!

renderHeadingsOn: html	html heading level2; with: self library name!

renderWriteToDiskOn: html	html anchor		class: 'large';		callback: [ self library deployFiles ];		title: 'Wite all the files to disk';		with: 'Write to disk'!

urlFor: aFilename	^ self library urlForFile: aFilename! !

!WAStringLibraryEditor categoriesForMethods!
library!accessing!public! !
library:!accessing!public! !
renderContentOn:!public!rendering! !
renderDoneOn:!public!rendering! !
renderFilesOn:!public!rendering! !
renderHeadingsOn:!public!rendering! !
renderWriteToDiskOn:!public!rendering! !
urlFor:!private! !
!

