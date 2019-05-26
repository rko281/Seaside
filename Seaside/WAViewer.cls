"Filed out from Dolphin Smalltalk 7"!

WALabelledFormDialog subclass: #WAViewer
	instanceVariableNames: 'presenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAViewer guid: (GUID fromString: '{6eab7e40-2557-4be2-bb38-6fa5cbeb92cb}')!
WAViewer comment: ''!
!WAViewer categoriesForClass!Seaside-Development-Core! !
!WAViewer methodsFor!

buttons	^ #(save)!

compile: aString 	GRPlatform current 		compile: aString		into: presenter class		classified: #rendering!

model	^ presenter!

presenter: aPresenter	presenter := aPresenter!

renderContentOn: html 	html heading		level3;		with: presenter greaseString.	super renderContentOn: html!

renderCssOn: html	html textArea		rows: 20;		columns: 80;		value: presenter style;		callback: [ :css |			self compile: 'style ', GRPlatform current newline,				'	^ ', css printString ]!

rows	^ #(css)!

save! !
!WAViewer categoriesFor: #buttons!accessing!public! !
!WAViewer categoriesFor: #compile:!actions!public! !
!WAViewer categoriesFor: #model!accessing!public! !
!WAViewer categoriesFor: #presenter:!accessing!public! !
!WAViewer categoriesFor: #renderContentOn:!public!rendering! !
!WAViewer categoriesFor: #renderCssOn:!public!rendering! !
!WAViewer categoriesFor: #rows!accessing!public! !
!WAViewer categoriesFor: #save!actions!public! !

!WAViewer class methodsFor!

on: aPresenter	^ self new presenter: aPresenter! !
!WAViewer class categoriesFor: #on:!instance creation!public! !

