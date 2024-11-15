SRCS = ft_printf.c \
		ft_putchar.c \
		ft_putstr.c \
		ft_putnbr.c \
		ft_unsinbr.c \
		ft_putnbr_base.c \
		ft_putvoid.c 
NAME = libftprintf.a
OBJS = ${SRCS:.c=.o}
CC = cc
FLAGS = -Wall -Werror -Wextra
RM = rm -rf
LIBC = ar -rcs


.c.o:
	${CC} ${FLAGS} -c $< -o ${<:.c=.o} 

${NAME}: ${OBJS}
	${LIBC} ${NAME} ${OBJS} 

all: ${NAME} 

clean:
	${RM} ${OBJS}

fclean: clean
	${RM} ${NAME}

re: fclean all