"Filed out from Dolphin Smalltalk"!

JQWidget subclass: #JQDatepicker
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQDatepicker guid: (GUID fromString: '{ac9f513e-b9e8-4701-af37-2133979fa4f3}')!

JQDatepicker comment: 'A highly configurable plugin that adds datepicker functionality to your pages. You can restrict the functionality in various ways, you can select date ranges, and you can provide the date in picker in a number of languages.'!

!JQDatepicker categoriesForClass!Widgets! !

!JQDatepicker methodsFor!

altField: aString	"The jQuery selector for another field that is to be updated with the selected date from the datepicker. Use the altFormat setting below to change the format of the date within this field. Leave as blank for no alternate field."	self optionAt: 'altField' put: aString!

altFormat: aString	"The dateFormat to be used for the altField option. This allows one date format to be shown to the user for selection purposes, while a different format is actually sent behind the scenes. For a full list of the possible formats see the [[UI/Datepicker/formatDate"	self optionAt: 'altFormat' put: aString!

appendText: aString	"The text to display after each date field, e.g. to show the required format."	self optionAt: 'appendText' put: aString!

autoSize: aBoolean	"Set to true to automatically resize the input field to accomodate dates in the current [[UI/Datepicker#option-dateFormat"	self optionAt: 'autoSize' put: aBoolean!

buttonImage: aString	"The URL for the popup button image. If set, button text becomes the 'alt' value and is not directly displayed."	self optionAt: 'buttonImage' put: aString!

buttonImageOnly: aBoolean	"Set to true to place an image after the field to use as the trigger without it appearing on a button."	self optionAt: 'buttonImageOnly' put: aBoolean!

buttonText: aString	"The text to display on the trigger button. Use in conjunction with 'showOn' equal to 'button' or 'both'."	self optionAt: 'buttonText' put: aString!

calculateWeek: aFunction	"A function to calculate the week of the year for a given date. The default implementation uses the ISO 8601 definition: weeks start on a Monday; the first week of the year contains the first Thursday of the year."	self optionAt: 'calculateWeek' put: aFunction!

changeMonth: aBoolean	"Allows you to change the month by selecting from a drop-down list. You can enable this feature by setting the attribute to true."	self optionAt: 'changeMonth' put: aBoolean!

changeYear: aBoolean	"Allows you to change the year by selecting from a drop-down list. You can enable this feature by setting the attribute to true."	self optionAt: 'changeYear' put: aBoolean!

closeText: aString	"The text to display for the close link. This attribute is one of the regionalisation attributes. Use the showButtonPanel to display this button."	self optionAt: 'closeText' put: aString!

constrainInput: aBoolean	"True if the input field is constrained to the current date format."	self optionAt: 'constrainInput' put: aBoolean!

currentText: aString	"The text to display for the current day link. This attribute is one of the regionalisation attributes. Use the showButtonPanel to display this button."	self optionAt: 'currentText' put: aString!

dateFormat: aString	"The format for parsed and displayed dates. This attribute is one of the regionalisation attributes. For a full list of the possible formats see the [[UI/Datepicker/formatDate"	self optionAt: 'dateFormat' put: aString!

dayNames: anArray	"The list of long day names, starting from Sunday, for use as requested via the dateFormat setting. They also appear as popup hints when hovering over the corresponding column headings. This attribute is one of the regionalisation attributes."	self optionAt: 'dayNames' put: anArray!

dayNamesMin: anArray	"The list of minimised day names, starting from Sunday, for use as column headers within the datepicker. This attribute is one of the regionalisation attributes."	self optionAt: 'dayNamesMin' put: anArray!

dayNamesShort: anArray	"The list of abbreviated day names, starting from Sunday, for use as requested via the dateFormat setting. This attribute is one of the regionalisation attributes."	self optionAt: 'dayNamesShort' put: anArray!

defaultDate: aDateOrNumberOrString	"Set the date to highlight on first opening if the field is blank. Specify either an actual date via a Date object, or a number of days from today (e.g. +7) or a string of values and periods ('y' for years, 'm' for months, 'w' for weeks, 'd' for days, e.g. '+1m +7d'), or null for today."	self optionAt: 'defaultDate' put: aDateOrNumberOrString!

duration: aStringOrNumber	"Control the speed at which the datepicker appears, it may be a time in milliseconds, a string representing one of the three predefined speeds ('slow', 'normal', 'fast'), or ' for immediately."	self optionAt: 'duration' put: aStringOrNumber!

firstDay: aNumber	"Set the first day of the week: Sunday is 0, Monday is 1, ... This attribute is one of the regionalisation attributes."	self optionAt: 'firstDay' put: aNumber!

getDate	"Get the current date for a date picker."		self action: 'getDate'!

gotoCurrent: aBoolean	"If true, the current day link moves to the currently selected date instead of today."	self optionAt: 'gotoCurrent' put: aBoolean!

hide	"Close a previously opened date picker."		self action: 'hide'!

hideIfNoPrevNext: aBoolean	"Normally the previous and next links are disabled when not applicable (see minDate/maxDate). You can hide them altogether by setting this attribute to true."	self optionAt: 'hideIfNoPrevNext' put: aBoolean!

isDisabled	"Determine whether a date picker has been disabled."		self action: 'isDisabled'!

isRTL: aBoolean	"True if the current language is drawn from right to left. This attribute is one of the regionalisation attributes."	self optionAt: 'isRTL' put: aBoolean!

maxDate: aDateOrNumberOrString	"Set a maximum selectable date via a Date object, or a number of days from today (e.g. +7) or a string of values and periods ('y' for years, 'm' for months, 'w' for weeks, 'd' for days, e.g. '+1m +1w'), or null for no limit."	self optionAt: 'maxDate' put: aDateOrNumberOrString!

method	^ 'datepicker'!

minDate: aDateOrNumberOrString	"Set a minimum selectable date via a Date object, or a number of days from today (e.g. +7) or a string of values and periods ('y' for years, 'm' for months, 'w' for weeks, 'd' for days, e.g. '-1y -1m'), or null for no limit."	self optionAt: 'minDate' put: aDateOrNumberOrString!

monthNames: anArray	"The list of full month names, as used in the month header on each datepicker and as requested via the dateFormat setting. This attribute is one of the regionalisation attributes."	self optionAt: 'monthNames' put: anArray!

monthNamesShort: anArray	"The list of abbreviated month names, for use as requested via the dateFormat setting. This attribute is one of the regionalisation attributes."	self optionAt: 'monthNamesShort' put: anArray!

navigationAsDateFormat: aBoolean	"When true the formatDate function is applied to the prevText, nextText, and currentText values before display, allowing them to display the target month names for example."	self optionAt: 'navigationAsDateFormat' put: aBoolean!

nextText: aString	"The text to display for the next month link. This attribute is one of the regionalisation attributes. With the standard ThemeRoller styling, this value is replaced by an icon."	self optionAt: 'nextText' put: aString!

numberOfMonths: aNumberOrArray	"Set how many months to show at once. The value can be a straight integer, or can be a two-element array to define the number of rows and columns to display."	self optionAt: 'numberOfMonths' put: aNumberOrArray!

onBeforeShow: anObject	"Can be a function that takes an input field and current datepicker instance and returns an options object to update the datepicker with. It is called just before the datepicker is displayed."	self optionAt: 'beforeShow' put: anObject asFunction!

onBeforeShowDay: anObject	"The function takes a date as a parameter and must return an array with [0] equal to true/false indicating whether or not this date is selectable, [1] equal to a CSS class name(s) or ' for the default presentation, and [2] an optional popup tooltip for this date. It is called for each day in the datepicker before it is displayed."	self optionAt: 'beforeShowDay' put: anObject asFunction!

onChangeMonthYear: anObject	"Allows you to define your own event when the datepicker moves to a new month and/or year. The function receives the selected year, month (1-12), and the datepicker instance as parameters. this refers to the associated input field."	self optionAt: 'onChangeMonthYear' put: anObject asFunction!

onClose: anObject	"Allows you to define your own event when the datepicker is closed, whether or not a date is selected. The function receives the selected date as text (' if none) and the datepicker instance as parameters. this refers to the associated input field."	self optionAt: 'onClose' put: anObject asFunction!

onSelect: anObject	"Allows you to define your own event when the datepicker is selected. The function receives the selected date as text and the datepicker instance as parameters. this refers to the associated input field."	self optionAt: 'onSelect' put: anObject asFunction!

onUpdateDatePicker: anObject	"Called when the datepicker widget's DOM is updated. The function receives the datepicker instance as the only parameter. this refers to the associated input field."	self optionAt: 'onUpdateDatepicker' put: anObject asFunction!

prevText: aString	"The text to display for the previous month link. This attribute is one of the regionalisation attributes. With the standard ThemeRoller styling, this value is replaced by an icon."	self optionAt: 'prevText' put: aString!

selectOtherMonths: aBoolean	"When true days in other months shown before or after the current month are selectable. This only applies if [[UI/Datepicker#option-showOtherMonths"	self optionAt: 'selectOtherMonths' put: aBoolean!

setDate: aDate	"Set the current date for a date picker."		self action: 'setDate' arguments: (Array with: aDate)!

shortYearCutoff: aStringOrNumber	"Set the cutoff year for determining the century for a date (used in conjunction with dateFormat 'y'). If a numeric value (0-99) is provided then this value is used directly. If a string value is provided then it is converted to a number and added to the current year. Once the cutoff year is calculated, any dates entered with a year value less than or equal to it are considered to be in the current century, while those greater than it are deemed to be in the previous century."	self optionAt: 'shortYearCutoff' put: aStringOrNumber!

show	"Call up a previously attached date picker."		self action: 'show'!

showAnim: aString	"Set the name of the animation used to show/hide the datepicker. Use 'show' (the default), 'slideDown', 'fadeIn', or any of the show/hide [http://docs.jquery.com/UI/Effects jQuery UI effects]."	self optionAt: 'showAnim' put: aString!

showButtonPanel: aBoolean	"Whether to show the button panel."	self optionAt: 'showButtonPanel' put: aBoolean!

showCurrentAtPos: aNumber	"Specify where in a multi-month display the current month shows, starting from 0 at the top/left."	self optionAt: 'showCurrentAtPos' put: aNumber!

showMonthAfterYear: aBoolean	"Whether to show the month after the year in the header."	self optionAt: 'showMonthAfterYear' put: aBoolean!

showOn: aString	"Have the datepicker appear automatically when the field receives focus ('focus'), appear only when a button is clicked ('button'), or appear when either event takes place ('both')."	self optionAt: 'showOn' put: aString!

showOptions: anOptions	"If using one of the jQuery UI effects for showAnim, you can provide additional settings for that animation via this option."	self optionAt: 'showOptions' put: anOptions!

showOtherMonths: aBoolean	"Display dates in other months (non-selectable) at the start or end of the current month."	self optionAt: 'showOtherMonths' put: aBoolean!

showWeek: aBoolean	"When true a column is added to show the week of the year."	self optionAt: 'showWeek' put: aBoolean!

stepMonths: aNumber	"Set how many months to move when clicking the Previous/Next links."	self optionAt: 'stepMonths' put: aNumber!

weekHeader: aString	"The text to display for the week of the year column heading. This attribute is one of the regionalisation attributes."	self optionAt: 'weekHeader' put: aString!

yearRange: aString	"Control the range of years displayed in the year drop-down: either relative to current year (-nn:+nn) or absolute (nnnn:nnnn)."	self optionAt: 'yearRange' put: aString!

yearSuffix: aString	"Additional text to display after the year in the month headers. This attribute is one of the regionalisation attributes."	self optionAt: 'yearSuffix' put: aString! !

!JQDatepicker categoriesForMethods!
altField:!options/generated!public! !
altFormat:!options/generated!public! !
appendText:!options/generated!public! !
autoSize:!options/generated!public! !
buttonImage:!options/generated!public! !
buttonImageOnly:!options/generated!public! !
buttonText:!options/generated!public! !
calculateWeek:!options/generated!public! !
changeMonth:!options/generated!public! !
changeYear:!options/generated!public! !
closeText:!options/generated!public! !
constrainInput:!options/generated!public! !
currentText:!options/generated!public! !
dateFormat:!options/generated!public! !
dayNames:!options/generated!public! !
dayNamesMin:!options/generated!public! !
dayNamesShort:!options/generated!public! !
defaultDate:!options/generated!public! !
duration:!options/generated!public! !
firstDay:!options/generated!public! !
getDate!actions!public! !
gotoCurrent:!options/generated!public! !
hide!actions!public! !
hideIfNoPrevNext:!options/generated!public! !
isDisabled!actions!public! !
isRTL:!options/generated!public! !
maxDate:!options/generated!public! !
method!accessing!public! !
minDate:!options/generated!public! !
monthNames:!options/generated!public! !
monthNamesShort:!options/generated!public! !
navigationAsDateFormat:!options/generated!public! !
nextText:!options/generated!public! !
numberOfMonths:!options/generated!public! !
onBeforeShow:!events/generated!public! !
onBeforeShowDay:!events/generated!public! !
onChangeMonthYear:!events/generated!public! !
onClose:!events/generated!public! !
onSelect:!events/generated!public! !
onUpdateDatePicker:!events/generated!public! !
prevText:!options/generated!public! !
selectOtherMonths:!options/generated!public! !
setDate:!actions!public! !
shortYearCutoff:!options/generated!public! !
show!actions!public! !
showAnim:!options/generated!public! !
showButtonPanel:!options/generated!public! !
showCurrentAtPos:!options/generated!public! !
showMonthAfterYear:!options/generated!public! !
showOn:!options/generated!public! !
showOptions:!options/generated!public! !
showOtherMonths:!options/generated!public! !
showWeek:!options/generated!public! !
stepMonths:!options/generated!public! !
weekHeader:!options/generated!public! !
yearRange:!options/generated!public! !
yearSuffix:!options/generated!public! !
!

