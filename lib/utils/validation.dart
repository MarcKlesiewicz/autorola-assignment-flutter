typedef Translator = String Function(String key, {Map<String, dynamic>? args});

class Validators {
  //TODO make defaultt implementation throw error(provide init steps)
  static late Translator _translate;
  static get translate => _translate;

  static init(Translator translate) {
    _translate = translate;
  }

  static String? Function(dynamic) get isRequired {
    return (v) {
      if (v == null || v == "") return translate("validators.required");

      return null;
    };
  }

  static const _emailRegex =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  static String? Function(String?) get isEmail {
    return (v) {
      if (v != null && !RegExp(_emailRegex).hasMatch(v)) {
        return translate("validators.email");
      }

      return null;
    };
  }

  static String? Function(List?) minLength(int i) {
    return (v) {
      if (v != null && v.length < i) {
        return translate("validators.min_length", args: {"length": i});
      }

      return null;
    };
  }

  static String? Function(dynamic) isLength(int i) {
    return (v) {
      if (v != null && v.length != i) {
        return translate("validators.length", args: {"length": i});
      }
      return null;
    };
  }

  static String? Function(dynamic) get isIntegerString {
    return (v) {
      if (v != null && int.tryParse(v) == null) {
        return (translate("validators.is_integer_string"));
      }
      return null;
    };
  }

  static String? Function(dynamic) get isDoubleString {
    return (v) {
      if (double.tryParse(v.replaceAll(',', '.')) == null) {
        return translate("validators.is_double_string");
      }
      return null;
    };
  }

  static String? Function(String?) minStringLength(int i) {
    return (v) {
      if (v != null && v.length < i) {
        return translate("validators.min_string_length", args: {"length": i});
      }

      return null;
    };
  }

  static String? Function(String?) isMatching(String Function() valueCallBack,
      {required String errorText}) {
    return (v) {
      if (v != null && v != valueCallBack()) {
        return errorText;
      }

      return null;
    };
  }

  static String? Function(dynamic) isLessThan(int i,
      {required String errorText}) {
    return (v) {
      if (isIntegerString(v) != null) {
        return (translate("validators.is_integer_string"));
      }

      if (v != null && int.parse(v) > i) {
        return errorText;
      }
      return null;
    };
  }

  static String? Function(dynamic) isGreaterThan(int i,
      {required String errorText}) {
    return (v) {
      if (isIntegerString(v) != null) {
        return (translate("validators.is_integer_string"));
      }

      if (int.parse(v) < i) {
        return errorText;
      }
      return null;
    };
  }

  static all(List<dynamic> validators) {
    return (v) {
      for (var validator in validators) {
        var validation = validator(v);
        if (validation is String) {
          return validation;
        }
      }
    };
  }
}
