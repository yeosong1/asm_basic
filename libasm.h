/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kukim <kukim@student.42seoul.kr>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/08 16:45:58 by kukim             #+#    #+#             */
/*   Updated: 2020/11/09 17:01:19 by kukim            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

# include <stdio.h>
# include <string.h>
# include <fcntl.h>
# include <unistd.h>
# include <stdlib.h>

// # define BLUE "\x1b[34m"
// # define CYAN "\x1b[36m"
// # define RESET "\x1b[0m"


#define R "\x1b[31m"
#define G "\x1b[32m"
#define Y "\x1b[33m"
#define S "\x1b[0m"

size_t		ft_strlen(const char *s);
int			ft_strcmp(const char *s1, const char *s2);
char		*ft_strcpy(const char *dst, const char *src);
char		*ft_strdup(const char *s1);
int			ft_write(int fd, void *buff, size_t nbyte);
int			ft_read(int fd, void *buff, size_t nbyte);

#endif
