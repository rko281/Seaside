"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WATableReportFunctionalTest
	instanceVariableNames: 'report'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATableReportFunctionalTest guid: (GUID fromString: '{beb937f5-49cd-4650-b375-b0948c3ba7fe}')!

WATableReportFunctionalTest comment: ''!

!WATableReportFunctionalTest categoriesForClass!Unclassified! !

!WATableReportFunctionalTest methodsFor!

children	^ Array with: report!

initialize	super initialize.	report := WATableReport new		rows: WAComponent allSubclasses asArray;		columns: (OrderedCollection new			add: (WAReportColumn				selector: #fullName title: 'Name'				onClick: [ :each | self inform: each description onAnswer: [ ] ]);			add: ((WAReportColumn				selector: #canBeRoot title: 'Can Be Root')				sortBlock: [ :a :b | a ]);			add: (WAReportColumn				renderBlock: [ :each :html | html emphasis: each description ]				title: 'Description');			yourself);		rowColors: #(lightblue lightyellow);		rowPeriod: 1;		yourself! !

!WATableReportFunctionalTest categoriesForMethods!
children!hooks!public! !
initialize!initialization!public! !
!

