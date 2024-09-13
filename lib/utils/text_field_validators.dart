class TextFieldValidator {
  static String? simpleValidator({value, errorMessage}) {
    if (value == null || value == "") {
      return errorMessage;
    }
    return null;
  }
}
