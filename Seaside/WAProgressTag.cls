"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WAProgressTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAProgressTag guid: (GUID fromString: '{f78cd37a-9a7e-4d9f-b3ad-f1a12faaaa51}')!
WAProgressTag comment: 'No known browser support.The progress element represents the completion progress of a task. The progress is either indeterminate, indicating that progress is being made but that it is not clear how much more work remains to be done before the task is complete (e.g. because the task is waiting for a remote host to respond), or the progress is a number in the range zero to a maximum, giving the fraction of work that has so far been completed.There are two attributes that determine the current task completion represented by the element.The value attribute specifies how much of the task has been completed, and the max attribute specifies how much work the task requires in total. The units are arbitrary and not specified.Instead of using the attributes, authors are recommended to simply include the current value and the maximum value inline as text inside the element.'!
!WAProgressTag categoriesForClass!Seaside-Canvas-Tags! !
!WAProgressTag methodsFor!

max: anInteger	"The max attribute specifies how much work the task requires in total"	self attributeAt: 'max' put: anInteger!

tag	^ 'progress'!

value: anInteger	"The value  attribute specifies how much of the task has been completed."	self attributeAt: 'value' put: anInteger! !
!WAProgressTag categoriesFor: #max:!attributes!public! !
!WAProgressTag categoriesFor: #tag!accessing!public! !
!WAProgressTag categoriesFor: #value:!attributes!public! !

