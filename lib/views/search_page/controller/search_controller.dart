import "package:api_task/views/home_page/view/home_view.dart";
import "package:get/get.dart";

class SearchPageController extends GetxController {
  var searchText = ''.obs;
  var recentSearches = [
    'New T-Shirt',
    'Top T-shirt',
    'Programmer',
    'Shirt',
    'Black Shirt',
    'White Shirt'
  ].obs;

  void updateSearchText(String text) {
    searchText.value = text;
  }

  void clearSearchText() {
    searchText.value = '';
    Get.to(HomeView());
  }
}
