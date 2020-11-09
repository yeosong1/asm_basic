# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kukim <kukim@student.42seoul.kr>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/08 15:37:32 by kukim             #+#    #+#              #
#    Updated: 2020/11/09 17:37:55 by kukim            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libasm.a

ASMFLAG	= nasm -f macho64

EXEC	= libasm_kukim

SRCS	= ft_strlen.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_strdup.s \
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
	rm -rf $(NAME) $(EXEC) test.txt

re		: fclean all

test	: re
	gcc main.c -o $(EXEC) -L ./ -lasm

.PHONY	: all clean fclean re

