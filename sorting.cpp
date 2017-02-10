#include <vector>
#include <iostream>
#include <sstream>

std::vector<int> insertion_sort(const std::vector<int> &input) {
	std::vector<int> sorted;
	for (int input_elem : input) {
		auto i = sorted.begin();
		auto e = sorted.end();
		for (; i != e && *i < input_elem; i++) {}
		sorted.insert(i, input_elem);
	}
	return sorted;
}

// test
int main() {
	std::vector<int> test_array = {2, 6, 3, 5, 8, 1, 3};
	std::vector<int> actual = insertion_sort(test_array);
	std::vector<int> expected = {1, 2, 3, 3, 5, 6, 8};
	auto vector_to_string = [](std::vector<int> v) -> std::string {
		std::ostringstream oss;
		for (int i : v) {
			oss << i << " ";
		}
		return oss.str();
	};
	if (expected == actual) {
		std::cout << "Pass!" << std::endl;
	} else {
		std::cout << "Fail!" << std::endl;
		std::cout << "Expected: " << vector_to_string(expected) << std::endl;
		std::cout << "Actual: " << vector_to_string(actual) << std::endl;
	}
}


