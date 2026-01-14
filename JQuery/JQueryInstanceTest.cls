"Filed out from Dolphin Smalltalk"!

JQueryTest subclass: #JQueryInstanceTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQueryInstanceTest guid: (GUID fromString: '{eb66ced4-e2ca-4fa0-b0d5-f5633497dca8}')!

JQueryInstanceTest comment: ''!

!JQueryInstanceTest categoriesForClass!JQuery-Tests-Core-Unit! !

!JQueryInstanceTest methodsFor!

testAdd	self		assert: ((self jQuery: 'div') add: 'p')		equals: self function , '("div").add("p")'.	self		assert: ((self jQuery: 'div') add: 'p' context: '#foo')		equals: self function , '("div").add("p","#foo")'!

testAddBack	self		assert: ((self jQuery: 'div') find: 'p'; addBack; addClass: 'border')		equals: self function , '("div").find("p").addBack().addClass("border")'!

testAddClass	self		assert: ((self jQuery: 'p:last') addClass: 'selected')		equals: self function , '("p:last").addClass("selected")'!

testAfter	self		assert: ((self jQuery: 'p') after: [ :html | html strong: 'Hello' ])		equals: self function , '("p").after("<strong>Hello</strong>")'.	self		assert: ((self jQuery: 'span') insertAfter: '#foo')		equals: self function , '("span").insertAfter("#foo")'!

testAppend	self		assert: ((self jQuery: 'p') append: [ :html | html strong: 'Hello' ])		equals: self function , '("p").append("<strong>Hello</strong>")'.	self		assert: ((self jQuery: 'span') appendTo: '#foo')		equals: self function , '("span").appendTo("#foo")'!

testAt	self		assert: ((self jQuery: 'div') at: 1)		equals: self function , '("div").get(1)'!

testAtAll	self		assert: ((self jQuery: 'div') atAll)		equals: self function , '("div").get()'!

testAttributeAt	self		assert: ((self jQuery: 'em') attributeAt: 'title')		equals: self function , '("em").attr("title")'!

testAttributeAtPut	self		assert: ((self jQuery: 'button:gt(1)') attributeAt: 'disabled' put: true)		equals: self function , '("button:gt(1)").attr("disabled",true)'!

testAttributes	self 		assert: ((self jQuery: 'img') attributes: (GRSmallDictionary2 new				at: 'src'					put: '/images/hat.gif';				at: 'title'					put: 'jQuery';				at: 'alt'					put: 'jQuery Logo';				yourself))		equals: self function , '("img").attr({"src":"/images/hat.gif","title":"jQuery","alt":"jQuery Logo"})'!

testBefore	self		assert: ((self jQuery: 'p') before: [ :html | html strong: 'Hello' ])		equals: self function , '("p").before("<strong>Hello</strong>")'.	self		assert: ((self jQuery: 'span') insertBefore: '#foo')		equals: self function , '("span").insertBefore("#foo")'!

testBindDo	self		assert: ((self jQuery: 'a') bind: 'click' do: (self javascript alert: 'Clicked'))		equals: self function , '("a").bind("click",function(){alert("Clicked")})'.	self		assert: ((self jQuery: 'a') bind: 'click' data: Dictionary new do: (self javascript alert: 'Clicked'))		equals: self function , '("a").bind("click",{},function(){alert("Clicked")})'!

testChildren	self		assert: (((self jQuery: 'div')) children)		equals: self function , '("div").children()'.	self		assert: ((self jQuery: 'div') children: 'p')		equals: self function , '("div").children("p")'!

testClearQueue	self		assert: ((self jQuery: 'a') clearQueue)		equals: self function , '("a").clearQueue()'.	self		assert: ((self jQuery: 'a') clearQueue: 'name')		equals: self function , '("a").clearQueue("name")'!

testClone	self		assert: (((self jQuery: 'div')) clone)		equals: self function , '("div").clone()'!

testCloneAll	self		assert: (((self jQuery: 'div')) cloneAll)		equals: self function , '("div").clone(true)'!

testClosest	self		assert: (((self jQuery: 'div')) closest)		equals: self function , '("div").closest()'.	self		assert: ((self jQuery: 'div') closest: 'p')		equals: self function , '("div").closest("p")'!

testCollect	self		assert: ((self jQuery: 'div') collect: [ :each | each parent ])		equals: self function , '("div").map(function(){return ' , self function , '(this).parent()})'.	self		assert: ((self jQuery: 'div') collect: [ :each :index | each parents eq: index ])		equals: self function , '("div").map(function(){return ' , self function , '(this).parents().eq(arguments[0])})'!

testContents	self		assert: (((self jQuery: 'div')) contents)		equals: self function , '("div").contents()'!

testCss	self		assert: ((self jQuery: 'div') css: (Dictionary new			at: 'border' put: '1px solid red';			yourself))		equals: self function , '("div").css({"border":"1px solid red"})'!

testCssAt	self		assert: ((self jQuery: '#foo') cssAt: 'border')		equals: self function , '("#foo").css("border")'!

testCssAtPut	self		assert: ((self jQuery: 'p') cssAt: 'border' put: '1px solid red')		equals: self function , '("p").css("border","1px solid red")'!

testData	self		assert: ((self jQuery: 'div') dataAt: 'foo')		equals: self function , '("div").data("foo")'.	self		assert: ((self jQuery: 'div') dataAt: 'foo' put: 123)		equals: self function , '("div").data("foo",123)'.	self		assert: ((self jQuery: 'div') removeDataAt: 'foo')		equals: self function , '("div").removeData("foo")'!

testDataAt	self		assert: ((self jQuery: 'button') dataAt: 'foo')		equals: self function , '("button").data("foo")'!

testDataAtPut	self		assert: ((self jQuery: 'button') dataAt: 'foo' put: false)		equals: self function , '("button").data("foo",false)'!

testDelay	self		assert: ((self jQuery: 'a') delay: 1)		equals: self function , '("a").delay(1)'.	self		assert: ((self jQuery: 'a') delay: 2 queue: 'name')		equals: self function , '("a").delay(2,"name")'!

testDelegate	self		assert: ((self jQuery: 'table') delegate: 'td' on: 'hover' do: (self jQuery this toggleClass: 'hover'))		equals: self function , '("table").delegate("td","hover",function(){' , self function , '(this).toggleClass("hover")})'.	self		assert: ((self jQuery: 'table') delegate: 'td' on: 'hover' data: 123 do: (self jQuery this toggleClass: 'hover'))		equals: self function , '("table").delegate("td","hover",123,function(){' , self function , '(this).toggleClass("hover")})'!

testDequeue	self		assert: ((self jQuery: 'div') dequeue)		equals: self function , '("div").dequeue()'.	self		assert: ((self jQuery: 'div') dequeue: 'fx')		equals: self function , '("div").dequeue("fx")'!

testDetach	self		assert: ((self jQuery: 'p') detach)		equals: self function , '("p").detach()'.	self		assert: ((self jQuery: 'p') detach: '#foo')		equals: self function , '("p").detach("#foo")'!

testDo	self		assert: ((self jQuery: 'div')			do: [ :each | each remove ])		equals: self function , '("div").each(function(){' , self function , '(this).remove()})'.	self		assert: ((self jQuery: 'div')			do: [ :each :index | each text: index ])		equals: self function , '("div").each(function(){' , self function , '(this).text(arguments[0])})'!

testEmpty	self 		assert: (((self jQuery: 'div')) empty)		equals: self function , '("div").empty()'!

testEnd	self		assert: ((self jQuery: 'p') find: 'span'; addClass: 'border'; end; addClass: 'highlight')		equals: self function , '("p").find("span").addClass("border").end().addClass("highlight")'!

testEq	self		assert: ((self jQuery: 'div') eq: 4)		equals: self function , '("div").eq(4)'.	self		assert: ((self jQuery: 'div') eq: -1)		equals: self function , '("div").eq(-1)'!

testEven	self		assert: ((self jQuery: 'div') even)		equals: self function , '("div").even()'!

testEventsAjax	self		assert: ((self jQuery: 'a') onAjaxSuccess: self mock)		equals: self function , '("a").ajaxSuccess(function(){mock})'.	self		assert: ((self jQuery: 'a') onAjaxComplete: self mock)		equals: self function , '("a").ajaxComplete(function(){mock})'.	self		assert: ((self jQuery: 'a') onAjaxSend: self mock)		equals: self function , '("a").ajaxSend(function(){mock})'.	self		assert: ((self jQuery: 'a') onAjaxStart: self mock)		equals: self function , '("a").ajaxStart(function(){mock})'.	self		assert: ((self jQuery: 'a') onAjaxStop: self mock)		equals: self function , '("a").ajaxStop(function(){mock})'.	self		assert: ((self jQuery: 'a') onAjaxError: self mock)		equals: self function , '("a").ajaxError(function(){mock})'!

testEventsDom	self		assert: ((self jQuery: 'a') onBlur: self mock)		equals: self function , '("a").blur(function(){mock})'.	self		assert: ((self jQuery: 'a') onChange: self mock)		equals: self function , '("a").change(function(){mock})'.	self		assert: ((self jQuery: 'a') onClick: self mock)		equals: self function , '("a").click(function(){mock})'.	self		assert: ((self jQuery: 'a') onDoubleClick: self mock)		equals: self function , '("a").dblclick(function(){mock})'.	self		assert: ((self jQuery: 'a') onError: self mock)		equals: self function , '("a").on("error",function(){mock})'.	self		assert: ((self jQuery: 'a') onFocus: self mock)		equals: self function , '("a").focus(function(){mock})'.	self		assert: ((self jQuery: 'a') onFocusOut: self mock)		equals: self function , '("a").focusout(function(){mock})'.	self		assert: ((self jQuery: 'a') onFocusIn: self mock)		equals: self function , '("a").focusin(function(){mock})'.	self 		assert: ((self jQuery: 'a') onInput: self mock) 		equals: self function , '("a").on("input",function(){mock})'.	self		assert: ((self jQuery: 'a') onKeyDown: self mock)		equals: self function , '("a").keydown(function(){mock})'.	self		assert: ((self jQuery: 'a') onKeyPress: self mock)		equals: self function , '("a").keypress(function(){mock})'.	self		assert: ((self jQuery: 'a') onKeyUp: self mock)		equals: self function , '("a").keyup(function(){mock})'.	self		assert: ((self jQuery: 'a') onLoad: self mock)		equals: self function , '("a").on("load",function(){mock})'.	self		assert: ((self jQuery: 'a') onMouseDown: self mock)		equals: self function , '("a").mousedown(function(){mock})'.	self		assert: ((self jQuery: 'a') onMouseEnter: self mock)		equals: self function , '("a").mouseenter(function(){mock})'.	self		assert: ((self jQuery: 'a') onMouseLeave: self mock)		equals: self function , '("a").mouseleave(function(){mock})'.	self		assert: ((self jQuery: 'a') onMouseMove: self mock)		equals: self function , '("a").mousemove(function(){mock})'.	self		assert: ((self jQuery: 'a') onMouseOut: self mock)		equals: self function , '("a").mouseout(function(){mock})'.	self		assert: ((self jQuery: 'a') onMouseOver: self mock)		equals: self function , '("a").mouseover(function(){mock})'.	self		assert: ((self jQuery: 'a') onMouseUp: self mock)		equals: self function , '("a").mouseup(function(){mock})'.	self		assert: ((self jQuery: 'a') onResize: self mock)		equals: self function , '("a").resize(function(){mock})'.	self		assert: ((self jQuery: 'a') onScroll: self mock)		equals: self function , '("a").scroll(function(){mock})'.	self		assert: ((self jQuery: 'a') onSelect: self mock)		equals: self function , '("a").select(function(){mock})'.	self		assert: ((self jQuery: 'a') onSubmit: self mock)		equals: self function , '("a").submit(function(){mock})'.	self		assert: ((self jQuery: 'a') onUnload: self mock)		equals: self function , '("a").on("unload",function(){mock})'!

testFilter	self		assert: ((self jQuery: 'div') filter: 'p')		equals: self function , '("div").filter("p")'!

testFind	self		assert: ((self jQuery: 'div') find: ':even')		equals: self function , '("div").find(":even")'!

testFirst	self		assert: ((self jQuery: 'div') first)		equals: self function , '("div").first()'!

testGet	self		assert: ((self jQuery: 'div') get)		equals: self function , '("div").get()'.	self		assert: ((self jQuery: 'div') get: 1)		equals: self function , '("div").get(1)'!

testHas	self		assert: ((self jQuery: 'div') has: ':odd')		equals: self function , '("div").has(":odd")'!

testHasClass	self		assert: ((self jQuery: 'p') hasClass: 'selected')		equals: self function , '("p").hasClass("selected")'!

testHeight	self		assert: (((self jQuery: 'div')) height)		equals: self function , '("div").height()'.	self		assert: (((self jQuery: 'div')) height: 17)		equals: self function , '("div").height(17)'!

testHover	self		assert: ((self jQuery: 'a') hover: 1 out: 2)		equals: self function , '("a").hover(function(){1},function(){2})'!

testHtml	self 		assert: (((self jQuery: 'div')) html)		equals: self function , '("div").html()'.	self 		assert: ((self jQuery: 'div') html: [ :html | html div ])		equals: self function , '("div").html("<div></div>")'!

testIndex	self		assert: ((self jQuery: 'div') index)		equals: self function , '("div").index()'.	self		assert: ((self jQuery: 'div') index: JSStream this)		equals: self function , '("div").index(this)'!

testInnerHeight	self		assert: (((self jQuery: 'div')) innerHeight)		equals: self function , '("div").innerHeight()'!

testInnerWidth	self		assert: (((self jQuery: 'div')) innerWidth)		equals: self function , '("div").innerWidth()'!

testIs	self		assert: ((self jQuery: 'div') is: ':odd')		equals: self function , '("div").is(":odd")'!

testLast	self		assert: ((self jQuery: 'div') last)		equals: self function , '("div").last()'!

testLength	self		assert: ((self jQuery: 'div') length)		equals: self function , '("div").length'!

testNext	self		assert: (((self jQuery: 'div')) next)		equals: self function , '("div").next()'.	self		assert: ((self jQuery: 'div') next: 'p')		equals: self function , '("div").next("p")'!

testNextAll	self		assert: (((self jQuery: 'div')) nextAll)		equals: self function , '("div").nextAll()'.	self		assert: ((self jQuery: 'div') nextAll: 'p')		equals: self function , '("div").nextAll("p")'!

testNextUntil	self		assert: (((self jQuery: 'div')) nextUntil: 'p')		equals: self function , '("div").nextUntil("p")'!

testNot	self		assert: ((self jQuery: 'div') not: ':even')		equals: self function , '("div").not(":even")'!

testOdd	self		assert: ((self jQuery: 'div') odd)		equals: self function , '("div").odd()'!

testOff	self		assert: ((self jQuery: 'a') off: 'click')		equals: self function , '("a").off("click")'.	self		assert: ((self jQuery: 'a') off: 'click' selector: 'div')		equals: self function , '("a").off("click","div")'!

testOffset	self		assert: (((self jQuery: 'div')) offset)		equals: self function , '("div").offset()'.	self		assert: (((self jQuery: 'div')) offsetLeft)		equals: self function , '("div").offset().left'.	self		assert: (((self jQuery: 'div')) offsetTop)		equals: self function , '("div").offset().top'!

testOffsetParent	self		assert: (((self jQuery: 'div')) offsetParent)		equals: self function , '("div").offsetParent()'!

testOnDo	self		assert: ((self jQuery: 'a') on: 'click' do: (self javascript alert: 'Clicked'))		equals: self function , '("a").on("click",function(){alert("Clicked")})'.	self		assert: ((self jQuery: 'a') on: 'click' selector: 'div' do: (self javascript alert: 'Clicked'))		equals: self function , '("a").on("click","div",function(){alert("Clicked")})'!

testOneDo	self		assert: ((self jQuery: 'a') one: 'click' do: (self javascript alert: 'Clicked'))		equals: self function , '("a").one("click",function(){alert("Clicked")})'!

testOuterHeight	self		assert: (((self jQuery: 'div')) outerHeight)		equals: self function , '("div").outerHeight()'!

testOuterWidth	self		assert: (((self jQuery: 'div')) outerWidth)		equals: self function , '("div").outerWidth()'!

testParent	self		assert: (((self jQuery: 'div')) parent)		equals: self function , '("div").parent()'.	self		assert: ((self jQuery: 'div') parent: 'p')		equals: self function , '("div").parent("p")'!

testParents	self		assert: (((self jQuery: 'div')) parents)		equals: self function , '("div").parents()'.	self		assert: ((self jQuery: 'div') parents: 'p')		equals: self function , '("div").parents("p")'!

testParentsUntil	self		assert: ((self jQuery: 'div') parentsUntil: 'p')		equals: self function , '("div").parentsUntil("p")'!

testPosition	self		assert: (((self jQuery: 'div')) position)		equals: self function , '("div").position()'.	self		assert: (((self jQuery: 'div')) positionLeft)		equals: self function , '("div").position().left'.	self		assert: (((self jQuery: 'div')) positionTop)		equals: self function , '("div").position().top'!

testPrepend	self		assert: ((self jQuery: 'p') prepend: [ :html | html strong: 'Hello' ])		equals: self function , '("p").prepend("<strong>Hello</strong>")'.	self		assert: ((self jQuery: 'span') prependTo: '#foo')		equals: self function , '("span").prependTo("#foo")'!

testPrevious	self		assert: (((self jQuery: 'div')) previous)		equals: self function , '("div").prev()'.	self		assert: ((self jQuery: 'div') previous: 'p')		equals: self function , '("div").prev("p")'!

testPreviousAll	self		assert: (((self jQuery: 'div')) previousAll)		equals: self function , '("div").prevAll()'.	self		assert: ((self jQuery: 'div') previousAll: 'p')		equals: self function , '("div").prevAll("p")'!

testPreviousUntil	self		assert: (((self jQuery: 'div')) previousUntil: 'p')		equals: self function , '("div").prevUntil("p")'!

testProperties	self 		assert: ((self jQuery: 'img') properties: (GRSmallDictionary2 new				at: 'src'					put: '/images/hat.gif';				at: 'title'					put: 'jQuery';				at: 'alt'					put: 'jQuery Logo';				yourself))		equals: self function , '("img").prop({"src":"/images/hat.gif","title":"jQuery","alt":"jQuery Logo"})'!

testPropertyAt	self		assert: ((self jQuery: 'em') propertyAt: 'title')		equals: self function , '("em").prop("title")'!

testPropertyAtPut	self		assert: ((self jQuery: 'button:gt(1)') propertyAt: 'disabled' put: true)		equals: self function , '("button:gt(1)").prop("disabled",true)'!

testQueue	self		assert: ((self jQuery: 'button') queue)		equals: self function , '("button").queue()'.	self		assert: ((self jQuery: 'button') queue: 'fx')		equals: self function , '("button").queue("fx")'.	self		assert: ((self jQuery: 'button') queue: 'fx' do: (self jQuery: 'p') hide)		equals: self function , '("button").queue("fx",function(){' , self function , '("p").hide()})'!

testRegister	self		assert: ((self jQuery: 'a') onAjaxSuccess: self mock)		equals: self function , '("a").ajaxSuccess(function(){mock})'.	self		assert: ((self jQuery: 'a') onAjaxComplete: self mock)		equals: self function , '("a").ajaxComplete(function(){mock})'.	self		assert: ((self jQuery: 'a') onAjaxSend: self mock)		equals: self function , '("a").ajaxSend(function(){mock})'.	self		assert: ((self jQuery: 'a') onAjaxStart: self mock)		equals: self function , '("a").ajaxStart(function(){mock})'.	self		assert: ((self jQuery: 'a') onAjaxStop: self mock)		equals: self function , '("a").ajaxStop(function(){mock})'.	self		assert: ((self jQuery: 'a') onAjaxError: self mock)		equals: self function , '("a").ajaxError(function(){mock})'.	self		assert: ((self jQuery: 'a') onBlur: self mock)		equals: self function , '("a").blur(function(){mock})'.	self		assert: ((self jQuery: 'a') onChange: self mock)		equals: self function , '("a").change(function(){mock})'.	self		assert: ((self jQuery: 'a') onClick: self mock)		equals: self function , '("a").click(function(){mock})'.	self		assert: ((self jQuery: 'a') onDoubleClick: self mock)		equals: self function , '("a").dblclick(function(){mock})'.	self		assert: ((self jQuery: 'a') onError: self mock)		equals: self function , '("a").on("error",function(){mock})'.	self		assert: ((self jQuery: 'a') onFocus: self mock)		equals: self function , '("a").focus(function(){mock})'.	self 		assert: ((self jQuery: 'a') onInput: self mock) 		equals: self function , '("a").on("input",function(){mock})'.	self		assert: ((self jQuery: 'a') onKeyDown: self mock)		equals: self function , '("a").keydown(function(){mock})'.	self		assert: ((self jQuery: 'a') onKeyPress: self mock)		equals: self function , '("a").keypress(function(){mock})'.	self		assert: ((self jQuery: 'a') onKeyUp: self mock)		equals: self function , '("a").keyup(function(){mock})'.	self		assert: ((self jQuery: 'a') onLoad: self mock)		equals: self function , '("a").on("load",function(){mock})'.	self		assert: ((self jQuery: 'a') onMouseDown: self mock)		equals: self function , '("a").mousedown(function(){mock})'.	self		assert: ((self jQuery: 'a') onMouseEnter: self mock)		equals: self function , '("a").mouseenter(function(){mock})'.	self		assert: ((self jQuery: 'a') onMouseLeave: self mock)		equals: self function , '("a").mouseleave(function(){mock})'.	self		assert: ((self jQuery: 'a') onMouseMove: self mock)		equals: self function , '("a").mousemove(function(){mock})'.	self		assert: ((self jQuery: 'a') onMouseOut: self mock)		equals: self function , '("a").mouseout(function(){mock})'.	self		assert: ((self jQuery: 'a') onMouseOver: self mock)		equals: self function , '("a").mouseover(function(){mock})'.	self		assert: ((self jQuery: 'a') onMouseUp: self mock)		equals: self function , '("a").mouseup(function(){mock})'.	self		assert: ((self jQuery: 'a') onResize: self mock)		equals: self function , '("a").resize(function(){mock})'.	self		assert: ((self jQuery: 'a') onScroll: self mock)		equals: self function , '("a").scroll(function(){mock})'.	self		assert: ((self jQuery: 'a') onSelect: self mock)		equals: self function , '("a").select(function(){mock})'.	self		assert: ((self jQuery: 'a') onSubmit: self mock)		equals: self function , '("a").submit(function(){mock})'.	self		assert: ((self jQuery: 'a') onUnload: self mock)		equals: self function , '("a").on("unload",function(){mock})'!

testRemove	self 		assert: (((self jQuery: 'div')) remove)		equals: self function , '("div").remove()'.	self 		assert: (((self jQuery: 'div')) remove: 'p')		equals: self function , '("div").remove("p")'!

testRemoveAttribute	self		assert: ((self jQuery: 'button') removeAttribute: 'disabled')		equals: self function , '("button").removeAttr("disabled")'!

testRemoveClass	self		assert: ((self jQuery: 'p:even') removeClass: 'selected')		equals: self function , '("p:even").removeClass("selected")'!

testRemoveData	self		assert: ((self jQuery: 'button') removeDataAt: 'foo')		equals: self function , '("button").removeData("foo")'!

testRemoveProperty	self		assert: ((self jQuery: 'button') removeProperty: 'disabled')		equals: self function , '("button").removeProp("disabled")'!

testReplace	self		assert: ((self jQuery: 'p') replaceWith: [ :html | html emphasis: 'Hello' ])		equals: self function , '("p").replaceWith("<em>Hello</em>")'.	self		assert: ((self jQuery html: [ :html | html div: 'Hello' ]) replaceAll: '.foo')		equals: self function , '("<div>Hello</div>").replaceAll(".foo")'!

testScrollLeft	self		assert: (((self jQuery: 'div')) scrollLeft)		equals: self function , '("div").scrollLeft()'.	self		assert: (((self jQuery: 'div')) scrollLeft: 17)		equals: self function , '("div").scrollLeft(17)'!

testScrollTop	self		assert: (((self jQuery: 'div')) scrollTop)		equals: self function , '("div").scrollTop()'.	self		assert: (((self jQuery: 'div')) scrollTop: 17)		equals: self function , '("div").scrollTop(17)'!

testSiblings	self		assert: (((self jQuery: 'div')) siblings)		equals: self function , '("div").siblings()'.	self		assert: ((self jQuery: 'div') siblings: 'p')		equals: self function , '("div").siblings("p")'!

testSliceFrom	self		assert: ((self jQuery: 'div') sliceFrom: 0)		equals: self function , '("div").slice(0)'!

testSliceFromTo	self		assert: ((self jQuery: 'div') sliceFrom: 2 to: 5)		equals: self function , '("div").slice(2,5)'.	self		assert: ((self jQuery: 'div') sliceFrom: -1 to: -4)		equals: self function , '("div").slice(-1,-4)'!

testText	self 		assert: ((self jQuery: 'p') text)		equals: self function , '("p").text()'.	self 		assert: ((self jQuery: 'p') text: 'foo')		equals: self function , '("p").text("foo")'!

testToArray	self		assert: ((self jQuery: 'div') toArray)		equals: self function , '("div").toArray()'!

testToggleClass	self		assert: ((self jQuery: 'p') toggleClass: 'highlight')		equals: self function , '("p").toggleClass("highlight")'.	self		assert: ((self jQuery: 'p') toggleClass: 'highlight' state: true)		equals: self function , '("p").toggleClass("highlight",true)'!

testTrigger	self		assert: ((self jQuery: 'a') trigger: 'click')		equals: self function , '("a").trigger("click")'.	self		assert: ((self jQuery: 'a' ) triggerHandler: 'keypress')		equals: self function , '("a").triggerHandler("keypress")'!

testTriggers	self		assert: ((self jQuery: 'a') triggerBlur)		equals: self function , '("a").blur()'.	self		assert: ((self jQuery: 'a') triggerChange)		equals: self function , '("a").change()'.	self		assert: ((self jQuery: 'a') triggerClick)		equals: self function , '("a").click()'.	self		assert: ((self jQuery: 'a') triggerDoubleClick)		equals: self function , '("a").dblclick()'.	self		assert: ((self jQuery: 'a') triggerError)		equals: self function , '("a").error()'.	self		assert: ((self jQuery: 'a') triggerFocus)		equals: self function , '("a").focus()'.	self		assert: ((self jQuery: 'a') triggerKeyDown)		equals: self function , '("a").keydown()'.	self		assert: ((self jQuery: 'a') triggerKeyPress)		equals: self function , '("a").keypress()'.	self		assert: ((self jQuery: 'a') triggerKeyUp)		equals: self function , '("a").keyup()'.	self		assert: ((self jQuery: 'a') triggerSelect)		equals: self function , '("a").select()'.	self		assert: ((self jQuery: 'a') triggerSubmit)		equals: self function , '("a").submit()'!

testUnbind	self		assert: ((self jQuery: 'a') unbind: 'click')		equals: self function , '("a").unbind("click")'!

testUndelegate	self		assert: ((self jQuery: '#theone') undelegate)		equals: self function , '("#theone").undelegate()'.	self		assert: ((self jQuery: '#theone') undelegate: 'tr' on: 'click')		equals: self function , '("#theone").undelegate("tr","click")'!

testUniqueSort	self		assert: (self jQuery: 'div') uniqueSort		equals: self function , '("div").uniqueSort()'!

testUnwrap	self		assert: ((self jQuery: 'p') unwrap)		equals: self function , '("p").unwrap()'!

testValue	self 		assert: ((self jQuery: 'input') value)		equals: self function , '("input").val()'.	self 		assert: ((self jQuery: 'input') value: 'bar')		equals: self function , '("input").val("bar")'!

testWidth	self		assert: (((self jQuery: 'div')) width)		equals: self function , '("div").width()'.	self		assert: (((self jQuery: 'div')) width: 17)		equals: self function , '("div").width(17)'!

testWrap	self		assert: ((self jQuery: 'p') wrap: [ :html | html strong ])		equals: self function , '("p").wrap("<strong></strong>")'.	self		assert: ((self jQuery: 'p') wrapAll: [ :html | html div ])		equals: self function , '("p").wrapAll("<div></div>")'.	self		assert: ((self jQuery: 'p') wrapInner: [ :html | html span ])		equals: self function , '("p").wrapInner("<span></span>")'! !

!JQueryInstanceTest categoriesForMethods!
testAdd!public!tests/navigating! !
testAddBack!public!tests/chaining! !
testAddClass!public!tests/classes! !
testAfter!public!tests/modifying! !
testAppend!public!tests/modifying! !
testAt!public!tests/accessors/smalltalk! !
testAtAll!public!tests/accessors/smalltalk! !
testAttributeAt!public!tests/attributes! !
testAttributeAtPut!public!tests/attributes! !
testAttributes!public!tests/attributes! !
testBefore!public!tests/modifying! !
testBindDo!public!tests/events! !
testChildren!public!tests/navigating! !
testClearQueue!public!tests/effects! !
testClone!public!tests/copying! !
testCloneAll!public!tests/copying! !
testClosest!public!tests/navigating! !
testCollect!public!tests/filtering! !
testContents!public!tests/navigating! !
testCss!public!tests/css! !
testCssAt!public!tests/css! !
testCssAtPut!public!tests/css! !
testData!public!tests/accessors! !
testDataAt!public!tests/data! !
testDataAtPut!public!tests/data! !
testDelay!public!tests/effects! !
testDelegate!public!tests/events! !
testDequeue!public!tests/data! !
testDetach!public!tests/modifying! !
testDo!public!tests/accessors! !
testEmpty!public!tests/modifying! !
testEnd!public!tests/chaining! !
testEq!public!tests/accessors! !
testEven!public!tests/accessors/smalltalk! !
testEventsAjax!public!tests/events! !
testEventsDom!public!tests/events! !
testFilter!public!tests/filtering! !
testFind!public!tests/navigating! !
testFirst!public!tests/accessors/smalltalk! !
testGet!public!tests/accessors! !
testHas!public!tests/filtering! !
testHasClass!public!tests/classes! !
testHeight!public!tests/css! !
testHover!public!tests/events! !
testHtml!public!tests/manipulating! !
testIndex!public!tests/accessors! !
testInnerHeight!public!tests/css! !
testInnerWidth!public!tests/css! !
testIs!public!tests/filtering! !
testLast!public!tests/accessors/smalltalk! !
testLength!public!tests/accessors/smalltalk! !
testNext!public!tests/navigating! !
testNextAll!public!tests/navigating! !
testNextUntil!public!tests/navigating! !
testNot!public!tests/filtering! !
testOdd!public!tests/accessors/smalltalk! !
testOff!public!tests/events! !
testOffset!public!tests/css! !
testOffsetParent!public!tests/css! !
testOnDo!public!tests/events! !
testOneDo!public!tests/events! !
testOuterHeight!public!tests/css! !
testOuterWidth!public!tests/css! !
testParent!public!tests/navigating! !
testParents!public!tests/navigating! !
testParentsUntil!public!tests/navigating! !
testPosition!public!tests/css! !
testPrepend!public!tests/modifying! !
testPrevious!public!tests/navigating! !
testPreviousAll!public!tests/navigating! !
testPreviousUntil!public!tests/navigating! !
testProperties!public!tests/attributes! !
testPropertyAt!public!tests/attributes! !
testPropertyAtPut!public!tests/attributes! !
testQueue!public!tests/data! !
testRegister!public!tests/events! !
testRemove!public!tests/modifying! !
testRemoveAttribute!public!tests/attributes! !
testRemoveClass!public!tests/classes! !
testRemoveData!public!tests/data! !
testRemoveProperty!public!tests/attributes! !
testReplace!public!tests/modifying! !
testScrollLeft!public!tests/css! !
testScrollTop!public!tests/css! !
testSiblings!public!tests/navigating! !
testSliceFrom!public!tests/filtering! !
testSliceFromTo!public!tests/filtering! !
testText!public!tests/manipulating! !
testToArray!public!tests/accessors! !
testToggleClass!public!tests/classes! !
testTrigger!public!tests/events! !
testTriggers!public!tests/events! !
testUnbind!public!tests/events! !
testUndelegate!public!tests/events! !
testUniqueSort!public!tests/data! !
testUnwrap!public!tests/modifying! !
testValue!public!tests/manipulating! !
testWidth!public!tests/css! !
testWrap!public!tests/modifying! !
!

