/// Constants for the Benefits & Fatwas feature
class BenefitsConstants {
  BenefitsConstants._();
  
  // Pagination
  static const int itemsPerPage = 6;
  static const double loadMoreThreshold = 0.8; // Load more at 80% scroll
  static const int maxItemsPerRow = 3;
  
  // Grid Layout
  static const int gridCrossAxisCount = 2;
  static const double gridChildAspectRatio = 0.65;
  
  // Animation Delays (milliseconds)
  static const int baseAnimationDelay = 100;
  static const int rowAnimationDelay = 200;
  static const int cardAnimationDelay = 100;
  
  // UI Messages
  static const String emptyBenefitsMessage = 'لا توجد فوائد وفتاوى متاحة';
  static const String emptyCategoryMessage = 'لا توجد مقالات في هذا القسم';
  static const String loadingBenefitsMessage = 'جاري تحميل الفوائد والفتاوى...';
  static const String loadingCategoryMessage = 'جاري تحميل المقالات...';
  static const String defaultArticleTitle = 'عنوان المقال';
  static const String defaultVisitorCount = '0';
  static const String pageTitle = 'فوائد وفتاوى';
  static const String viewAllText = 'الكل';
  static const String authorLabel = 'الإمام الشيخ';
  
  // Error Messages
  static const String genericError = 'حدث خطأ أثناء تحميل البيانات';
  static const String networkError = 'خطأ في الاتصال بالشبكة';
  static const String invalidResponseError = 'استجابة غير صالحة من الخادم';
}

