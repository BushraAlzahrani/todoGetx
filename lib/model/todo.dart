class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false
  });

  // static List<ToDo> todoList(){
  //   return [
  //     ToDo(id: '01', todoText: 'Check Emails', isDone: true),
  //     ToDo(id: '02', todoText: 'Finish the todo app', isDone: true),
  //     ToDo(id: '03', todoText: 'Connect to database', isDone: true),
  //     ToDo(id: '04', todoText: 'Buy Gorceries', ),
  //     ToDo(id: '05', todoText: 'Have dinner', ),
  //     ToDo(id: '06', todoText: 'Team meeting'),

  //   ];
  // }
  
}