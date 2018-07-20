"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WATask
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATask guid: (GUID fromString: '{1c4ed1da-3d5c-4879-9acb-99dc70f458ac}')!
WATask comment: 'I am a subclass of WAComponent, specialized for defining workflow.  The difference between a task and a component is the following:Both of them are reusable, embeddable, callable pieces of user interface. A component has state (instance variables), behavior (it may change its state, and it may also choose to display other components with #call:), and appearance (it renders HTML). A Task has only the first two - it doesn''t render any HTML directly, but only through the components it calls. This is useful when what you want to encapsulate/embed/call is purely a process (show this component, then this one, then this one).The key method for WATask is #go - as soon as a task is displayed, this method will get invoked, and will presumably #call: other components.In terms of implementation, you can think of a WATask in the following way: it is a component which renders two things:- a link whose callback invokes the #go method- a header that immediately redirects to the URL of that linkSubclasses must not implement #renderContentOn:An example can be found in WAFlowConvenienceFunctionalTest.'!
!WATask categoriesForClass!Seaside-Component-Tasks! !
!WATask methodsFor!

accept: aVisitor	aVisitor visitTask: self!

execute	"Internal method to start the task running. DO NOT OVERRIDE THIS METHOD!! Subclasses	should implement #go to specify behaviour.	We used to loop here but no longer need to because the WATaskVisitor will	rerun any Task that is found not to be delegated."		self answer: self go!

go	self subclassResponsibility!

isExecuting	"Answer whether or not the task is currently executing."	^ self activeComponent ~~ self!

renderContentOn: html	"Tasks define behaviour and should not render themselves directly. Behaviour is defined	in the #go method, which can use #call: and other methods to display components.		In general, if this method is called, it means that the application has not been configured	properly to use Flow and the task was never executed."	WATaskNotDelegated signal: 'This task has no delegation.'	! !
!WATask categoriesFor: #accept:!public!visiting! !
!WATask categoriesFor: #execute!public!running! !
!WATask categoriesFor: #go!public!running! !
!WATask categoriesFor: #isExecuting!public!testing! !
!WATask categoriesFor: #renderContentOn:!public!rendering! !

