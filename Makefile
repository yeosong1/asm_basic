# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kukim <kukim@student.42seoul.kr>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/08 15:37:32 by kukim             #+#    #+#              #
#    Updated: 2020/11/08 16:18:12 by kukim            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libasm.a

ASMFLAG	= nasm -f macho64
CFLAG	= gcc -Wall -Wextra -Werror

SRCS	= ft_strlen.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_strdup \
		ft_write.s \
		ft_read.s

OBJS	= $(SRCS:.s=.o)

%.o		: %.s
	$(ASMFLAG) $<

all		: $(NAME)

$(NAME)	: $(OBJS)
	ar rc $(NAME) $(OBJS)

clean	:
	rm -rf $(OBJS)
fclean	: clean
	rm -rf $(NAME)

re		: fclean all

.PHONY	: all clean fclean re

