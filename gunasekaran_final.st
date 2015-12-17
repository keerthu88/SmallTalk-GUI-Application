<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 8.0.1 of March 26, 2015 on October 2, 2015 at 6:27:11 PM</time-stamp>


<component-created>
<name>keerthu_g</name> <type>package</type>
</component-created><!-- Package keerthu_g* -->


<component-created>
<name>keerthu_g</name> <type>package</type>
</component-created>

<class>
<name>Heap</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>keerthu_g</package>
</attributes>
</class>

<class>
<name>BSTHeap</name>
<environment>Smalltalk</environment>
<super>Heap</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>root </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>keerthu_g</package>
</attributes>
</class>

<class>
<name>HeapAbstraction</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>heapValues yValue xValue xHeap yHeap </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>keerthu_g</package>
</attributes>
</class>

<class>
<name>ArrayHeap</name>
<environment>Smalltalk</environment>
<super>Heap</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>items </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>keerthu_g</package>
</attributes>
</class>

<class>
<name>BNode</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>data left right </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>keerthu_g</package>
</attributes>
</class>

<methods>
<class-id>HeapAbstraction class</class-id> <category>interface specs</category>

<body package="keerthu_g" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#properties: #(#{UI.PropertyListDictionary} #labelFromApplication false ) 			#label: 'HeapAbstraction' 			#bounds: #(#{Graphics.Rectangle} 474 45 1626 751 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 56 0 55 0 156 0 74 0 ) 					#name: #InputField1 					#model: #heapValues ) 				#(#{UI.ActionButtonSpec} 					#properties: #(#{UI.PropertyListDictionary} #labelFromApplication false ) 					#layout: #(#{Graphics.LayoutFrame} 55 0 96 0 158 0 114 0 ) 					#name: #ActionButton1 					#model: #newArray 					#label: 'New ArrayHeap' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 59 0 135 0 153 0 153 0 ) 					#name: #ActionButton2 					#model: #newBST 					#label: 'New BSTHeap' 					#defaultable: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 295 0 53 0 533 0 70 0 ) 					#name: #InputField2 					#model: #xValue ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 276 0 52 0 ) 					#name: #Label1 					#label: 'X:' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 295 0 94 0 531 0 104 0 ) 					#name: #InputField3 					#model: #yValue ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 276 0 87 0 ) 					#name: #Label2 					#label: 'Y:' ) 				#(#{UI.ActionButtonSpec} 					#properties: #(#{UI.PropertyListDictionary} #labelFromApplication false ) 					#layout: #(#{Graphics.LayoutFrame} 373 0 134 0 461 0 152 0 ) 					#name: #ActionButton3 					#model: #listValues 					#label: 'List Values' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 292 0 176 0 374 0 199 0 ) 					#name: #ActionButton4 					#model: #unionHeap 					#label: 'Union' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 292 0 213 0 377 0 231 0 ) 					#name: #ActionButton5 					#model: #intersectHeap 					#label: 'Intersection' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 460 0 180 0 512 0 198 0 ) 					#name: #ActionButton6 					#model: #switchHeap 					#label: 'Switch' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 462 0 215 0 514 0 233 0 ) 					#name: #ActionButton7 					#model: #copyHeap 					#label: 'Copy' 					#defaultable: true ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 13 0 57 0 ) 					#name: #Label3 					#label: 'Input:' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 553 0 53 0 ) 					#name: #Label4 ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 553 0 87 0 ) 					#name: #Label5 ) ) ) )</body>
</methods>


<methods>
<class-id>HeapAbstraction</class-id> <category>actions</category>

<body package="keerthu_g" selector="unionHeap">unionHeap	"This stub method was generated by UIDefiner"	"The method is used to find the union between X and Y heaps"	xHeap := xHeap union: yHeap.	^self</body>

<body package="keerthu_g" selector="copyHeap">copyHeap	"This stub method was generated by UIDefiner"	" The method is used copy the values of X into Y"			"The yHeap object is declared to be of same type as the xHeap"	yHeap := (xHeap class) new.		"The switch operation of the class is used"	yHeap switch: xHeap.	^self</body>

<body package="keerthu_g" selector="print:print:">print: items print: inputFeild" This method is used the print the value on the input fields of X and Y""The first argument to the function is the OrderedCollection object which is to be printed onto the input field""The second argument is used to specify the input field where the value is to be displayed"	|aStream tooMany |	aStream := WriteStream on: (String new: 16).	tooMany := aStream position + items maxPrint.	items do: [:element | 			aStream position &gt; tooMany ifTrue: [aStream nextPutAll: (#etc &lt;&lt; #dialogs &gt;&gt; '...etc...') asString, ')'. ^self].			element printOn: aStream]		separatedBy: [aStream space].		      inputFeild value: (aStream contents).</body>

<body package="keerthu_g" selector="intersectHeap">intersectHeap	"This stub method was generated by UIDefiner"	"The method is used to find the intersection between X and Y heaps"	xHeap := xHeap intersect: yHeap.	^self</body>

<body package="keerthu_g" selector="newBST">newBST	"This stub method was generated by UIDefiner"	"This method is used to create a new BSt Heap"	| a |		a := self getValue.		xHeap := BSTHeap new.		a do:[:x| xHeap insert: x].</body>

<body package="keerthu_g" selector="listValues">listValues	"This stub method was generated by UIDefiner"	" This method is used to print the values of X and Y heap into the input fields"		(xHeap notNil) ifTrue:[	(xHeap class = ArrayHeap) ifTrue:[ self print: (xHeap items) print:( xValue).]						ifFalse:[ self print: (xHeap inOrder) print:( xValue).].].		(yHeap notNil) ifTrue:[	(yHeap class = ArrayHeap) ifTrue:[ self print: (yHeap items) print:( yValue).]						ifFalse:[ self print: (yHeap inOrder) print:( yValue).].].						( self widgetAt: #Label4 ) labelString: xHeap class printString.	( self widgetAt: #Label5 ) labelString: yHeap class printString.		^self</body>

<body package="keerthu_g" selector="switchHeap">switchHeap	"This stub method was generated by UIDefiner"	" This method is used to switch X and Y heaps"	| a |	a := xHeap dcopy.	xHeap := xHeap switch: yHeap.	yHeap := yHeap switch: a.	^self</body>

<body package="keerthu_g" selector="newArray">newArray		" This method is used to create a new ArrayHeap Object from the input values given by the user"	| a |		a:= self getValue.	xHeap := ArrayHeap new.		a do:[:x| xHeap insert:x].			^xHeap.</body>

<body package="keerthu_g" selector="getValue">getValue		"This method is used to get the input user enters in the input field"	"The method converts strings into numbers for insertion into heap"		| temp aHeap |		" A new readStream object is created with the values obtained from the user"	temp := (heapValues value) readStream.	aHeap := OrderedCollection new.		"The skip seperators function is used to move the receiver's position past any separators."	[temp atEnd] whileFalse: [aHeap add: (Number readFrom: temp). temp skipSeparators.].		^ aHeap.</body>
</methods>

<methods>
<class-id>HeapAbstraction</class-id> <category>aspects</category>

<body package="keerthu_g" selector="xValue">xValue	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^xValue isNil		ifTrue:			[xValue := String new asValue]		ifFalse:			[xValue]</body>

<body package="keerthu_g" selector="heapValues">heapValues	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^heapValues isNil		ifTrue:			[heapValues := String new asValue]		ifFalse:			[heapValues]</body>

<body package="keerthu_g" selector="yValues">yValues	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^yValues isNil		ifTrue:			[yValues := String new asValue]		ifFalse:			[yValues]</body>

<body package="keerthu_g" selector="yValue">yValue	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^yValue isNil		ifTrue:			[yValue := String new asValue]		ifFalse:			[yValue]</body>
</methods>


<methods>
<class-id>Heap class</class-id> <category>instance creation</category>

<body package="keerthu_g" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Heap</class-id> <category>actions</category>

<body package="keerthu_g" selector="union:">union: anObject" This method is an abstract method to find out the union of elements of two heap objects. The union operation is implemented in ArrayHeap and BSTHeap"self subclassResponsibility.</body>

<body package="keerthu_g" selector="intersect:">intersect: anObject" This method is an abstract method to find out the intersection of elements of two heap objects. The intersect operation is implemented in ArrayHeap and BSTHeap"self subclassResponsibility.</body>

<body package="keerthu_g" selector="switch:">switch: anObject" This method is used to switch the contents of receiver and argument. The method is not defined in this class so this is an abstract method"self subclassResponsibility.</body>
</methods>

<methods>
<class-id>Heap</class-id> <category>initialize-release</category>

<body package="keerthu_g" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.		^self</body>
</methods>


<methods>
<class-id>BNode</class-id> <category>accessing</category>

<body package="keerthu_g" selector="left">left	"Left Child of the Binary Search Tree Node"	^left</body>

<body package="keerthu_g" selector="data">data	"The data in a BST Node"	^data</body>

<body package="keerthu_g" selector="right:">right: anObject	"Right Child of the Binary Search Tree Node is given the value of the argument"	right := anObject</body>

<body package="keerthu_g" selector="right">right	"Right Child of the Binary Search Tree Node"	^right</body>

<body package="keerthu_g" selector="left:">left: anObject	"Left Child of the Binary Search Tree Node is given the value of the argument"	left := anObject</body>

<body package="keerthu_g" selector="data:">data: anObject		"The data of the BST Node is initialized with the argument"	data := anObject</body>
</methods>

<methods>
<class-id>BNode</class-id> <category>initialize-release</category>

<body package="keerthu_g" selector="initialize:">initialize: n	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" The data is initialized with the argument"	data := n.	left := nil.	right := nil.	^self</body>
</methods>


<methods>
<class-id>BSTHeap</class-id> <category>accessing</category>

<body package="keerthu_g" selector="root">root	"The root element of binary serarch tree"	^root</body>

<body package="keerthu_g" selector="root:">root: anObject "The root element of BST is initialized with the value of the argument"	root := anObject</body>
</methods>

<methods>
<class-id>BSTHeap</class-id> <category>operations</category>

<body package="keerthu_g" selector="inOrder:inOrder:">inOrder: rootNode inOrder: items	"This method is used to find the inorder traversal"	"The method takes two arguments - root node of the BST and items OrderedCollection which is used to store the elements in inOrder"	rootNode notNil ifTrue: [ 		self inOrder:(rootNode left) inOrder:items. 		items add:rootNode data. 		self inOrder:(rootNode right) inOrder:items.	]</body>

<body package="keerthu_g" selector="insert:">insert: n 	"The method is used to insert an element into a binary search tree"	| temp x y |	"A new node of the binar tree is created"	 temp := BNode new initialize: n.		( root isNil )		ifTrue: [root := temp. ]         "If there are no elements in the tree, then the node is inserted as the root element"	 	ifFalse: [ 		x := root. 		"To find the parent node where the new node can be inserted"		[x isNil] whileFalse:[		(x data = n)			ifTrue:[^self.].			 " If the value of the node is greater than the value to be inserted, we move towards the left child"		(x data &gt; n)                				 "y variable is used to keep track of the parent node"				ifTrue:[ y := x. x := x left. ]         				ifFalse:[ y := x. x:=x right. ].			] .				"The node is inserted in the appropriate position"		( y data &lt; n ) ifTrue:[(y right: temp)]			ifFalse:[(y left: temp)]. 			].			"if the insertion is successful the instance is returned"		^self.</body>

<body package="keerthu_g" selector="switch:">switch: aHeap	"This method is used to copy the values of the receiver into the argument"	" The class object of the argument and receiver are compared"	self root: nil.	(aHeap class = self class) ifTrue:[ aHeap inOrder do:[:x| self insert:x]]					      ifFalse:[aHeap items do: [:x| self insert:x]].^self.</body>

<body package="keerthu_g" selector="inOrder">inOrder		" This method is a wrapper method for inOrder traversal"	|items|		items := OrderedCollection new.		self inOrder: self root inOrder:items.^items.</body>

<body package="keerthu_g" selector="intersect:">intersect: arrayHeap	"This method is used to find the intersection of the elements in the receiver and the argument"		|items result res |		items := self inOrder.		result := OrderedCollection new."The class object of the receiver and argument are compared "		(arrayHeap class = ArrayHeap) ifTrue:[res:= arrayHeap intersect: self. result:= res items.] "type  = ArrayHeap"						      ifFalse:[result := (arrayHeap inOrder) select:[:n| items includes:n  ].].  "type = BSTHeap"	self root: nil.	result do:[:x| self insert: x]."The data type of the new object will be same as that of the receiver"^self</body>

<body package="keerthu_g" selector="union:">union: anObject"The union method is used to perform set union between the receiver and argument"	(anObject class = self class) ifFalse:[(anObject items) do:[:n| self insert:n]]						ifTrue:[(anObject inOrder) do:[:n| self insert:n  ].]."The data type of the new object will be same as that of the receiver"^self</body>
</methods>

<methods>
<class-id>BSTHeap</class-id> <category>initialize-release</category>

<body package="keerthu_g" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	"Root of BST is initialized to nil"		root := nil.	^self</body>
</methods>


<methods>
<class-id>ArrayHeap</class-id> <category>accessing</category>

<body package="keerthu_g" selector="items:">items: anObject	"The instance variable which stores the OrderedCollection object in ArrayHeap"	"The instance variable is initialized with the argument"	items := anObject</body>

<body package="keerthu_g" selector="items">items	"The instance variable which stores the OrderedCollection object in ArrayHeap"	^items</body>
</methods>

<methods>
<class-id>ArrayHeap</class-id> <category>array-operations</category>

<body package="keerthu_g" selector="union:">union: HeapObject		"The union method is used to perform set union between the receiver and argument"	|temp|	(HeapObject class = self class)		ifTrue:[(HeapObject items) do:[:n| (self insert:n ) ].]		ifFalse:[ temp := HeapObject inOrder. 			(temp) do:[:n| (self insert:n)].		].	"The data type of the new object will be same as that of the receiver"	^ self</body>

<body package="keerthu_g" selector="switch:">switch: anObject	"This method is used to copy the values of the receiver into the argument"	" The class object of the argument and receiver are compared"	(anObject class = self class) ifTrue:[ self items: anObject items ]						ifFalse:[ self items: anObject inOrder].		^self.</body>

<body package="keerthu_g" selector="intersect:">intersect: HeapObject	"This method is used to find the intersection of the elements in the receiver and the argument"		|result temp|		result := OrderedCollection new.		"The class object of the receiver and argument are compared "	(HeapObject class = self class)			ifTrue:[result := (self items) select:[:n| (HeapObject items includes:n ) ].]  " The argument is of type ArrayHeap"			ifFalse:[ temp := HeapObject inOrder.                                                      " The argument is of type BSTHeap"				result := (self items) select:[:n| (temp includes:n)].			].	self items: result.	"The data type of the new object will be same as that of the receiver"	^ self</body>

<body package="keerthu_g" selector="insert:">insert: n	"This method is used to insert the value passed as the argument into the array "	"The element is added to the array of the elemnt is already not present in the array"		(self items includes: n) ifFalse:[items add: n.].		^self</body>
</methods>

<methods>
<class-id>ArrayHeap</class-id> <category>initialize-release</category>

<body package="keerthu_g" selector="initialize:">initialize: item	"Initialize a newly created instance. This method must answer the receiver."	"This method is used to initialize the OrderedCollection object of the ArrayHeap class with the argument passed on"	super initialize.	(item class = OrderedCollection) ifTrue:[items := item.].	^self</body>

<body package="keerthu_g" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	items := OrderedCollection new.	^self</body>
</methods>



</st-source>
