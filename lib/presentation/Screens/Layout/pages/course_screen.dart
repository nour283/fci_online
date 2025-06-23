import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tadrib_hub/presentation/Buttoms/coursesSection.dart';
import 'package:tadrib_hub/presentation/Screens/Layout/pages/language_provider.dart'; 

class CoursesScreen extends StatefulWidget {
  @override
  _CoursesScreenState createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  final ScrollController _scrollController = ScrollController();

  final GlobalKey _programmingKey = GlobalKey();
  final GlobalKey _designKey = GlobalKey();
  final GlobalKey _developmentKey = GlobalKey();
  final GlobalKey _businessKey = GlobalKey();
  final GlobalKey _marketingKey = GlobalKey();

  void _scrollToSection(String section) {
    GlobalKey? targetKey;
    switch (section) {
      case 'programming':
        targetKey = _programmingKey;
        break;
      case 'design':
        targetKey = _designKey;
        break;
      case 'development':
        targetKey = _developmentKey;
        break;
      case 'business':
        targetKey = _businessKey;
        break;
      case 'marketing':
        targetKey = _marketingKey;
        break;
    }

    if (targetKey != null && targetKey.currentContext != null) {
      final RenderBox renderBox =
          targetKey.currentContext!.findRenderObject() as RenderBox;
      final position = renderBox.localToGlobal(Offset.zero);
      final offset = position.dy - 80;
      _scrollController.animateTo(
        offset > 0 ? offset : 0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        controller: _scrollController,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/background3.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
                        ShaderMask(
                          shaderCallback: (bounds) {
                            return const LinearGradient(
                              colors: [Color(0xFF3700FF), Color(0xFF210099)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ).createShader(
                              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                            );
                          },
                          child: Column(
                            children: [
                              Text(
                                languageProvider.isArabic ? 'اختر' : 'Choice',
                                style: const TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2.0,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      color: Color(0x40000000),
                                      offset: Offset(3, 3),
                                      blurRadius: 4,
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                languageProvider.isArabic
                                    ? 'الدورة المفضلة'
                                    : 'favorite course',
                                style: const TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 5,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      color: Color(0x40000000),
                                      offset: Offset(3, 3),
                                      blurRadius: 4,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -80,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () => _scrollToSection('design'),
                        child: Image.asset(
                          'assets/images/Design-Button.png',
                          height: 90,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _scrollToSection('development'),
                        child: Text(languageProvider.isArabic ? 'تطوير' : 'Development'),
                      ),
                      GestureDetector(
                        onTap: () => _scrollToSection('business'),
                        child: Text(languageProvider.isArabic ? 'إدارة الأعمال' : 'Business'),
                      ),
                      GestureDetector(
                        onTap: () => _scrollToSection('programming'),
                        child: Text(languageProvider.isArabic ? 'برمجة' : 'Programming'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          GestureDetector(
            onTap: () => _scrollToSection('marketing'),
            child: Text(languageProvider.isArabic ? 'تسويق' : 'Marketing'),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background1.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  languageProvider.isArabic ? 'موصى لك' : 'Recommended for you',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/background2.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CoursesSection(
                        imagePath: 'assets/images/UI.png',
                        title: languageProvider.isArabic ? 'تصميم واجهات' : 'UI UX DESIGN',
                        description: languageProvider.isArabic
                            ? 'تعلم تصميم المواقع بطريقة احترافية تجعلك مؤهلًا للسوق.'
                            : 'Learn website design with great professionalism that will make you qualified for the labor market.',
                        instructor: 'Lina',
                        price: 'FREE',
                      ),
                      CoursesSection(
                        imagePath: 'assets/images/PYTHION.png',
                        title: languageProvider.isArabic ? 'بايثون' : 'Python',
                        description: languageProvider.isArabic
                            ? 'تعلم البرمجة بلغة بايثون، تصميم قواعد البيانات، وإنشاء تطبيقات إنترنتية.'
                            : 'learn how to code in Python, design and access databases, create interactive web applications, and share your apps with the world',
                        instructor: 'Lina',
                        price: 'FREE',
                      ),
                      CoursesSection(
                        imagePath: 'assets/images/E_commerce2.png',
                        title: languageProvider.isArabic ? 'التجارة الإلكترونية' : 'E_commerce',
                        description: languageProvider.isArabic
                            ? 'تعلّم إدارة الأعمال واستراتيجيات التسويق التي تُعتبر مفتاح التشغيل عبر الإنترنت.'
                            : 'teach business management and marketing strategy skills, which are key to successfully operating an online business with an e-commerce storefront',
                        instructor: 'Lina',
                        price: 'FREE',
                      ),
                      CoursesSection(
                        imagePath: 'assets/images/JAVE2.png',
                        title: languageProvider.isArabic ? 'جافا' : 'Jave',
                        description: languageProvider.isArabic
                            ? 'دورات تغطي المهارات في البرمجة الكائنية التوجه، وتطوير البرامج، وإنشاء التطبيقات.'
                            : 'courses that cover skills in object-oriented programming, software development, and app creation.',
                        instructor: 'Lina',
                        price: 'FREE',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Programming Section
          Container(
            key: _programmingKey,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  languageProvider.isArabic ? 'برمجة' : 'Programming',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    CoursesSection(
                      imagePath: 'assets/images/c++.png',
                      title: languageProvider.isArabic ? 'C++' : 'C++',
                      description: languageProvider.isArabic
                          ? 'دورات إدارة الأعمال والتسويق.'
                          : 'Teach business management and marketing strategy skills.',
                      instructor: 'Lina',
                      price: 'FREE',
                    ),
                    const SizedBox(width: 12),
                    CoursesSection(
                      imagePath: 'assets/images/PYTHION.png',
                      title: 'Python',
                      description: languageProvider.isArabic
                          ? 'تعلّم كيفية البرمجة بلغة بايثون، وتصميم قواعد البيانات، وإنشاء تطبيقات إنترنتية.'
                          : 'learn how to code in Python, design and access databases, create interactive web applications.',
                      instructor: 'Lina',
                      price: 'FREE',
                    ),
                    const SizedBox(width: 12),
                    CoursesSection(
                      imagePath: 'assets/images/JAVE2.png',
                      title: 'Java',
                      description: languageProvider.isArabic
                          ? 'دورات تغطي مهارات البرمجة الكائنية التوجه وتطوير البرامج وإنشاء التطبيقات.'
                          : 'courses that cover skills in object-oriented programming, software development, and app creation.',
                      instructor: 'Lina',
                      price: 'FREE',
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Design Section
          Container(
            key: _designKey,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background1.png"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  languageProvider.isArabic ? 'تصميم' : 'Design',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    CoursesSection(
                      imagePath: 'assets/images/UI.png',
                      title: languageProvider.isArabic ? 'تصميم واجهات' : 'UI UX DESIDN',
                      description: languageProvider.isArabic
                          ? 'هو عملية تصميم تجربة المستخدم عند التفاعل مع منتج ما.'
                          : 'Simply put, user experience design is the process of planning the experience a person has when they interact with a product.',
                      instructor: 'Lina',
                      price: 'FREE',
                    ),
                    const SizedBox(width: 12),
                    CoursesSection(
                      imagePath: 'assets/images/adobe.png',
                      title: 'Adobe Photoshop',
                      description: languageProvider.isArabic
                          ? 'كن مبدعًا بإنشاء هوية خاصة بك.'
                          : 'Be innovative and creative by creating your own identity.',
                      instructor: 'Lina',
                      price: 'FREE',
                    ),
                    const SizedBox(width: 12),
                    CoursesSection(
                      imagePath: 'assets/images/adobe2.png',
                      title: 'Adobe Illustrator',
                      description: languageProvider.isArabic
                          ? 'تعلّم تصميم الخطوط وإنشاء شعارك بشكل احترافي.'
                          : 'Learn to design fonts and create your own logo professionally.',
                      instructor: 'Lina',
                      price: 'FREE',
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                CoursesSection(
                  imagePath: 'assets/images/adxd.png',
                  title: 'Adobe XD',
                  description: languageProvider.isArabic
                      ? 'أداة تصميم للمواقع والتطبيقات.'
                      : 'is a vector design tool for web and mobile applications.',
                  instructor: 'Lina',
                  price: 'FREE',
                ),
              ],
            ),
          ),

          // Development Section
          Container(
            key: _developmentKey,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  languageProvider.isArabic ? 'تطوير' : 'Development',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    CoursesSection(
                      imagePath: 'assets/images/devolp.png',
                      title: languageProvider.isArabic
                          ? 'تطوير البرمجيات'
                          : 'Software development',
                      description: languageProvider.isArabic
                          ? 'دورات تطوير البرمجيات لتتعلم كيفية إنشاء برامجك الخاصة.'
                          : 'Software development courses to learn how to create their own software programs.',
                      instructor: 'Lina',
                      price: 'FREE',
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Business Section
          Container(
            key: _businessKey,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background1.png"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  languageProvider.isArabic ? 'إدارة الأعمال' : 'Business',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    CoursesSection(
                      imagePath: 'assets/images/E_BUSINESS.png',
                      title: languageProvider.isArabic ? 'العمل الإلكتروني' : 'E_Business',
                      description: languageProvider.isArabic
                          ? 'إدارة أي عمل باستخدام الإنترنت، الإكسانترنت، الويب، والإنترانت.'
                          : 'is the administration of conducting any business using the internet, extranet, web, and intranet',
                      instructor: 'Lina',
                      price: 'FREE',
                    ),
                    const SizedBox(width: 12),
                    CoursesSection(
                      imagePath: 'assets/images/E_commerce.png',
                      title: languageProvider.isArabic ? 'التجارة الإلكترونية' : 'E_commerce',
                      description: languageProvider.isArabic
                          ? 'تعلّم مهارات إدارة الأعمال واستراتيجيات التسويق الأساسية لتشغيل متجر إلكتروني بنجاح.'
                          : 'teach business management and marketing strategy skills, which are key to successfully operating an online business with an e-commerce storefront',
                      instructor: 'Lina',
                      price: 'FREE',
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Marketing Section
          Container(
            key: _marketingKey,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  languageProvider.isArabic ? 'تسويق' : 'Marketing',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    CoursesSection(
                      imagePath: 'assets/images/Marketing2.png',
                      title: languageProvider.isArabic ? 'التسويق' : 'Marketing',
                      description: languageProvider.isArabic
                          ? 'فهم احتياجات العملاء وتلبية تلك الاحتياجات عن طريق الشركة.'
                          : 'understanding the needs of customers, and communicating how a business meets those needs',
                      instructor: 'Lina',
                      price: 'FREE',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}