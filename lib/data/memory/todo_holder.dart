import 'package:coredex_pms/domain/entity/todo.dart';
import 'package:coredex_pms/present/todo/d_todo.dart';
import 'package:get/get.dart';


mixin class TodoProvider {
	late final TodoData todoData = Get.find();
}


class TodoData extends GetxController {

	final RxList<Todo> todolist = <Todo>[].obs; 	//RxList로 만들어준다

	void changeStatus(Todo todo) async {
		switch (todo.status) {
		  case TodoStatus.created:	todo.status = TodoStatus.ongoing ;
		  case TodoStatus.ongoing:	todo.status = TodoStatus.complete ;
		  case TodoStatus.complete:	todo.status = TodoStatus.created ;	
		}
		todolist.refresh();	//OBX에서 리프레쉬됨
	}


	void addTodo() async {
		final todo = await TodoDialog().show();
		if (todo != null) {
			todolist.add(Todo(DateTime.now().millisecondsSinceEpoch, todo.title, todo.due) );
		}
	}


	void editTodo(Todo todo) async {
		final edited = await TodoDialog(todo:todo).show();
		if (edited != null) {
			todo.title = edited.title;
			todo.due 	 = edited.due;
		}
		todolist.refresh();
	}


	void removeTodo(Todo todo) {
		todolist.remove(todo);
		todolist.refresh();
	}

}


