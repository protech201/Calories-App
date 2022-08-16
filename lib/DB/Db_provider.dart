import 'package:calories/DB/playerModel.dart';
import 'package:flutter/material.dart';

import 'db_helper.dart';


class DbProvider extends ChangeNotifier {
  DbProvider() {
    selectAllTasks();
  }
  List<PlayerModel> allPlayers = [];

  fillLists(List<PlayerModel> players) {
    allPlayers = players;
    notifyListeners();
  }

  addTaskToList(PlayerModel taskModel) {
    allPlayers.add(taskModel);
    fillLists(allPlayers);
  }

  createNewTask(PlayerModel playerModel) async {
    await DbHelper.dbHelper.insertNewTask(playerModel);
    selectAllTasks();
   // addTaskToList(playerModel);
  }

  selectAllTasks() async {
    List<PlayerModel> tasks = await DbHelper.dbHelper.selectAllTask();
    fillLists(tasks);
    tasks.forEach((element) {print(element.toMap());});
  }

  deleteTask(PlayerModel playerModel) async {
    await DbHelper.dbHelper.deleteOneTask(playerModel.id!);
    selectAllTasks();
    notifyListeners();

  }

  updateTask(PlayerModel taskModel) async {
    await DbHelper.dbHelper.updateOneTask(taskModel);
    selectAllTasks();
  }
}