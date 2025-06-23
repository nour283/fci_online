import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tadrib_hub/presentation/Screens/Layout/pages/language_provider.dart';

class AppStrings {
  static String title1(BuildContext context) =>
      isArabic(context) ? 'العديد من الدورات التجريبية المجانية' : 'Numerous free \ntrial courses';

  static String title2(BuildContext context) =>
      isArabic(context) ? 'تعلم سريع وسهل' : 'Quick and easy \nlearning';

  static String title3(BuildContext context) =>
      isArabic(context) ? 'أنشئ خطة دراسية خاصة بك' : 'Create your own \nstudy plan';

  static String subtitle1(BuildContext context) =>
      isArabic(context) ? 'دورات مجانية لمساعدتك في طريقك للتعلم' : 'Free courses for you to \nfind your way to learning';

  static String subtitle2(BuildContext context) =>
      isArabic(context) ? 'تعلم بسهولة وسرعة في أي وقت لتحسين مهاراتك' : 'Easy and fast learning at \nany time to help you \nimprove various skills';

  static String subtitle3(BuildContext context) =>
      isArabic(context) ? 'ادرس حسب خطة دراسية لزيادة الحماس' : 'Study according to the \nstudy plan, make study \nmore motivated';

  static String skip(BuildContext context) =>
      isArabic(context) ? 'تخطي' : 'Skip';

  static String enterNumber(BuildContext context) =>
      isArabic(context) ? 'أدخل رقم هاتفك' : 'Enter Your Phone Number';

  static String continueText(BuildContext context) =>
      isArabic(context) ? 'استمرار' : 'Continue';

  static String number(BuildContext context) =>
      isArabic(context) ? '+20 100 000 0000' : '+63 283 835 2999';

  static String forget(BuildContext context) =>
      isArabic(context) ? 'نسيت كلمة المرور' : 'Forget Password';

  static String phoneNumberError(BuildContext context) =>
      isArabic(context) ? 'يجب إدخال رقم مكون من 11 رقمًا' : 'You must enter an 11-digit number';

  static String verifyPhone(BuildContext context) =>
      isArabic(context) ? 'تأكيد الهاتف' : 'Verify Phone';

  static String codeSent(BuildContext context) =>
      isArabic(context) ? 'تم إرسال الكود إلى' : 'Code is sent to';

  static String verifyAndCreate(BuildContext context) =>
      isArabic(context) ? 'تأكيد وإنشاء الحساب' : 'Verify and Create Account';

  static String signUp(BuildContext context) =>
      isArabic(context) ? 'إنشاء حساب' : 'Sign Up';

  static String enterDetails(BuildContext context) =>
      isArabic(context) ? 'أدخل بياناتك بالأسفل وسجّل مجانًا' : 'Enter your details below & free sign up';

  static String yourEmail(BuildContext context) =>
      isArabic(context) ? 'بريدك الإلكتروني' : 'Your Email';

  static String emailHint(BuildContext context) =>
      isArabic(context) ? 'example@email.com' : 'Cooper_Kristin@gmail.com';

  static String password(BuildContext context) =>
      isArabic(context) ? 'كلمة المرور' : 'Password';

  static String passwordHint(BuildContext context) =>
      isArabic(context) ? '************' : '************';

  static String mobilePhone(BuildContext context) =>
      isArabic(context) ? 'رقم الهاتف' : 'Mobile phone';

  static String mobileHint(BuildContext context) =>
      isArabic(context) ? '+20' : '+201';

  static String createAccount(BuildContext context) =>
      isArabic(context) ? 'إنشاء حساب' : 'Create account';

  static String agreeTerms(BuildContext context) =>
      isArabic(context) ? 'بإنشائك لحساب، فإنك توافق على الشروط والأحكام الخاصة بنا.' :
                          'By creating an account you have to agree with our terms & conditions.';

  static String alreadyHaveAccount(BuildContext context) =>
      isArabic(context) ? 'هل لديك حساب بالفعل؟' : 'Already have an account?';

  static String logIn(BuildContext context) =>
      isArabic(context) ? 'تسجيل الدخول' : 'Log in';

  static String forgetPassword(BuildContext context) =>
      isArabic(context) ? 'هل نسيت كلمة المرور؟' : 'Forget password?';

  static String dontHaveAccount(BuildContext context) =>
      isArabic(context) ? 'ليس لديك حساب؟' : "Don't have an account?";

  static String orLoginWith(BuildContext context) =>
      isArabic(context) ? 'أو سجل الدخول باستخدام' : 'Or login with';

  static String newPassword(BuildContext context) =>
      isArabic(context) ? 'كلمة مرور جديدة' : 'New password';

  static String confirmPassword(BuildContext context) =>
      isArabic(context) ? 'تأكيد كلمة المرور' : 'Confirm password';

  static String submit(BuildContext context) =>
      isArabic(context) ? 'إرسال' : 'Submit';

  static String generate(BuildContext context) =>
      isArabic(context) ? 'أنشئ اختبارات لوحدة الوظيفة التالية بـ C#' : 'Generate unittests for\n the following C# \nfunction';

  static String generate2(BuildContext context) =>
      isArabic(context) ? 'أنشئ اختبارات لوحدة الوظيفة التالية بـ C#' : 'Generate unit tests for\n the following C#\n function';

  static String enterPrompt(BuildContext context) =>
      isArabic(context) ? 'أدخل الأمر هنا' : 'Enter a prompt here';

  static String fill(BuildContext context) =>
      isArabic(context) ? 'يسعدنا أن نسمع منك. من فضلك املأ هذا النموذج.' :
                          'We’d love to hear from you. Please fill out this form.';

  static String getTouch(BuildContext context) =>
      isArabic(context) ? 'ابقَ على تواصل' : 'Get in touch';

  static String name(BuildContext context) =>
      isArabic(context) ? 'الاسم' : 'Name';

  static String companyEmail(BuildContext context) =>
      isArabic(context) ? 'البريد الإلكتروني للشركة' : 'Company email';

  static String phoneNumber(BuildContext context) =>
      isArabic(context) ? 'رقم الهاتف' : 'Phone number';
   static String appName(BuildContext context) =>
      isArabic(context) ? "تطبيق الكتب" : "Book App";

  static String greeting(BuildContext context) =>
      isArabic(context) ? "مرحبًا ، عزيزي 👋" : "Hello , Dear 👋";

  static String searchHint(BuildContext context) =>
      isArabic(context) ? "ابحث هنا" : "Search here";

  static String noBooksAvailable(BuildContext context) =>
      isArabic(context) ? "لا توجد كتب متاحة" : "No books available";

  static String microphonePermissionDenied(BuildContext context) =>
      isArabic(context) 
          ? "يجب السماح بالوصول للميكروفون" 
          : "Microphone access must be granted";

  static String speechNotAvailable(BuildContext context) =>
      isArabic(context) 
          ? "البحث الصوتي غير متاح" 
          : "Voice search is not available";

  static String clearSearch(BuildContext context) =>
      isArabic(context) ? "مسح البحث" : "Clear search";

  static String listening(BuildContext context) =>
      isArabic(context) ? "جاري الاستماع..." : "Listening...";
    static String pythonBookTitle(BuildContext context) =>
      isArabic(context) ? 'البرمجة بلغة البايثون' : 'Python Programming';

  static String gameDevBookTitle(BuildContext context) =>
      isArabic(context) ? 'برمجة الألعاب الإلكترونية' : 'Game Development';

  static String psychologyBookTitle(BuildContext context) =>
      isArabic(context) ? 'إزالة القلق' : 'Overcoming Anxiety';

  static String autocadBookTitle(BuildContext context) =>
      isArabic(context) ? 'أساسيات أوتوكاد' : 'AutoCAD Basics';

  static String aiBookTitle(BuildContext context) =>
      isArabic(context) ? 'الذكاء الاصطناعي المتوافق مع البشر' : 'Human-Compatible AI';

  static String marketingBookTitle(BuildContext context) =>
      isArabic(context) ? 'التسويق الإلكتروني' : 'Digital Marketing';

  static String excelBookTitle(BuildContext context) =>
      isArabic(context) ? 'إتقان الإكسل' : 'Excel Mastery';
  
  static bool isArabic(BuildContext context) {
  final languageProvider = Provider.of<LanguageProvider>(context, listen: false);
  return languageProvider.isArabic;

}
 

 
}
