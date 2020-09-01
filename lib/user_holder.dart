import 'models/user.dart';

class UserHolder {
  Map<String, User> users = {};

  void registerUser(String name, String phone, String email) {
    User user = User(name: name, phone: phone, email: email);

    if (!users.containsKey(user.login)) {
      users[user.login] = user;
    } else {
      throw Exception("A user with login allready exists!");
    }
  }

  User getUserByLogin(String login) {
    return users[login];
  }

  User registerUserByPhone(String name, String phone) {
    User user = User(name: name, phone: phone);

    if (!users.containsKey(user.login)) {
      users[user.login] = user;
      return user;
    } else {
      throw Exception("A user with login allready exists!");
    }
  }

  User registerUserByEmail(String name, String email) {
    User user = User(name: name, email: email);

    if (!users.containsKey(user.login)) {
      users[user.login] = user;
      return user;
    } else {
      throw Exception('A user with this email already exists');
    }
  }

  void setFriends(String login, List<User> friends) {
    users[login].friends.addAll(friends);
  }

  User findUserInFriends(String login, User friend) {
    if (users[login].friends.contains(friend))
      return friend;
    else
      throw Exception("${friend.login} is not a friend of the login");
  }

  List<User> importUsers(List<String> list) => list
      .map((lines) => lines
          .split(";")
          .map((line) => line.trim())
          .where((element) => element.isNotEmpty)
          .toList())
      .map((lines) => User(name: lines[0], email: lines[1], phone: lines[2]))
      .toList();
}
