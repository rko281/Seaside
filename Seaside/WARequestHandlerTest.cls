﻿"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WARequestHandlerTest
	instanceVariableNames: 'handler dispatcher'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARequestHandlerTest guid: (GUID fromString: '{5c7751d5-de59-4ddb-8075-61c060553d40}')!

WARequestHandlerTest comment: ''!

!WARequestHandlerTest categoriesForClass!RequestHandling! !

!WARequestHandlerTest methodsFor!

handlerName	^ 'foo'!

newHandler	^ WARequestHandler new!

setUp	super setUp.	dispatcher := WADispatcher new.	handler := self newHandler.	dispatcher register: handler at: self handlerName!

testAddFilter	| filter1 filter2 |	filter1 := WARequestFilter new.	filter2 := WARequestFilter new.	self assert: (handler addFilter: filter1) = filter1.	self assert: (handler addFilter: filter2) = filter2.	self assert: handler filters size = 2.	self assert: handler filters first = filter1.	self assert: handler filters last = filter2!

testAddFilterFirst	| filter1 filter2 filter3 |	filter1 := WARequestFilter new.	filter2 := WARequestFilter new.	filter3 := WARequestFilter new.	self assert: (handler addFilterFirst: filter1) = filter1.	self assert: (handler addFilterFirst: filter2) = filter2.	self assert: (handler addFilterFirst: filter3) = filter3.	self assert: handler filters size = 3.	self assert: handler filters first = filter3.	self assert: handler filters last = filter1!

testAddFilterLast	| filter1 filter2 filter3 |	filter1 := WARequestFilter new.	filter2 := WARequestFilter new.	filter3 := WARequestFilter new.	self assert: (handler addFilterLast: filter1) = filter1.	self assert: (handler addFilterLast: filter2) = filter2.	self assert: (handler addFilterLast: filter3) = filter3.	self assert: handler filters size = 3.	self assert: handler filters first = filter1.	self assert: handler filters last = filter3!

testCopyConfiguration	| config copy |	config := handler configuration.		copy := handler copy.		self assert: handler configuration == config.	self deny: copy configuration == handler configuration.	self deny: copy configuration isNil!

testCopyEmpty	| copied |	copied := handler copy.	self deny: handler == copied.	self assert: handler filter == handler.	self assert: copied filter == copied!

testCopyFilters	| copied |	handler addFilter: WARequestFilter new.	handler addFilter: WARequestFilter new.	copied := handler copy.	self deny: handler == copied.	self deny: handler filter == copied filter.	self deny: handler filter next == copied filter next.	self assert: handler filter handler == handler.	self assert: copied filter handler == copied!

testCopyParent	| parent copy |	parent := WADispatcher new.	handler setParent: parent.		copy := handler copy.		self assert: handler parent == parent.	self assert: copy parent isNil!

testHandler	| filter1 filter2 |	filter1 := handler addFilter: WARequestFilter new.	filter2 := handler addFilter: WARequestFilter new.	self assert: handler handler = handler.	self assert: filter1 handler = handler.	self assert: filter2 handler = handler!

testPreferenceAt	handler configuration addParent:		(WAConfigurationMock new			description: [ :config | (config string: #foo) default: #bar ];			yourself).	self assert: (handler preferenceAt: #foo) = #bar.	handler preferenceAt: #foo put: #baz.	self assert: (handler preferenceAt: #foo) = #baz.	handler preferenceAt: #foo put: nil.	self deny: (handler configuration hasExpressionAt: #foo).	self should: [ handler preferenceAt: #missing ] raise: WAAttributeNotFound!

testRemoveFilter	| filter1 filter2 |	handler addFilter: (filter1 := WARequestFilter new).	handler addFilter: (filter2 := WARequestFilter new).	self assert: (handler removeFilter: WARequestFilter new) isNil.	self assert: (handler removeFilter: filter1) = filter1.	self assert: handler filters size = 1.	self assert: handler filters first = filter2.	self assert: (handler removeFilter: filter2) = filter2.	self assert: handler filters isEmpty.	self assert: (handler removeFilter: filter2) isNil!

testRemoveFromOldParent	| parent parent2 |	parent := WADispatcher new.	parent register: handler at: 'crepe'.	self assert: handler parent == parent.	self assert: (parent handlers includes: handler).		parent2 := WADispatcher new.	parent2 register: handler at: 'suzette'.	self assert: handler parent == parent2.	self assert: (parent2 handlers includes: handler).	self deny: (parent handlers includes: handler)! !

!WARequestHandlerTest categoriesForMethods!
handlerName!private! !
newHandler!private! !
setUp!public!running! !
testAddFilter!public!tests! !
testAddFilterFirst!public!tests! !
testAddFilterLast!public!tests! !
testCopyConfiguration!public!tests! !
testCopyEmpty!public!tests! !
testCopyFilters!public!tests! !
testCopyParent!public!tests! !
testHandler!public!tests! !
testPreferenceAt!public!tests! !
testRemoveFilter!public!tests! !
testRemoveFromOldParent!public!tests! !
!

!WARequestHandlerTest class methodsFor!

isAbstract	^ self name = #WARequestHandlerTest! !

!WARequestHandlerTest class categoriesForMethods!
isAbstract!public!testing! !
!

