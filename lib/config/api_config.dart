class ApiConfig {
  // Base URL
  static const String baseUrl = "https://srajalden.swbai.com/api";
  
  // API Endpoints
  static const String menusBottomHeader = "/menus/position/bottom_header";
  static const String pages = "/pages"; //for the biography
  static const String articlesCategories = "/categories/articles/main";
  static const String soundsCategories = "/categories/sounds/main";
  static const String videosCategories = "/categories/videos/main";
  static const String booksCategories = "/categories/books/main";
  static const String photoGalleriesCategories = "/categories/photo_galleries/main";
  static const String search = "/search";
  
  // Helper method to get full URL with query parameters
  static String getFullUrl(String endpoint) {
    return baseUrl + endpoint;
  }
  
  // Helper method to get pages URL with pagination
  static String getPagesUrl({int page = 1, int perPage = 15}) {
    return "$baseUrl$pages?page=$page&per_page=$perPage";
  }
}

