class Validation {
  static String? notEmpty(String value) {
    // ignore: unnecessary_null_comparison
    return (value == null || value.isEmpty) ? 'Please fill out' : null;
  }
}
