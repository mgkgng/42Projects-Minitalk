SRCS_CLIENT = client/main.c

SRCS_SERVER = server/main.c

OBJS_CLIENT = ${SRCS_CLIENT:.c=.o}
OBJS_SERVER = ${SRCS_SERVER:.c=.o}

NAME =	libftprintf.a

INCLUDES = ./includes/

LIB_PATH = ./libft_printf/

CFLAGS =	-Wall -Wextra -Werror

all:		${NAME}

# ${NAME}:	${OBJS_CLIENT} ${OBJS_SERVER}
# 			make all -C ${LIB_PATH}
# 			cp libft_printf/libftprintf.a ${NAME}
# 			ar rc ${NAME} ${OBJS}

.c.o:
			gcc ${CFLAGS} -I${INCLUDES} -c $< -o ${<:.c=.o}

clean:
			rm -f ${OBJS_CLIENT} ${OBJS_SERVER}
			make clean -C ${LIB_PATH}

fclean:		clean
			rm -f ${NAME}

re: fclean all

.PHONY: all bonus clean fclean re

.PHONY : 