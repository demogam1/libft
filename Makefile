CC=gcc
AR=ar
ARFLAGS=rc
FLAGS=-Wall -Wextra -Werror
NAME=libft.a
SRC= ft_strlen.c ft_atoi.c ft_memset.c \
	ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c ft_memchr.c ft_memcmp.c \
	ft_strdup.c ft_strncmp.c ft_strnstr.c ft_calloc.c \
	ft_strlcat.c ft_strchr.c ft_strlcpy.c ft_split.c \
	ft_strrchr.c ft_toupper.c ft_tolower.c ft_strmapi.c ft_substr.c ft_strjoin.c \
	ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strtrim.c \
	ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_itoa.c \

SRC_bonus = ft_lstnew.c ft_lstadd_front.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c \
			ft_lstiter.c ft_lstmap.c ft_lstsize.c ft_lstlast.c \

OBJ = $(SRC:.c=.o)
OBJ_B = $(SRC_bonus:.c=.o)

all: $(NAME)

bonus : $(OBJ_B)
		$(AR) $(ARFLAGS) $(NAME) $(OBJ_B)


$(NAME): $(OBJ)
	$(AR) $(ARFLAGS) $(NAME) $(OBJ)

%.o: %.c
	$(CC) $(FLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(OBJ_B)

fclean: clean
	rm -f $(NAME)

re: fclean all
