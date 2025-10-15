import 'dart:math';

/// Validation utility for contact form
class ContactFormValidator {
  /// Validates name field
  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'يرجى إدخال اسمك الكامل';
    }
    if (value.trim().length < 2) {
      return 'الاسم قصير جداً. يرجى إدخال اسم صحيح';
    }
    return null;
  }

  /// Validates email field
  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'يرجى إدخال بريدك الإلكتروني';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'البريد الإلكتروني غير صحيح. مثال: example@gmail.com';
    }
    return null;
  }

  /// Validates phone field
  static String? validatePhone(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'يرجى إدخال رقم هاتفك';
    }
    if (value.trim().length < 8) {
      return 'رقم الهاتف قصير جداً. يرجى إدخال رقم صحيح';
    }
    return null;
  }

  /// Validates country field
  static String? validateCountry(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'يرجى إدخال اسم الدولة';
    }
    if (value.trim().length < 2) {
      return 'اسم الدولة قصير جداً. يرجى إدخال اسم صحيح';
    }
    return null;
  }

  /// Validates message field
  static String? validateMessage(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'يرجى إدخال الرسالة';
    }
    if (value.trim().length < 10) {
      return 'يجب أن تكون الرسالة 10 أحرف على الأقل';
    }
    return null;
  }

  /// Validates captcha field
  static String? validateCaptcha(String? value, String correctCode) {
    if (value == null || value.trim().isEmpty) {
      return 'يرجى إدخال رمز التحقق الظاهر أعلاه';
    }
    if (value.trim() != correctCode) {
      return 'رمز التحقق غير صحيح. يرجى إعادة المحاولة';
    }
    return null;
  }

  /// Generates a random captcha code with only numbers
  static String generateCaptcha({int length = 6}) {
    const chars = '0123456789';
    final random = Random.secure();
    return String.fromCharCodes(
      Iterable.generate(
        length,
        (_) => chars.codeUnitAt(random.nextInt(chars.length)),
      ),
    );
  }
}
