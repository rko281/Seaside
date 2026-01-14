"Filed out from Dolphin Smalltalk"!

WALabelledFormDialog subclass: #WAViewer
	instanceVariableNames: 'presenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAViewer guid: (GUID fromString: '{f842d461-dde9-4c3f-8737-bedac9bc7914}')!

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

!WAViewer categoriesForMethods!
buttons!accessing!public! !
compile:!actions!public! !
model!accessing!public! !
presenter:!accessing!public! !
renderContentOn:!public!rendering! !
renderCssOn:!public!rendering! !
rows!accessing!public! !
save!actions!public! !
!

!WAViewer class methodsFor!

on: aPresenter	^ self new presenter: aPresenter! !

!WAViewer class categoriesForMethods!
on:!instance creation!public! !
!

