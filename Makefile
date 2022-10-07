SRCS_CLIENT = client/main.c

SRCS_SERVER = server/main.c

OBJS_CLIENT = ${SRCS_CLIENT:.c=.o}
OBJS_SERVER = ${SRCS_SERVER:.c=.o}

NAME = minitalk

INCLUDES = ./includes/

LIB_PATH = ./libft_printf/
LIB = ./libft_printf/libftprintf.a

CFLAGS = -Wall -Wextra -Werror

all: server

server: ${OBJS_SERVER}
		make all -C ${LIB_PATH}
		gcc ${CFLAGS} -I${INCLUDES} -o ${NAME} ${OBJS_SERVER} libft_printf/libftprintf.a

.c.o:
		gcc ${CFLAGS} -I${INCLUDES} -c $< -o ${<:.c=.o}

clean:
		rm -rf ${OBJS_SERVER}
		make clean -C ${LIB_PATH}

fclean:		clean
			rm -rf ${NAME} ${LIB}

re: fclean all

.PHONY: all bonus clean fclean re