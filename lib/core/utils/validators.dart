class Validators {
  const Validators();

  String? required(String? value, {required String title}) {
    if (value == null || value.isEmpty) {
      return 'برجاء ادخال ${title.toLowerCase()}';
    }
    return null;
  }

  String? phone(String? value, {required String title}) {
    if (value == null || value.isEmpty) {
      return required(value, title: title);
    }
    final phoneRegExp = RegExp(
      r'\+(9[976]\d|8[987530]\d|6[987]\d|5[90]\d|42\d|3[875]\d|2[98654321]\d|9[8543210]|8[6421]|6[6543210]|5[87654321]|4[987654310]|3[9643210]|2[70]|7|1)\d{1,14}$',
    );
    if (!phoneRegExp.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  String? password(String? value) {
    if (value == null || value.isEmpty) {
      return required(value, title: 'كلمة المرور');
    }
    return null;
  }

  String? identityNumber(String? value) {
    if (value == null || value.isEmpty) {
      return required(value, title: 'National ID');
    }
    if (value.length < 7) {
      return 'Please enter a valid identity number';
    }
    return null;
  }

  String? email(String? value, {bool required = true}) {
    if (required && (value ?? '').isEmpty) {
      return this.required(value, title: 'Email');
    }

    if (!required && (value ?? '').isEmpty) {
      return null;
    }

    final bool emailValid = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(value ?? '');
    if (!emailValid) {
      return 'Please enter a valid email address';
    }

    return null;
  }
}
