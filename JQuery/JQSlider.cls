"Filed out from Dolphin Smalltalk 7"!

JQWidget subclass: #JQSlider
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQSlider guid: (GUID fromString: '{d370c16c-4f9d-47de-9ba9-b5c45f0ce85e}')!
JQSlider comment: ''!
!JQSlider categoriesForClass!JQuery-UI-Widgets! !
!JQSlider methodsFor!

animate: aBooleanOrStringOrNumber	"Whether to slide handle smoothly when user click outside handle on the bar. Will also accept a string representing one of the three predefined speeds ('slow', 'normal', or 'fast') or the number of milliseconds to run the animation (e.g. 1000)."	self optionAt: 'animate' put: aBooleanOrStringOrNumber!

getValue	"Gets the value of the slider. For single handle sliders."	self action: 'value'!

getValueAt: anInteger	"Gets the values of the slider. For multiple handle or range sliders."	self action: 'values' arguments: (Array with: anInteger)!

max: aNumber	"The maximum value of the slider."	self optionAt: 'max' put: aNumber!

method	^ 'slider'!

min: aNumber	"The minimum value of the slider."	self optionAt: 'min' put: aNumber!

onChange: anObject	"This event is triggered on slide stop, or if the value is changed programmatically (by the value method). Takes arguments event and ui. Use event.orginalEvent to detect whether the value changed by mouse, keyboard, or programmatically. Use ui.value (single-handled sliders) to obtain the value of the current handle, $(this).slider('values', index) to get another handle's value."	self optionAt: 'change' put: anObject asFunction!

onSlide: anObject	"This event is triggered on every mouse move during slide. Use ui.value (single-handled sliders) to obtain the value of the current handle, $(..).slider('value', index) to get another handles' value. Return false in order to prevent a slide, based on ui.value."	self optionAt: 'slide' put: anObject asFunction!

onStart: anObject	"This event is triggered when the user starts sliding."	self optionAt: 'start' put: anObject asFunction!

onStop: anObject	"This event is triggered when the user stops sliding."	self optionAt: 'stop' put: anObject asFunction!

orientation: aString	"This option determines whether the slider has the min at the left, the max at the right or the min at the bottom, the max at the top. Possible values: 'horizontal', 'vertical'."	self optionAt: 'orientation' put: aString!

range: aBooleanOrString	"If set to true, the slider will detect if you have two handles and create a stylable range element between these two. Two other possible values are 'min' and 'max'. A min range goes from the slider min to one handle. A max range goes from one handle to the slider max."	self optionAt: 'range' put: aBooleanOrString!

setValue: aNumber	"Sets the value of the slider. For single handle sliders."	self action: 'value' arguments: (Array with: aNumber)!

setValue: aNumber at: anInteger	"Sets the values of the slider. For multiple handle or range sliders."	self action: 'values' arguments: (Array with: aNumber with: anInteger)!

step: aNumber	"Determines the size or amount of each interval or step the slider takes between min and max. The full specified value range of the slider (max - min) needs to be evenly divisible by the step."	self optionAt: 'step' put: aNumber!

value: aNumber	"Determines the value of the slider, if there's only one handle. If there is more than one handle, determines the value of the first handle."	self optionAt: 'value' put: aNumber!

values: anArray	"This option can be used to specify multiple handles. If range is set to true, the length of 'values' should be 2."	self optionAt: 'values' put: anArray! !
!JQSlider categoriesFor: #animate:!options/generated!public! !
!JQSlider categoriesFor: #getValue!actions!public! !
!JQSlider categoriesFor: #getValueAt:!actions!public! !
!JQSlider categoriesFor: #max:!options/generated!public! !
!JQSlider categoriesFor: #method!accessing!public! !
!JQSlider categoriesFor: #min:!options/generated!public! !
!JQSlider categoriesFor: #onChange:!events/generated!public! !
!JQSlider categoriesFor: #onSlide:!events/generated!public! !
!JQSlider categoriesFor: #onStart:!events/generated!public! !
!JQSlider categoriesFor: #onStop:!events/generated!public! !
!JQSlider categoriesFor: #orientation:!options/generated!public! !
!JQSlider categoriesFor: #range:!options/generated!public! !
!JQSlider categoriesFor: #setValue:!actions!public! !
!JQSlider categoriesFor: #setValue:at:!actions!public! !
!JQSlider categoriesFor: #step:!options/generated!public! !
!JQSlider categoriesFor: #value:!options/generated!public! !
!JQSlider categoriesFor: #values:!options/generated!public! !

