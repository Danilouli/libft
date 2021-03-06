# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dsaadia <dsaadia@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/13 16:37:57 by dsaadia           #+#    #+#              #
#    Updated: 2018/03/27 13:40:34 by dsaadia          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

null :=
space := ${null} ${null}

NAME = libft.a
CC = gcc
INCLUDES = ./includes/
CFLAGS = -Wall -Wextra -Werror -I$(INCLUDES)
SRCDIR = ./
HEADFILES = ft_printf.h get_next_line.h libft.h
SRCFILES = ft_int_tab_cpy.c ft_astrrev.c ft_memccpy.c ft_striteri.c ft_isspacer.c\
			ft_atoi.c ft_bzero.c ft_create_base.c ft_isalnum.c \
			ft_isalpha.c ft_isascii.c ft_isdigit.c ft_islower.c ft_isprint.c \
			ft_issign.c ft_isupper.c ft_itoa.c ft_troll.c ft_lstadd.c \
			ft_lstdel.c ft_lstdelone.c ft_lstiter.c ft_lstlen.c ft_lstmap.c \
			ft_lstnew.c ft_memalloc.c ft_memchr.c ft_memcmp.c ft_memcpy.c \
			ft_memdel.c ft_putendl_fd.c ft_putstr.c ft_putstr_fd.c \
			ft_memmove.c ft_memset.c ft_putchar.c ft_putchar_fd.c ft_putendl.c \
			ft_putnbr.c ft_putnbr_fd.c ft_strcat.c ft_strchr.c ft_strclr.c \
			ft_strcmp.c ft_strcpy.c ft_strdel.c ft_strdup.c ft_strequ.c \
			ft_striter.c ft_strjoin.c ft_strlcat.c ft_strlen.c ft_strmap.c \
			ft_strmapi.c ft_strncat.c ft_strncmp.c ft_strncpy.c ft_strnequ.c \
			ft_strnew.c ft_strnstr.c ft_strrchr.c ft_strrev.c ft_strsplit.c \
			ft_strstr.c ft_strsub.c ft_strtrim.c ft_tolower.c ft_toupper.c \
			ft_strndup.c ft_lstreverse.c ft_itos.c ft_itoa_base.c \
			ft_putwchar_fd.c ft_putwchar.c ft_putwstr_fd.c ft_putwstr.c \
			ft_putwendl_fd.c ft_putwendl.c ft_itows.c ft_wstrnew.c ft_wstrlen.c \
			ft_wstrdup.c ft_max.c ft_strjoindel.c ft_numberchars.c ft_printf.c \
			printf_init.c printf_converters_numeric.c printf_converters_string.c \
			format_numeric.c format_numeric_help.c format_basic.c format_string.c \
			pf_itoa_base.c deg_helpers.c deg_helpers2.c format_numeric_prec.c \
			del_pfarg.c printf_init_helpers.c get_next_line.c ft_isnumstr.c \
			ft_in_array.c ft_swap_ints.c ft_intarr_rev.c ft_intarr_min.c \
			ft_intarr_max.c ft_min_nums.c ft_intarr_push.c ft_free_strtab.c \
			ft_free_all.c ft_intarr_ctint.c ft_max_nums.c ft_strjoindelone.c \
			ft_in_strtab.c ft_intarr_init.c ft_strdelbool.c
SRC = $(subst ${space}, $(SRCDIR), $(SRCFILES))
HEAD = $(subst ${space}, $(INCLUDES), $(HEADFILES))
OBJ = $(SRCFILES:.c=.o)

all:  $(NAME)

$(NAME): $(OBJ) $(HEAD)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME) $(NAME:.a=.so)

re: fclean all

.SILENT: $(OBJ)
