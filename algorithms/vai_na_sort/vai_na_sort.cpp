#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

template <typename T>
vector<T> vai_na_sort(vector<T> v) {
	srand(time(NULL));
	random_shuffle(v.begin(), v.end());
	return v;
}

template <typename T>
void print(const vector<T> &v) {
	for(const T &element : v) {
		cout << element << " " ;
	}
	cout << endl;
}

int main() {
	int n;
	cin >> n;

	vector<int> v(n);
	for(int i = 0; i < n; i++) {
		cin >> v[i];
	}

	cout << "ORIGINAL: ";
	print(v);

	v = vai_na_sort(v);

	cout << "ORDENADO: ";
	print(v);

	if(is_sorted(v.begin(), v.end())) {
		cout << "Ae, deu bom! VAMO!" << endl;
	}
	else {
		cout << "Vish, deu nao, fi... mas o importante eh ter saude" << endl;
	}

	return 0;
}

