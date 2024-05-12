

enum TodoStatus { created, ongoing, complete }

class Todo {
	int 				id;
	String			title;
	DateTime		created;
	DateTime		due;
	TodoStatus	status;

	Todo(this.id, this.title, this.due, {this.status = TodoStatus.created}): created=DateTime.now();
}