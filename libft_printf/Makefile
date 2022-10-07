SRCS =	srcs/ft_printf.c \
		srcs/ft_printf_utils.c \
		srcs/get.c \
		srcs/print.c \
		srcs/print_utils.c \
		srcs/print_c.c \
		srcs/print_d.c \
		srcs/print_p.c \
		srcs/print_s.c \
		srcs/print_u.c \
		srcs/print_x.c \
		srcs/width.c \

OBJS =	${SRCS:.c=.o}

NAME =	libftprintf.a

INCLUDES = ../includes/

LIB_PATH = ./libft/

CFLAGS =	-Wall -Wextra -Werror

all:		${NAME}

${NAME}:	${OBJS}
			make all -C ${LIB_PATH}
			cp libft/libft.a ${NAME}
			ar rc ${NAME} ${OBJS}

.c.o:
			gcc ${CFLAGS} -I${INCLUDES} -c $< -o ${<:.c=.o}

clean:
			rm -f ${OBJS}
			make clean -C ${LIB_PATH}

fclean:		clean
			rm -f ${NAME}

re: fclean all

.PHONY: all bonus clean fclean re
