"Filed out from Dolphin Smalltalk 7"!

JQuery subclass: #JQueryInstance
	instanceVariableNames: 'arguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQueryInstance guid: (GUID fromString: '{717936ce-6384-4f70-90ae-a1d71c5243c1}')!
JQueryInstance comment: ''!
!JQueryInstance categoriesForClass!JQuery-Core-Objects! !
!JQueryInstance methodsFor!

add: anObject	"Add elements to the set of matched elements."		self call: 'add' with: anObject!

add: anObject context: aContext	"Add elements to the set of matched elements rooted against the specified context."		self call: 'add' with: anObject with: aContext!

addBack	"Add the previous set of elements on the stack to the current set."	self call: 'addBack'!

addClass: aString	"Adds the specified class(es) to each of the set of matched elements."		self call: 'addClass' with: aString!

after: aRenderable 	"Insert content, specified by the parameter, after each element in the set of matched elements."		self call: 'after' with: (self render: aRenderable)!

animate	"Perform a custom animation of a set of CSS properties."		^ self create: JQAnimate!

append: aRenderable 	"Insert content, specified by the parameter, to the end of each element in the set of matched elements."		self call: 'append' with: (self render: aRenderable)!

appendTo: anObject 	"Insert every element in the set of matched elements to the end of the target."		self call: 'appendTo' with: anObject!

at: anInteger	"Access a single matched DOM element at a specified index in the matched set."		self get: anInteger!

atAll	"Access all matched DOM elements."		self get!

attributeAt: aKey 	"Get the value of an attribute for the first element in the set of matched elements."	self call: 'attr' with: aKey!

attributeAt: aKey put: aValue	"Set an attribute for the set of matched elements."		self call: 'attr' with: aKey with: aValue!

attributes: aDictionary 	"Set one or more attributes for the set of matched elements."		self call: 'attr' with: aDictionary!

before: aRenderable 	"Insert content, specified by the parameter, before each element in the set of matched elements."		self call: 'before' with: (self render: aRenderable)!

bind: aString data: aDataObject  do: anObject	self 		greaseDeprecatedApi: 'JQueryInstance>>#bind:do:'		details: 'See https://jquery.com/upgrade-guide/3.0/#deprecated-bind-and-delegate'.		self call: 'bind' with: aString with: aDataObject with: anObject asFunction!

bind: aString do: anObject 	self 		greaseDeprecatedApi: 'JQueryInstance>>#bind:do:'		details: 'See https://jquery.com/upgrade-guide/3.0/#deprecated-bind-and-delegate'.		self call: 'bind' with: aString with: anObject asFunction!

children	"Get the children of each element in the set of matched elements."		self call: 'children'!

children: aString	"Get the children of each element in the set of matched elements filtered by a selector."		self call: 'children' with: aString!

clearQueue	"Remove from the queue all items that have not yet been run.Remove from the queue all items that have not yet been run."		self call: 'clearQueue'!

clearQueue: aString	"Remove from the queue all items that have not yet been run.Remove from the queue all items that have not yet been run."		self call: 'clearQueue' with: aString!

clone	"Create a copy of the set of matched elements."		self call: 'clone'!

cloneAll	"Create a copy of the set of matched elements."		self call: 'clone' with: true!

closest	"Get the first element that matches the selector, beginning at the current element and progressing up through the DOM tree."		self call: 'closest'!

closest: aString	"Get the first element that matches the selector, beginning at the current element and progressing up through the DOM tree."		self call: 'closest' with: aString!

collect: anObject	"Translate a set of elements in the jQuery object into another set of values in an array (which may, or may not, be elements)."		self map: (self iteratorFor: anObject return: true)!

contents	"Get the children of each element in the set of matched elements, including text nodes."		self call: 'contents'!

css: aDictionary	"Set one or more CSS properties for the set of matched elements."		self call: 'css' with: aDictionary!

cssAt: aKey	"Get the value of a style property for the first element in the set of matched elements."		self call: 'css' with: aKey!

cssAt: aKey put: aValue	"Set one or more CSS properties for the set of matched elements."		self call: 'css' with: aKey with: aValue!

dataAt: anObject	"Store arbitrary data associated with the matched elements."		self call: 'data' with: anObject!

dataAt: aKey put: aValue	"Store arbitrary data associated with the matched elements."		self call: 'data' with: aKey with: aValue!

delay: aDuration 	"Set a timer to delay execution of subsequent items in the queue."		self call: 'delay' with: aDuration!

delay: aDuration queue: aString	"Set a timer to delay execution of subsequent items in the queue."		self call: 'delay' with: aDuration with: aString!

delegate: aSelectorString on: anEventString data: aDataObject do: aHandlerObject	"Attach a handler to the event anEventString for all elements which match the selector aSelectorString, now or in the future, based upon a specific set of root elements."		self call: 'delegate' withArguments: (Array with: aSelectorString with: anEventString with: aDataObject with: aHandlerObject asFunction)!

delegate: aSelectorString on: anEventString do: aHandlerObject	"Attach a handler to the event anEventString for all elements which match the selector aSelectorString, now or in the future, based upon a specific set of root elements."		self call: 'delegate' withArguments: (Array with: aSelectorString with: anEventString with: aHandlerObject asFunction)!

dequeue	"Execute the next function on the queue for the matched elements."		self call: 'dequeue'!

dequeue: aString	"Execute the next function on the queue for the matched elements."		self call: 'dequeue' with: aString!

detach	"Remove the set of matched elements from the DOM."		self call: 'detach'!

detach: aString 	"Remove the set of matched elements from the DOM."		self call: 'detach' with: aString!

do: anObject	"Iterate over a jQuery object, executing a function for each matched element."		self each: (self iteratorFor: anObject return: false)!

each: anObject	"Iterate over a jQuery object, executing a function for each matched element."		self call: 'each' with: anObject asFunction!

empty	"Remove all child nodes of the set of matched elements from the DOM."		self call: 'empty'!

end	"End the most recent filtering operation in the current chain and return the set of matched elements to its previous state."		self call: 'end'!

eq: anInteger	"Reduce the set of matched elements to the one at the specified index."		self call: 'eq' with: anInteger!

fade: aDuration to: anNumber	"Adjust the opacity of the matched elements."		self call: 'fadeTo' with: aDuration with: anNumber!

fade: aDuration to: anNumber callback: anObject	"Adjust the opacity of the matched elements."		self call: 'fadeTo' with: aDuration with: anNumber with: anObject asFunction!

fadeIn: aDuration	"Display the matched elements by fading them to opaque."		self call: 'fadeIn' with: aDuration!

fadeIn: aDuration callback: anObject	"Display the matched elements by fading them to opaque."		self call: 'fadeIn' with: aDuration with: anObject asFunction!

fadeOut: aDuration	"Hide the matched elements by fading them to transparent."		self call: 'fadeOut' with: aDuration!

fadeOut: aDuration callback: anObject	"Hide the matched elements by fading them to transparent."		self call: 'fadeOut' with: aDuration with: anObject asFunction!

fadeToggle: aDuration	"Display or hide the matched elements by animating their opacity."		self call: 'fadeToggle' with: aDuration!

fadeToggle: aDuration callback: anObject	"Display or hide the matched elements by animating their opacity."		self call: 'fadeToggle' with: aDuration with: anObject asFunction!

filter: aString	"Reduce the set of matched elements to the one at the specified index."		self call: 'filter' with: aString!

find: aString	"Get the descendants of each element in the current set of matched elements, filtered by a selector."		self call: 'find' with: aString!

first	"Reduce the set of matched elements to the first in the set."		self call: 'first'!

get	"Retrieve the DOM elements matched by the jQuery object."		self call: 'get'!

get: anInteger	"Retrieve the DOM elements matched by the jQuery object."		self call: 'get' with: anInteger!

has: aString	"Check to see if a DOM node, or selector set of DOM elements, is within another DOM node."		self call: 'has' with: aString!

hasClass: aString 	"Determine whether any of the matched elements are assigned the given class."		self call: 'hasClass' with: aString!

height	"Get the current computed height for the first element in the set of matched elements."		self call: 'height'!

height: anInteger	"Set the CSS height of every matched element."		self call: 'height' with: anInteger!

hide 	"Hide the matched elements."		self call: 'hide'!

hide: aDuration 	"Hide the matched elements."		self call: 'hide' with: aDuration!

hide: aDuration callback: anObject	"Hide the matched elements."		self call: 'hide' with: aDuration with: anObject asFunction!

hover: anInObject out: anOutObject	"Bind two handlers to the matched elements, to be executed when the mouse pointer enters and leaves the elements."		self call: 'hover' with: anInObject asFunction with: anOutObject asFunction!

html	"Get the HTML contents of the first element in the set of matched elements."		self call: 'html'!

html: aRenderable 	"Set the HTML contents of matched elements."		self call: 'html' with: (self render: aRenderable)!

id: aString	self setArguments: (Array with: '#' , aString)!

index	"Answer an integer indicating the position of the first element within the jQuery object relative to its sibling elements."		self call: 'index'!

index: anObject	"Search for a given element from among the matched elements."		self call: 'index' with: anObject!

innerHeight	"Get the current computed height for the first element in the set of matched elements, including padding but not border."		self call: 'innerHeight'!

innerWidth	"Get the current computed width for the first element in the set of matched elements, including padding but not border."		self call: 'innerWidth'!

insertAfter: anObject 	"Insert every element in the set of matched elements after the target."		self call: 'insertAfter' with: anObject!

insertBefore: anObject 	"Insert every element in the set of matched elements before the target."		self call: 'insertBefore' with: anObject!

is: aString	"Check the current matched set of elements against a selector and return true if at least one of these elements matches the selector."		self call: 'is' with: aString!

iteratorFor: anObject return: aBoolean	| this |	anObject isBlock		ifFalse: [ ^ anObject asFunction return: true ].	this := (JQueryClass context: self renderContext)			rendererClass: self rendererClass;			this.	anObject argumentCount = 1		ifTrue: [ anObject value: this ]		ifFalse: [ anObject value: this value: (JSStream argument: 0) ].	^ this asFunction return: aBoolean!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	JSStream encodeArguments: arguments on: aStream!

last	"Reduce the set of matched elements to the final one in the set."		self call: 'last'!

length	"Return the number of DOM elements matched by the jQuery object."		self access: 'length'!

load	"Load data from the server and place the returned HTML into the matched element."		^ self create: JQLoad!

map: anObject	"Pass each element in the current matched set through a function, producing a new jQuery object containing the return values.."		self call: 'map' with: anObject asFunction!

next	"Get the immediately following sibling of each element in the set of matched elements, optionally filtered by a selector."		self call: 'next'!

next: aString	"Get the immediately following sibling of each element in the set of matched elements, optionally filtered by a selector."		self call: 'next' with: aString!

nextAll	"Get all following siblings of each element in the set of matched elements, optionally filtered by a selector."		self call: 'nextAll'!

nextAll: aString	"Get all following siblings of each element in the set of matched elements, optionally filtered by a selector."		self call: 'nextAll' with: aString!

nextUntil: aString	"Get all following siblings of each element up to but not including the element matched by the selector."		self call: 'nextUntil' with: aString!

not: aString	"Remove elements from the set of matched elements."		self call: 'not' with: aString!

off: aString	"Remove an event handler."		self call: 'off' with: aString!

off: aString selector: aSelector	"Remove an event handler."		self call: 'off' with: aString with: aSelector!

offset	"Get the current coordinates of the first element in the set of matched elements, relative to the document."		self call: 'offset'!

offsetLeft	"Get the current left offset of the first matched element relative to the viewport."		self call: 'offset'; access: 'left'!

offsetParent	"Get the closest ancestor element that is positioned."		self call: 'offsetParent'!

offsetTop	"Get the current top offset of the first matched element relative to the viewport."		self call: 'offset'; access: 'top'!

on: aString do: anObject	"Attach an event handler function for one or more events to the selected elements."		self call: 'on' with: aString with: anObject asFunction!

on: aString selector: aSelector do: anObject	"Attach an event handler function for one or more events to the selected elements."		self call: 'on' with: aString with: aSelector with: anObject asFunction!

onAjaxComplete: anObject	"Register a handler to be called when Ajax requests complete."		self call: 'ajaxComplete' with: anObject asFunction!

onAjaxError: anObject	"Register a handler to be called when Ajax requests complete with an error."		self call: 'ajaxError' with: anObject asFunction!

onAjaxSend: anObject	"Show a message before an Ajax request is sent."		self call: 'ajaxSend' with: anObject asFunction!

onAjaxStart: anObject	"Register a handler to be called when the first Ajax request begins."		self call: 'ajaxStart' with: anObject asFunction!

onAjaxStop: anObject	"Hide a loading message after all the Ajax requests have stopped."		self call: 'ajaxStop' with: anObject asFunction!

onAjaxSuccess: anObject	"Show a message when an Ajax request completes successfully."		self call: 'ajaxSuccess' with: anObject asFunction!

onBlur: anObject	"Bind an event handler to the 'blur' JavaScript event, or trigger that event on an element."		self call: 'blur' with: anObject asFunction!

onChange: anObject	"Bind an event handler to the 'change' JavaScript event, or trigger that event on an element."		self call: 'change' with: anObject asFunction!

onClick: anObject	"Bind an event handler to the 'click' JavaScript event, or trigger that event on an element."		self call: 'click' with: anObject asFunction!

onDoubleClick: anObject	"Bind an event handler to the 'dblclick' JavaScript event, or trigger that event on an element."		self call: 'dblclick' with: anObject asFunction!

one: aString do: anObject 	"Attach a handler to an event for the elements. The handler is executed at most once."		self call: 'one' with: aString with: anObject asFunction!

onError: anObject	"Bind an event handler to the 'error' JavaScript event."		self on: 'error' do: anObject asFunction!

onFocus: anObject	"Bind an event handler to the 'focus' JavaScript event, or trigger that event on an element."		self call: 'focus' with: anObject asFunction!

onFocusIn: anObject	"Bind an event handler to the 'focusin' JavaScript event."		self call: 'focusin' with: anObject asFunction!

onFocusOut: anObject	"Bind an event handler to the 'focusout' JavaScript event."		self call: 'focusout' with: anObject asFunction!

onInput: anObject	"Bind an event handler to the 'input' JavaScript event, or trigger that event on an element."		self on: 'input' do: anObject asFunction!

onKeyDown: anObject	"Bind an event handler to the 'keydown' JavaScript event, or trigger that event on an element."		self call: 'keydown' with: anObject asFunction!

onKeyPress: anObject	"Bind an event handler to the 'keypress' JavaScript event, or trigger that event on an element."		self call: 'keypress' with: anObject asFunction!

onKeyUp: anObject	"Bind an event handler to the 'keyup' JavaScript event, or trigger that event on an element."		self call: 'keyup' with: anObject asFunction!

onLoad: anObject	"Bind an event handler to the 'load' JavaScript event."		self on: 'load' do: anObject asFunction!

onMouseDown: anObject	"Bind an event handler to the 'mousedown' JavaScript event, or trigger that event on an element."		self call: 'mousedown' with: anObject asFunction!

onMouseEnter: anObject	"Bind an event handler to be fired when the mouse enters an element, or trigger that handler on an element."		self call: 'mouseenter' with: anObject asFunction!

onMouseLeave: anObject	"Bind an event handler to be fired when the mouse leaves an element, or trigger that handler on an element."		self call: 'mouseleave' with: anObject asFunction!

onMouseMove: anObject	"Bind an event handler to the 'mousemove' JavaScript event, or trigger that event on an element."		self call: 'mousemove' with: anObject asFunction!

onMouseOut: anObject	"Bind an event handler to the 'mouseout' JavaScript event, or trigger that event on an element."		self call: 'mouseout' with: anObject asFunction!

onMouseOver: anObject	"Bind an event handler to the 'mouseover' JavaScript event, or trigger that event on an element."		self call: 'mouseover' with: anObject asFunction!

onMouseUp: anObject	"Bind an event handler to the 'mouseup' JavaScript event, or trigger that event on an element."		self call: 'mouseup' with: anObject asFunction!

onResize: anObject	"Bind an event handler to the 'resize' JavaScript event, or trigger that event on an element."		self call: 'resize' with: anObject asFunction!

onScroll: anObject	"Bind an event handler to the 'scroll' JavaScript event, or trigger that event on an element."		self call: 'scroll' with: anObject asFunction!

onSelect: anObject	"Bind an event handler to the 'select' JavaScript event, or trigger that event on an element."		self call: 'select' with: anObject asFunction!

onSubmit: anObject	"Bind an event handler to the 'submit' JavaScript event, or trigger that event on an element."		self call: 'submit' with: anObject asFunction!

onUnload: anObject	"Binds a function to the unload event of each matched element."		self on: 'unload' do: anObject asFunction!

outerHeight	"Get the current computed height for the first element in the set of matched elements, including padding and border."		self call: 'outerHeight'!

outerWidth	"Get the current computed width for the first element in the set of matched elements, including padding and border."		self call: 'outerWidth'!

parent	"Get a set of elements containing the unique parents of the matched set of elements."		self call: 'parent'!

parent: aString	"Get a set of elements containing the unique parents of the matched set of elements."		self call: 'parent' with: aString!

parents	"Get the ancestors of each element in the current set of matched elements, optionally filtered by a selector."		self call: 'parents'!

parents: aString	"Get the ancestors of each element in the current set of matched elements, optionally filtered by a selector."		self call: 'parents' with: aString!

parentsUntil: aString	"Get the ancestors of each element in the current set of matched elements, up to but not including the element matched by the selector."		self call: 'parentsUntil' with: aString!

position	"Get the current coordinates of the first element in the set of matched elements, relative to the offset parent."		self call: 'position'!

positionLeft	"Gets the left position of an element relative to its offset parent."		self position; access: 'left'!

positionTop	"Gets the top position of an element relative to its offset parent."		self position; access: 'top'!

prepend: aRenderable 	"Insert content, specified by the parameter, to the beginning of each element in the set of matched elements."		self call: 'prepend' with: (self render: aRenderable)!

prependTo: anObject 	"Insert every element in the set of matched elements to the beginning of the target."		self call: 'prependTo' with: anObject!

previous	"Get the immediately preceding sibling of each element in the set of matched elements, optionally filtered by a selector."		self call: 'prev'!

previous: aString	"Get the immediately preceding sibling of each element in the set of matched elements, optionally filtered by a selector."		self call: 'prev' with: aString!

previousAll	"Get all preceding siblings of each element in the set of matched elements, optionally filtered by a selector."		self call: 'prevAll'!

previousAll: aString	"Get all preceding siblings of each element in the set of matched elements, optionally filtered by a selector."		self call: 'prevAll' with: aString!

previousUntil: aString	"Get all preceding siblings of each element up to but not including the element matched by the selector."		self call: 'prevUntil' with: aString!

properties: aDictionary 	"Set one or more properties for the set of matched elements."		self call: 'prop' with: aDictionary!

propertyAt: aKey 	"Get the value of a property for the first element in the set of matched elements."	self call: 'prop' with: aKey!

propertyAt: aKey put: aValue	"Set a property for the set of matched elements."		self call: 'prop' with: aKey with: aValue!

queue	"Show the queue of functions to be executed on the matched elements."		self call: 'queue'!

queue: aString	"Manipulate the queue of functions to be executed on the matched elements."		self call: 'queue' with: aString!

queue: aString do: anObject	"Manipulate the queue of functions to be executed on the matched elements."		self call: 'queue' with: aString with: anObject asFunction!

remove	"Remove the set of matched elements from the DOM."		self call: 'remove'!

remove: aString 	"Remove the set of matched elements from the DOM."		self call: 'remove' with: aString!

removeAttribute: aKey 	"Remove an attribute from each element in the set of matched elements."	self call: 'removeAttr' with: aKey!

removeClass: aString 	"Remove one or all classes from each element in the set of matched elements."		self call: 'removeClass' with: aString!

removeDataAt: aKey	"Remove a previously-stored piece of data."		self call: 'removeData' with: aKey!

removeProperty: aKey 	"Remove a property from each element in the set of matched elements."	self call: 'removeProp' with: aKey!

replaceAll: aString 	"A selector expression indicating which element(s) to replace."		self call: 'replaceAll' with: aString!

replaceWith: aRenderable 	"Replace each element in the set of matched elements with the provided new content."		self call: 'replaceWith' with: (self render: aRenderable)!

scrollLeft	"Get the current horizontal position of the scroll bar for the first element in the set of matched elements."		self call: 'scrollLeft'!

scrollLeft: anInteger	"Set the current horizontal position of the scroll bar for the first element in the set of matched elements."		self call: 'scrollLeft' with: anInteger!

scrollTop	"Get the current vertical position of the scroll bar for the first element in the set of matched elements."		self call: 'scrollTop'!

scrollTop: anInteger	"Set the current vertical position of the scroll bar for the first element in the set of matched elements."		self call: 'scrollTop' with: anInteger!

serialize	"Encode a set of form elements as a string for submission."		self call: 'serialize'!

serializeArray	"Encode a set of form elements as an array of names and values."		self call: 'serializeArray'!

setArguments: anArray	arguments := anArray!

show	"Display the matched elements."		self call: 'show'!

show: aDuration 	"Display the matched elements."		self call: 'show' with: aDuration!

show: aDuration callback: anObject	"Display the matched elements."		self call: 'show' with: aDuration with: anObject asFunction!

siblings	"Get the siblings of each element in the set of matched elements, optionally filtered by a selector."		self call: 'siblings'!

siblings: aString	"Get the siblings of each element in the set of matched elements, optionally filtered by a selector."		self call: 'siblings' with: aString!

sliceFrom: aStartInteger	"Reduce the set of matched elements to a subset specified by a range of indices."		self call: 'slice' with: aStartInteger!

sliceFrom: aStartInteger to: aStopInteger	"Reduce the set of matched elements to a subset specified by a range of indices."		self call: 'slice' with: aStartInteger with: aStopInteger!

slideDown: aDuration	"Display the matched elements with a sliding motion."		self call: 'slideDown' with: aDuration!

slideDown: aDuration callback: anObject	"Display the matched elements with a sliding motion."		self call: 'slideDown' with: aDuration with: anObject asFunction!

slideToggle: aDuration	"Display or hide the matched elements with a sliding motion."		self call: 'slideToggle' with: aDuration!

slideToggle: aDuration callback: anObject	"Display or hide the matched elements with a sliding motion."		self call: 'slideToggle' with: aDuration with: anObject asFunction!

slideUp: aDuration	"Hide the matched elements with a sliding motion."		self call: 'slideUp' with: aDuration!

slideUp: aDuration callback: anObject	"Hide the matched elements with a sliding motion."		self call: 'slideUp' with: aDuration with: anObject asFunction!

stop	"Stop the currently-running animation on the matched elements."		self call: 'stop'!

text	"Get the combined text contents of each element in the set of matched elements, including their descendants."		self call: 'text'!

text: aString 	"Set the text contents of each element in the set of matched elements."		self call: 'text' with: aString!

toArray	"Retrieve all the DOM elements contained in the jQuery set, as an array.Retrieve all the DOM elements contained in the jQuery set, as an array."		self call: 'toArray'!

toggle	"Bind two or more handlers to the matched elements, to be executed on alternate clicks."		self call: 'toggle'!

toggle: anObject	self call: 'toggle' with: anObject!

toggle: aDuration callback: anObject	"Bind two or more handlers to the matched elements, to be executed on alternate clicks."		self call: 'toggle' with: aDuration with: anObject asFunction!

toggleClass: aStringOrFunction	"Add or remove a class from each element in the set of matched elements, depending on either the class's presence or the value of the switch argument."		self call: 'toggleClass' with: aStringOrFunction!

toggleClass: aStringOrFunction state: aBoolean	"Adds the specified class if the switch is true, removes the specified class if the switch is false."		self call: 'toggleClass' with: aStringOrFunction with: aBoolean!

trigger: aString	"Execute all handlers and behaviors attached to the matched elements for the given event type."		self call: 'trigger' with: aString!

triggerBlur	"Triggers the blur event of each matched element."		self call: 'blur'!

triggerChange	"Triggers the change event of each matched element."		self call: 'change'!

triggerClick	"Triggers the click event of each matched element."		self call: 'click'!

triggerDoubleClick	"Triggers the dblclick event of each matched element."		self call: 'dblclick'!

triggerError	"Triggers the error event of each matched element."		self call: 'error'!

triggerFocus	"Triggers the focus event of each matched element."		self call: 'focus'!

triggerHandler: aString	"Execute all handlers attached to an element for an event."		self call: 'triggerHandler' with: aString!

triggerKeyDown	"Triggers the keydown event of each matched element."		self call: 'keydown'!

triggerKeyPress	"Triggers the keypress event of each matched element."		self call: 'keypress'!

triggerKeyUp	"Triggers the keyup event of each matched element."		self call: 'keyup'!

triggerSelect	"Trigger the select event of each matched element."		self call: 'select'!

triggerSubmit	"Trigger the submit event of each matched element."		self call: 'submit'!

unbind: aString	"Remove a previously-attached event handler from the elements."	self 		greaseDeprecatedApi: 'JQueryInstance>>#bind:do:'		details: 'See https://jquery.com/upgrade-guide/3.0/#deprecated-bind-and-delegate'.		self call: 'unbind' with: aString!

undelegate	"Remove a handler from the event for all elements which match the current selector, now or in the future, based upon a specific set of root elements."	self 		greaseDeprecatedApi: 'JQueryInstance>>#bind:do:'		details: 'See https://jquery.com/upgrade-guide/3.0/#deprecated-bind-and-delegate'.		self call: 'undelegate'!

undelegate: aSelectorString on: anEventString	"Remove a handler from the event for all elements which match the current selector, now or in the future, based upon a specific set of root elements."	self 		greaseDeprecatedApi: 'JQueryInstance>>#bind:do:'		details: 'See https://jquery.com/upgrade-guide/3.0/#deprecated-bind-and-delegate'.		self call: 'undelegate' with: aSelectorString with: anEventString!

unwrap	"Remove the parents of the set of matched elements from the DOM, leaving the matched elements in their place."		self call: 'unwrap'!

value	"Get the current value of the first element in the set of matched elements."		self call: 'val'!

value: anObject 	"Set the  value of all matched elements."		self call: 'val' with: anObject!

width	"Get the current computed width for the first element in the set of matched elements."		self call: 'width'!

width: anInteger	"Get the width for all matched elements."		self call: 'width' with: anInteger!

wrap: aRenderable 	"Wrap an HTML structure around each element in the set of matched elements."		self call: 'wrap' with: (self render: aRenderable)!

wrapAll: aRenderable 	"Wrap an HTML structure around all elements in the set of matched elements."		self call: 'wrapAll' with: (self render: aRenderable)!

wrapInner: aRenderable 	"Wrap an HTML structure around the content of each element in the set of matched elements."		self call: 'wrapInner' with: (self render: aRenderable)! !
!JQueryInstance categoriesFor: #add:!navigation!public! !
!JQueryInstance categoriesFor: #add:context:!navigation!public! !
!JQueryInstance categoriesFor: #addBack!chaining!public! !
!JQueryInstance categoriesFor: #addClass:!classes!public! !
!JQueryInstance categoriesFor: #after:!modifying!public! !
!JQueryInstance categoriesFor: #animate!effects!public! !
!JQueryInstance categoriesFor: #append:!modifying!public! !
!JQueryInstance categoriesFor: #appendTo:!modifying!public! !
!JQueryInstance categoriesFor: #at:!accessors/smalltalk!public! !
!JQueryInstance categoriesFor: #atAll!accessors/smalltalk!public! !
!JQueryInstance categoriesFor: #attributeAt:!attributes!public! !
!JQueryInstance categoriesFor: #attributeAt:put:!attributes!public! !
!JQueryInstance categoriesFor: #attributes:!attributes!public! !
!JQueryInstance categoriesFor: #before:!modifying!public! !
!JQueryInstance categoriesFor: #bind:data:do:!events!public! !
!JQueryInstance categoriesFor: #bind:do:!events!public! !
!JQueryInstance categoriesFor: #children!navigation!public! !
!JQueryInstance categoriesFor: #children:!navigation!public! !
!JQueryInstance categoriesFor: #clearQueue!effects!public! !
!JQueryInstance categoriesFor: #clearQueue:!effects!public! !
!JQueryInstance categoriesFor: #clone!copying!public! !
!JQueryInstance categoriesFor: #cloneAll!copying!public! !
!JQueryInstance categoriesFor: #closest!navigation!public! !
!JQueryInstance categoriesFor: #closest:!navigation!public! !
!JQueryInstance categoriesFor: #collect:!accessors/smalltalk!public! !
!JQueryInstance categoriesFor: #contents!navigation!public! !
!JQueryInstance categoriesFor: #css:!css!public! !
!JQueryInstance categoriesFor: #cssAt:!css!public! !
!JQueryInstance categoriesFor: #cssAt:put:!css!public! !
!JQueryInstance categoriesFor: #dataAt:!data!public! !
!JQueryInstance categoriesFor: #dataAt:put:!data!public! !
!JQueryInstance categoriesFor: #delay:!effects!public! !
!JQueryInstance categoriesFor: #delay:queue:!effects!public! !
!JQueryInstance categoriesFor: #delegate:on:data:do:!events!public! !
!JQueryInstance categoriesFor: #delegate:on:do:!events!public! !
!JQueryInstance categoriesFor: #dequeue!data!public! !
!JQueryInstance categoriesFor: #dequeue:!data!public! !
!JQueryInstance categoriesFor: #detach!modifying!public! !
!JQueryInstance categoriesFor: #detach:!modifying!public! !
!JQueryInstance categoriesFor: #do:!accessors/smalltalk!public! !
!JQueryInstance categoriesFor: #each:!accessors!public! !
!JQueryInstance categoriesFor: #empty!modifying!public! !
!JQueryInstance categoriesFor: #end!chaining!public! !
!JQueryInstance categoriesFor: #eq:!accessors!public! !
!JQueryInstance categoriesFor: #fade:to:!effects!public! !
!JQueryInstance categoriesFor: #fade:to:callback:!effects!public! !
!JQueryInstance categoriesFor: #fadeIn:!effects!public! !
!JQueryInstance categoriesFor: #fadeIn:callback:!effects!public! !
!JQueryInstance categoriesFor: #fadeOut:!effects!public! !
!JQueryInstance categoriesFor: #fadeOut:callback:!effects!public! !
!JQueryInstance categoriesFor: #fadeToggle:!effects!public! !
!JQueryInstance categoriesFor: #fadeToggle:callback:!effects!public! !
!JQueryInstance categoriesFor: #filter:!filtering!public! !
!JQueryInstance categoriesFor: #find:!navigation!public! !
!JQueryInstance categoriesFor: #first!filtering!public! !
!JQueryInstance categoriesFor: #get!accessors!public! !
!JQueryInstance categoriesFor: #get:!accessors!public! !
!JQueryInstance categoriesFor: #has:!filtering!public! !
!JQueryInstance categoriesFor: #hasClass:!classes!public! !
!JQueryInstance categoriesFor: #height!css!public! !
!JQueryInstance categoriesFor: #height:!css!public! !
!JQueryInstance categoriesFor: #hide!effects!public! !
!JQueryInstance categoriesFor: #hide:!effects!public! !
!JQueryInstance categoriesFor: #hide:callback:!effects!public! !
!JQueryInstance categoriesFor: #hover:out:!events!public! !
!JQueryInstance categoriesFor: #html!manipulating!public! !
!JQueryInstance categoriesFor: #html:!manipulating!public! !
!JQueryInstance categoriesFor: #id:!private! !
!JQueryInstance categoriesFor: #index!accessors!public! !
!JQueryInstance categoriesFor: #index:!accessors!public! !
!JQueryInstance categoriesFor: #innerHeight!css!public! !
!JQueryInstance categoriesFor: #innerWidth!css!public! !
!JQueryInstance categoriesFor: #insertAfter:!modifying!public! !
!JQueryInstance categoriesFor: #insertBefore:!modifying!public! !
!JQueryInstance categoriesFor: #is:!filtering!public! !
!JQueryInstance categoriesFor: #iteratorFor:return:!private! !
!JQueryInstance categoriesFor: #javascriptContentOn:!printing!public! !
!JQueryInstance categoriesFor: #last!filtering!public! !
!JQueryInstance categoriesFor: #length!private! !
!JQueryInstance categoriesFor: #load!ajax!public! !
!JQueryInstance categoriesFor: #map:!accessors!public! !
!JQueryInstance categoriesFor: #next!navigation!public! !
!JQueryInstance categoriesFor: #next:!navigation!public! !
!JQueryInstance categoriesFor: #nextAll!navigation!public! !
!JQueryInstance categoriesFor: #nextAll:!navigation!public! !
!JQueryInstance categoriesFor: #nextUntil:!navigation!public! !
!JQueryInstance categoriesFor: #not:!filtering!public! !
!JQueryInstance categoriesFor: #off:!events!public! !
!JQueryInstance categoriesFor: #off:selector:!events!public! !
!JQueryInstance categoriesFor: #offset!css!public! !
!JQueryInstance categoriesFor: #offsetLeft!css!public! !
!JQueryInstance categoriesFor: #offsetParent!css!public! !
!JQueryInstance categoriesFor: #offsetTop!css!public! !
!JQueryInstance categoriesFor: #on:do:!events!public! !
!JQueryInstance categoriesFor: #on:selector:do:!events!public! !
!JQueryInstance categoriesFor: #onAjaxComplete:!ajax/events!public! !
!JQueryInstance categoriesFor: #onAjaxError:!ajax/events!public! !
!JQueryInstance categoriesFor: #onAjaxSend:!ajax/events!public! !
!JQueryInstance categoriesFor: #onAjaxStart:!ajax/events!public! !
!JQueryInstance categoriesFor: #onAjaxStop:!ajax/events!public! !
!JQueryInstance categoriesFor: #onAjaxSuccess:!ajax/events!public! !
!JQueryInstance categoriesFor: #onBlur:!events/register!public! !
!JQueryInstance categoriesFor: #onChange:!events/register!public! !
!JQueryInstance categoriesFor: #onClick:!events/register!public! !
!JQueryInstance categoriesFor: #onDoubleClick:!events/register!public! !
!JQueryInstance categoriesFor: #one:do:!events!public! !
!JQueryInstance categoriesFor: #onError:!events/register!public! !
!JQueryInstance categoriesFor: #onFocus:!events/register!public! !
!JQueryInstance categoriesFor: #onFocusIn:!events/register!public! !
!JQueryInstance categoriesFor: #onFocusOut:!events/register!public! !
!JQueryInstance categoriesFor: #onInput:!events/register!public! !
!JQueryInstance categoriesFor: #onKeyDown:!events/register!public! !
!JQueryInstance categoriesFor: #onKeyPress:!events/register!public! !
!JQueryInstance categoriesFor: #onKeyUp:!events/register!public! !
!JQueryInstance categoriesFor: #onLoad:!events/register!public! !
!JQueryInstance categoriesFor: #onMouseDown:!events/register!public! !
!JQueryInstance categoriesFor: #onMouseEnter:!events/register!public! !
!JQueryInstance categoriesFor: #onMouseLeave:!events/register!public! !
!JQueryInstance categoriesFor: #onMouseMove:!events/register!public! !
!JQueryInstance categoriesFor: #onMouseOut:!events/register!public! !
!JQueryInstance categoriesFor: #onMouseOver:!events/register!public! !
!JQueryInstance categoriesFor: #onMouseUp:!events/register!public! !
!JQueryInstance categoriesFor: #onResize:!events/register!public! !
!JQueryInstance categoriesFor: #onScroll:!events/register!public! !
!JQueryInstance categoriesFor: #onSelect:!events/register!public! !
!JQueryInstance categoriesFor: #onSubmit:!events/register!public! !
!JQueryInstance categoriesFor: #onUnload:!events/register!public! !
!JQueryInstance categoriesFor: #outerHeight!css!public! !
!JQueryInstance categoriesFor: #outerWidth!css!public! !
!JQueryInstance categoriesFor: #parent!navigation!public! !
!JQueryInstance categoriesFor: #parent:!navigation!public! !
!JQueryInstance categoriesFor: #parents!navigation!public! !
!JQueryInstance categoriesFor: #parents:!navigation!public! !
!JQueryInstance categoriesFor: #parentsUntil:!navigation!public! !
!JQueryInstance categoriesFor: #position!css!public! !
!JQueryInstance categoriesFor: #positionLeft!css!public! !
!JQueryInstance categoriesFor: #positionTop!css!public! !
!JQueryInstance categoriesFor: #prepend:!modifying!public! !
!JQueryInstance categoriesFor: #prependTo:!modifying!public! !
!JQueryInstance categoriesFor: #previous!navigation!public! !
!JQueryInstance categoriesFor: #previous:!navigation!public! !
!JQueryInstance categoriesFor: #previousAll!navigation!public! !
!JQueryInstance categoriesFor: #previousAll:!navigation!public! !
!JQueryInstance categoriesFor: #previousUntil:!navigation!public! !
!JQueryInstance categoriesFor: #properties:!attributes!public! !
!JQueryInstance categoriesFor: #propertyAt:!attributes!public! !
!JQueryInstance categoriesFor: #propertyAt:put:!attributes!public! !
!JQueryInstance categoriesFor: #queue!data!public! !
!JQueryInstance categoriesFor: #queue:!data!public! !
!JQueryInstance categoriesFor: #queue:do:!data!public! !
!JQueryInstance categoriesFor: #remove!modifying!public! !
!JQueryInstance categoriesFor: #remove:!modifying!public! !
!JQueryInstance categoriesFor: #removeAttribute:!attributes!public! !
!JQueryInstance categoriesFor: #removeClass:!classes!public! !
!JQueryInstance categoriesFor: #removeDataAt:!data!public! !
!JQueryInstance categoriesFor: #removeProperty:!attributes!public! !
!JQueryInstance categoriesFor: #replaceAll:!modifying!public! !
!JQueryInstance categoriesFor: #replaceWith:!modifying!public! !
!JQueryInstance categoriesFor: #scrollLeft!css!public! !
!JQueryInstance categoriesFor: #scrollLeft:!css!public! !
!JQueryInstance categoriesFor: #scrollTop!css!public! !
!JQueryInstance categoriesFor: #scrollTop:!css!public! !
!JQueryInstance categoriesFor: #serialize!ajax!public! !
!JQueryInstance categoriesFor: #serializeArray!ajax!public! !
!JQueryInstance categoriesFor: #setArguments:!initialization!public! !
!JQueryInstance categoriesFor: #show!effects!public! !
!JQueryInstance categoriesFor: #show:!effects!public! !
!JQueryInstance categoriesFor: #show:callback:!effects!public! !
!JQueryInstance categoriesFor: #siblings!navigation!public! !
!JQueryInstance categoriesFor: #siblings:!navigation!public! !
!JQueryInstance categoriesFor: #sliceFrom:!filtering!public! !
!JQueryInstance categoriesFor: #sliceFrom:to:!filtering!public! !
!JQueryInstance categoriesFor: #slideDown:!effects!public! !
!JQueryInstance categoriesFor: #slideDown:callback:!effects!public! !
!JQueryInstance categoriesFor: #slideToggle:!effects!public! !
!JQueryInstance categoriesFor: #slideToggle:callback:!effects!public! !
!JQueryInstance categoriesFor: #slideUp:!effects!public! !
!JQueryInstance categoriesFor: #slideUp:callback:!effects!public! !
!JQueryInstance categoriesFor: #stop!effects!public! !
!JQueryInstance categoriesFor: #text!manipulating!public! !
!JQueryInstance categoriesFor: #text:!manipulating!public! !
!JQueryInstance categoriesFor: #toArray!accessors!public! !
!JQueryInstance categoriesFor: #toggle!effects!public! !
!JQueryInstance categoriesFor: #toggle:!effects!public! !
!JQueryInstance categoriesFor: #toggle:callback:!effects!public! !
!JQueryInstance categoriesFor: #toggleClass:!classes!public! !
!JQueryInstance categoriesFor: #toggleClass:state:!classes!public! !
!JQueryInstance categoriesFor: #trigger:!events!public! !
!JQueryInstance categoriesFor: #triggerBlur!events/trigger!public! !
!JQueryInstance categoriesFor: #triggerChange!events/trigger!public! !
!JQueryInstance categoriesFor: #triggerClick!events/trigger!public! !
!JQueryInstance categoriesFor: #triggerDoubleClick!events/trigger!public! !
!JQueryInstance categoriesFor: #triggerError!events/trigger!public! !
!JQueryInstance categoriesFor: #triggerFocus!events/trigger!public! !
!JQueryInstance categoriesFor: #triggerHandler:!events!public! !
!JQueryInstance categoriesFor: #triggerKeyDown!events/trigger!public! !
!JQueryInstance categoriesFor: #triggerKeyPress!events/trigger!public! !
!JQueryInstance categoriesFor: #triggerKeyUp!events/trigger!public! !
!JQueryInstance categoriesFor: #triggerSelect!events/trigger!public! !
!JQueryInstance categoriesFor: #triggerSubmit!events/trigger!public! !
!JQueryInstance categoriesFor: #unbind:!events!public! !
!JQueryInstance categoriesFor: #undelegate!events!public! !
!JQueryInstance categoriesFor: #undelegate:on:!events!public! !
!JQueryInstance categoriesFor: #unwrap!modifying!public! !
!JQueryInstance categoriesFor: #value!manipulating!public! !
!JQueryInstance categoriesFor: #value:!manipulating!public! !
!JQueryInstance categoriesFor: #width!css!public! !
!JQueryInstance categoriesFor: #width:!css!public! !
!JQueryInstance categoriesFor: #wrap:!modifying!public! !
!JQueryInstance categoriesFor: #wrapAll:!modifying!public! !
!JQueryInstance categoriesFor: #wrapInner:!modifying!public! !

!JQueryInstance class methodsFor!

context: aRenderContext constructor: anArray	^ (self context: aRenderContext) setArguments: anArray! !
!JQueryInstance class categoriesFor: #context:constructor:!instance creation!public! !

