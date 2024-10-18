# Variáveis
NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror
SRCS = ft_atoi.c ft_strnstr.c ft_memcmp.c ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_isalpha.c ft_isalnum.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_memchr.c ft_strchr.c ft_strncmp.c ft_strrchr.c

OBJS = $(SRCS:.c=.o)

# Regras
all: $(NAME)

$(NAME): $(OBJS)
	@ar rcs $(NAME) $(OBJS)  # Aqui deve ter um TAB, não espaços

clean:
	@rm -f $(OBJS)  # Aqui também deve ter um TAB

fclean: clean
	@rm -f $(NAME)  # E aqui também

re: fclean all

.PHONY: all clean fclean re

