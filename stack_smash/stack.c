// 260_000
// 100_000
#define DATA_SIZE 2000
void foo(int depth) {
	char a[DATA_SIZE];
	printf("%d\n", depth*DATA_SIZE);
	foo(depth+1);
}
int main() {
	foo(0);
	return 0;
}
