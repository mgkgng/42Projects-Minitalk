SRCS_CLIENT = srcs/client/main.c
SRCS_SERVER = srcs/server/main.c

OBJS_CLIENT = ${SRCS_CLIENT:.c=.o}
OBJS_SERVER = ${SRCS_SERVER:.c=.o}

NAME_CLIENT = client
NAME_SERVER = server

INCLUDES = ./includes/

LIB_PATH = ./libft_printf/
LIB = ./libft_printf/libftprintf.a

CFLAGS = -Wall -Wextra -Werror

all: lib client server

lib:
		make all -C ${LIB_PATH}

client: ${OBJS_CLIENT}
		gcc ${CFLAGS} -I${INCLUDES} -o ${NAME_CLIENT} ${OBJS_CLIENT} libft_printf/libftprintf.a
		
server: ${OBJS_SERVER}
		gcc ${CFLAGS} -I${INCLUDES} -o ${NAME_SERVER} ${OBJS_SERVER} libft_printf/libftprintf.a

.c.o:
		gcc ${CFLAGS} -I${INCLUDES} -c $< -o ${<:.c=.o}

clean:
		rm -rf ${OBJS_SERVER} ${OBJS_SERVER}
		make clean -C ${LIB_PATH}

fclean:	clean
		rm -rf ${NAME} ${LIB}

re: fclean all

.PHONY: all bonus clean fclean re