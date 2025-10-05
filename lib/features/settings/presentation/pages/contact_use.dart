import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/core/shared/widgets/app_scaffold.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';
import 'package:seraj_aldean_flutter_app/features/settings/presentation/widgets/contact_form_validator.dart';
import 'package:seraj_aldean_flutter_app/features/settings/presentation/widgets/contact_text_field.dart';
import 'package:seraj_aldean_flutter_app/features/settings/presentation/widgets/contact_field_label.dart';
import 'package:seraj_aldean_flutter_app/features/settings/presentation/widgets/contact_captcha_display.dart';
import 'package:seraj_aldean_flutter_app/features/settings/presentation/widgets/contact_action_button.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _countryController = TextEditingController();
  final _messageController = TextEditingController();
  final _captchaController = TextEditingController();

  String _captchaCode = '';
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _generateCaptcha();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _countryController.dispose();
    _messageController.dispose();
    _captchaController.dispose();
    super.dispose();
  }

  void _generateCaptcha() {
    setState(() {
      _captchaCode = ContactFormValidator.generateCaptcha();
    });
  }

  bool get _isFormValid {
    return _nameController.text.trim().isNotEmpty &&
        _emailController.text.trim().isNotEmpty &&
        _phoneController.text.trim().isNotEmpty &&
        _countryController.text.trim().isNotEmpty &&
        _messageController.text.trim().isNotEmpty &&
        _captchaController.text.trim() == _captchaCode;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      setState(() => _isLoading = true);

      // Simulate API call
      Future.delayed(const Duration(seconds: 2), () {
        if (mounted) {
          setState(() => _isLoading = false);
          _showSuccessMessage();
          _resetForm();
        }
      });
    }
  }

  void _resetForm() {
    _formKey.currentState?.reset();
    _nameController.clear();
    _emailController.clear();
    _phoneController.clear();
    _countryController.clear();
    _messageController.clear();
    _captchaController.clear();
    _generateCaptcha();
  }

  void _showSuccessMessage() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Container(
          padding: EdgeInsets.symmetric(vertical: 4.h),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  color: AppColors.white.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.check_circle,
                  color: AppColors.white,
                  size: 24,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'تم الإرسال بنجاح!',
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 16.f,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      'تم إرسال رسالتك بنجاح! سنتواصل معك قريباً',
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 13.f,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: AppColors.primary,
        duration: const Duration(seconds: 5),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.all(16.w),
        elevation: 8,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold.custom(
      body: Stack(
        children: [
          _buildForm(context),
          if (_isLoading) _buildLoadingOverlay(),
        ],
      ),
    );
  }

  Widget _buildLoadingOverlay() {
    return Container(
      color: AppColors.black.withValues(alpha: 0.3),
      child: Center(
        child: Container(
          padding: EdgeInsets.all(20.w),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.1),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
              ),
              SizedBox(height: 16.h),
              Text(
                'جاري إرسال رسالتك...',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 16.f,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'يرجى الانتظار قليلاً',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 12.f,
                  color: AppColors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            SizedBox(height: 10.h),
            Text(
              "اتصل بنا",
              style: TextStyle(
                fontSize: 18.f,
                fontFamily: FontFamily.tajawal,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
            SizedBox(height: 20.h),

            // Name Field
            const ContactFieldLabel(label: "اسم المرسل", isRequired: true),
            SizedBox(height: 10.h),
            ContactTextField(
              controller: _nameController,
              hintText: 'ادخل اسمك هنا',
              onChanged: (_) => setState(() {}),
              validator: ContactFormValidator.validateName,
            ),
            SizedBox(height: 20.h),

            // Email Field
            const ContactFieldLabel(label: "البريد الإلكتروني", isRequired: true),
            SizedBox(height: 10.h),
            ContactTextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              hintText: "uiuxcreative2021@gmail.com",
              onChanged: (_) => setState(() {}),
              validator: ContactFormValidator.validateEmail,
            ),
            SizedBox(height: 20.h),

            // Phone Field
            const ContactFieldLabel(label: "رقم الهاتف", isRequired: true),
            SizedBox(height: 10.h),
            ContactTextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              hintText: "+9xxxxxxxxx",
              onChanged: (_) => setState(() {}),
              validator: ContactFormValidator.validatePhone,
            ),
            SizedBox(height: 20.h),

            // Country Field
            const ContactFieldLabel(label: "الدولة", isRequired: true),
            SizedBox(height: 10.h),
            ContactTextField(
              controller: _countryController,
              hintText: "ادخل الدولة",
              onChanged: (_) => setState(() {}),
              validator: ContactFormValidator.validateCountry,
            ),
            SizedBox(height: 20.h),

            // Message Field
            const ContactFieldLabel(label: "الرسالة", isRequired: true),
            SizedBox(height: 10.h),
            _buildMessageField(),
            SizedBox(height: 25.h),

            // Captcha Section
            Text(
              "تنويه",
              style: TextStyle(
                fontSize: 18.f,
                fontFamily: FontFamily.tajawal,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              "الرجاء تأكيد كتابة رمز التسجيل الظاهر أمامك",
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 14.f,
                color: AppColors.grey,
              ),
            ),
            SizedBox(height: 10.h),

            // Captcha Display
            ContactCaptchaDisplay(captchaCode: _captchaCode),
            SizedBox(height: 20.h),

            // Captcha Input
            ContactTextField(
              controller: _captchaController,
              hintText: 'ادخل الرقم هنا',
              onChanged: (_) => setState(() {}),
              validator: (value) => ContactFormValidator.validateCaptcha(value, _captchaCode),
            ),
            SizedBox(height: 20.h),

            // Action Buttons
            Row(
              children: [
                Expanded(
                  child: ContactActionButton(
                    text: 'تحديث الرمز',
                    onPressed: _generateCaptcha,
                    isEnabled: true,
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: ContactActionButton(
                    text: 'إرسال الرسالة',
                    onPressed: _submitForm,
                    isEnabled: _isFormValid,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContactTextField(
          controller: _messageController,
          maxLines: 6,
          hintText: 'اكتب رسالتك هنا (10 أحرف على الأقل)',
          onChanged: (_) => setState(() {}),
          validator: ContactFormValidator.validateMessage,
        ),
        SizedBox(height: 5.h),
        Text(
          '${_messageController.text.length}/10 أحرف',
          style: TextStyle(
            fontSize: 10.f,
            fontFamily: FontFamily.tajawal,
            color: _messageController.text.length >= 10 
                ? AppColors.primary 
                : AppColors.error,
          ),
        ),
      ],
    );
  }
}