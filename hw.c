
int cdecl bdos(int fn, unsigned dx, ...);

int main()
{
	bdos(9,(unsigned)"small dos helloworld$");
	return 0;
}
