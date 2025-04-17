"Filed out from Dolphin Smalltalk"!

WADecoration subclass: #WAToolDecoration
	instanceVariableNames: 'plugins showHalos halos'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAToolDecoration guid: (GUID fromString: '{d271b374-e27e-4567-b89a-f8b4f850dbce}')!

WAToolDecoration comment: ''!

!WAToolDecoration categoriesForClass!Core! !

!WAToolDecoration methodsFor!

haloFor: aPresenter	^ halos at: aPresenter ifAbsentPut: [ aPresenter haloClass on: aPresenter ]!

initialize	super initialize.	showHalos := WAValueHolder with: false.	halos := GRPlatform current weakDictionaryOfSize: 20.	plugins := WAToolPlugin allSubclassesFor: self!

isGlobal	^ true!

plugins	^ plugins!

renderChildOn: html	self showHalos ifTrue: [		html context addHaloVisitor: (WAHaloVisitor decoration: self context: html context).		html context enableHalos ].	self renderNextOn: html.	html context disableHalos!

renderContentOn: html	self renderChildOn: html.	self renderToolbarOn: html!

renderToolbarOn: html	html div class: 'wa-toolbar'; with: [		(self plugins select: [ :each | each isActive ])			do: [ :each | html render: each ]			separatedBy: [ html text: ' ' ] ]!

showHalos	^ showHalos contents!

states	^ Array with: showHalos!

toggleHalos	showHalos contents: showHalos contents not!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.	WADevelopmentFiles default updateRoot: anHtmlRoot!

updateStates: aSnapshot	super updateStates: aSnapshot.	"Create halos for all visible presenters at the end of the action phase so that we	can properly snapshot their initial values (otherwise they get created in the render	phase and we have no snapshot of the state for that render)."	self showHalos ifTrue: [ self visiblePresentersDo: [ :each | self haloFor: each ] ].	aSnapshot register: halos.	halos do: [ :each  | each updateStates: aSnapshot ]! !

!WAToolDecoration categoriesForMethods!
haloFor:!plugin/halos!public! !
initialize!initialization!public! !
isGlobal!public!testing! !
plugins!accessing!public! !
renderChildOn:!public!rendering! !
renderContentOn:!public!rendering! !
renderToolbarOn:!public!rendering! !
showHalos!plugin/halos!public! !
states!hooks!public! !
toggleHalos!plugin/halos!public! !
updateRoot:!public!updating! !
updateStates:!public!updating! !
!

!WAToolDecoration class methodsFor!

canBeRoot	^ true! !

!WAToolDecoration class categoriesForMethods!
canBeRoot!public!testing! !
!

