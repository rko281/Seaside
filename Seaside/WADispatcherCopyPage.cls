"Filed out from Dolphin Smalltalk"!

WADispatcherSubPage subclass: #WADispatcherCopyPage
	instanceVariableNames: 'name handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADispatcherCopyPage guid: (GUID fromString: '{e171f98b-9116-4f06-aca2-3e5e10d15360}')!

WADispatcherCopyPage comment: ''!

!WADispatcherCopyPage categoriesForClass!Unclassified! !

!WADispatcherCopyPage methodsFor!

copyHandler	| newHandler |	newHandler := self handler parent 		register: self handler cloneHandler		at: name.	^ self answer: newHandler!

dispatcher	^ handler!

handler	^ handler!

handler: aRequestHandler 	handler := aRequestHandler!

renderContentOn: html 	html heading		level: 2;		with: 'Copy request handler: ' , self handler name.	html form: [		html table: [			html tableRow: [				html tableData					class: 'label';					with: 'Name for new request handler: '.				html tableData:  [					html textInput						value: handler name , '_copy';						callback: [ :value | name := value ] ] ] ].		html break.		html submitButton			callback: [ self copyHandler ];			with: 'OK'.		html space.		html submitButton			callback: [ self answer: nil ];			with: 'Cancel' ]! !

!WADispatcherCopyPage categoriesForMethods!
copyHandler!actions!public! !
dispatcher!accessing!public! !
handler!accessing!public! !
handler:!accessing!public! !
renderContentOn:!public!rendering! !
!

