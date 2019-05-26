"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAStringLibraryEditor
	instanceVariableNames: 'library'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAStringLibraryEditor guid: (GUID fromString: '{b4573a28-0b82-4a40-8d50-970b49597b92}')!
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
!WAStringLibraryEditor categoriesFor: #library!accessing!public! !
!WAStringLibraryEditor categoriesFor: #library:!accessing!public! !
!WAStringLibraryEditor categoriesFor: #renderContentOn:!public!rendering! !
!WAStringLibraryEditor categoriesFor: #renderDoneOn:!public!rendering! !
!WAStringLibraryEditor categoriesFor: #renderFilesOn:!public!rendering! !
!WAStringLibraryEditor categoriesFor: #renderHeadingsOn:!public!rendering! !
!WAStringLibraryEditor categoriesFor: #renderWriteToDiskOn:!public!rendering! !
!WAStringLibraryEditor categoriesFor: #urlFor:!private! !

