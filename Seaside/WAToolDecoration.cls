"Filed out from Dolphin Smalltalk 7"!

WADecoration subclass: #WAToolDecoration
	instanceVariableNames: 'plugins showHalos halos'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAToolDecoration guid: (GUID fromString: '{0f4a1f24-ebcd-4db7-bdc4-e173b2a54a90}')!
WAToolDecoration comment: ''!
!WAToolDecoration categoriesForClass!Seaside-Development-Core! !
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
!WAToolDecoration categoriesFor: #haloFor:!plugin/halos!public! !
!WAToolDecoration categoriesFor: #initialize!initialization!public! !
!WAToolDecoration categoriesFor: #isGlobal!public!testing! !
!WAToolDecoration categoriesFor: #plugins!accessing!public! !
!WAToolDecoration categoriesFor: #renderChildOn:!public!rendering! !
!WAToolDecoration categoriesFor: #renderContentOn:!public!rendering! !
!WAToolDecoration categoriesFor: #renderToolbarOn:!public!rendering! !
!WAToolDecoration categoriesFor: #showHalos!plugin/halos!public! !
!WAToolDecoration categoriesFor: #states!hooks!public! !
!WAToolDecoration categoriesFor: #toggleHalos!plugin/halos!public! !
!WAToolDecoration categoriesFor: #updateRoot:!public!updating! !
!WAToolDecoration categoriesFor: #updateStates:!public!updating! !

!WAToolDecoration class methodsFor!

canBeRoot	^ true! !
!WAToolDecoration class categoriesFor: #canBeRoot!public!testing! !

