#include <stdint.h>
#include <stddef.h>


 

#define reg_uart_data (*(volatile uint32_t*)0x300000)

void putchar(char c)
{
	if (c == '\n')
		putchar('\r');
	reg_uart_data = c;
}

void print(const char *p)
{
	while (*p)
		putchar(*(p++));
}

 

int main(void)
{
  int i = 0;

 
	print("Hello World from a simple RV32I ISA emulator!\n");

  while(1)
  {
    i++;
    print("test\n");
    if(i==10) break;
  }

	print("Bye!\n");

  return 0;
}


