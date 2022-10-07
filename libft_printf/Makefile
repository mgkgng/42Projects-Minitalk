SRCS =	srcs/ft_printf_srcs.c \
		srcs/ft_printf_utils_srcs.c \
		srcs/get_srcs.c \
		srcs/print_srcs.c \
		srcs/print_utils_srcs.c \
		srcs/print_c_srcs.c \
		srcs/print_d_srcs.c \
		srcs/print_p_srcs.c \
		srcs/print_s_srcs.c \
		srcs/print_u_srcs.c \
		srcs/print_x_srcs.c \
		srcs/width_srcs.c \
		srcs/libft.c

OBJS =	${SRCS:.c=.o}

NAME =	libftprintf.a

INCLUDES = ./includes/

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
