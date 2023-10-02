class EndPoints {
  static const String baseurl = 'https://food-api-omega.vercel.app/api/v1/';
  static const String chefSignin = 'chef/signin';
  static const String chefSendCode = 'chef/send-code';
  static const String chefChangeForgottenPassword = 'chef/change-password';
  static const String getChef = 'chef/get-user/';
  static const String deleteChef = 'chef/delete/';
  static const String updateChef = 'chef/update';
  static const String logout = 'chef/logout';
  static const String addMeal = 'meal/add-to-menu';
  static const String updateMeal = 'chef/update-meal/';
  static const String deleteMeal = 'meal/delete-meal/';
  static const String getAllmeals = 'meal/get-meals';
  static String getChefEndpoint(id) {
    return '$getChef$id';
  }

  static String deleteChefEndPoints(id) {
    return '$deleteChef$id';
  }

  static String updateMealEndpoint(id) {
    return '$updateMeal$id';
  }

  static String deleteMealEndPoints(id) {
    return '$deleteMeal$id';
  }
}

class ApiKey {
  static const String email = 'email';
  static const String password = 'password';
  static const String message = 'message';
}
