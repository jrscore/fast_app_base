firebase init
flutterfire configure
firebase emulators:start




# DocumentSnapshot 객체
	단일문서의 데이터, 메타데이터를 포함
	- ref:문서에 대한 참조(DocumentReference)
	- metadata:
	- id:
	- data():
	- exists:

# QuerySnapshot 
	- metadata
	- docs => List<QueryDocumentSnapsho>
	- size
	- empty
	- foreach => ()

# QueryDocumentSnapshot 
	- DocumentSnapshot 상속
	- QueryDocumentSnapshot은 DocumentSnapshot의 모든 속성과 메서드를 상속받지만, 쿼리와 함께 사용되는 특수한 상황에 최적화