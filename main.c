#include "libasm.h"

void		test_strlen(void)
{
	char	str[2048];

    printf(Y "====================\n");
    printf("==    ft_strlen   ==\n");
    printf("====================\n");
	printf(G"<test>\n");
	printf("input a string 1 ===> : ");
	scanf("%s", str);
	printf(R"<result>\n");
	printf("   strlen : %lu\n", strlen(str));
    printf("ft_strlen : %zu\n", ft_strlen(str));
}

void		test_strcpy(void)
{
	char	s1[1024];
	char	s2[1024];
	char	*dest1;
	char	*dest2;

    printf(Y "====================\n");
    printf("==    ft_strcpy   ==\n");
    printf("====================\n");
	printf(G"<test>\n");
	printf("input a string SRC ===> : ");
	scanf("%s", s1);
	printf("input a string DEST ===> : ");
	scanf("%s", s2);
	dest1 = strdup(s1);
	dest2 = strdup(s2);
	printf(R"<result>\n");
	printf("   strcpy : %s\n", strcpy(s1, s2));
    printf("ft_strcpy : %s\n", ft_strcpy(dest1, dest2));
}

void		test_strcmp(void)
{
	char	str1[1024];
	char	str2[1024];

    printf(Y "====================\n");
    printf("==    ft_strcmp   ==\n");
    printf("====================\n");
	printf(G"<test>\n");
	printf("input a string str1 ===> : ");
	scanf("%s", str1);
	printf("input a string str2 ===> : ");
	scanf("%s", str2);
	printf(R"<result>\n");
	printf("   strcmp : %lu\n", strcmp(str1, str2));
    printf("ft_strcmp : %zu\n", ft_strcmp(str1, str2));
}

void		test_strdup(void)
{
	char	str[2048];

    printf(Y "====================\n");
    printf("==    ft_strdup   ==\n");
    printf("====================\n");
	printf(G"<test>\n");
	printf("input a string  ===> : ");
	scanf("%s", str);
	printf(R"<result>\n");
	printf("   strlen : %lu\n", strlen(str));
    printf("ft_strlen : %zu\n", ft_strlen(str));

}

int main()
{
	test_strlen();
	test_strcpy();
	test_strcmp();
	test_strdup();
	// test_write()
	// test_read()

	return (0);
}




// void	test_write()
// {


// }

// void	test_read()
// {


// }

