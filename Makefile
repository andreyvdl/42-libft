# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adantas- <adantas-@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/01 16:25:52 by adantas-          #+#    #+#              #
#    Updated: 2022/09/23 16:03:43 by adantas-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		:=	libft.a
CFLAGS		:=	-Wall -Wextra -Werror
# ================================== COLORS ====================================
GRAY		:=	\033[1;30m
RED			:=	\033[1;31m
GREEN		:=	\033[1;32m
YELLOW		:=	\033[1;33m
BLUE		:=	\033[1;34m
PURPLE		:=	\033[1;35m
CYAN		:=	\033[1;36m
WHITE		:=	\033[1;37m
RESET		:=	\033[0m
# ================================== FILES =====================================
FILES1		:=	ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c \
				ft_isdigit.c ft_isprint.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c \
				ft_memset.c ft_strchr.c ft_strdup.c ft_strlcat.c ft_strlcpy.c ft_strlen.c \
				ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_tolower.c ft_toupper.c
FILES2		:=	ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_itoa.c \
				ft_substr.c ft_strjoin.c ft_strmapi.c ft_striteri.c ft_strtrim.c ft_split.c
FILESB		:=	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
				ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c
OBJS		=	$(FILES1:%.c=%.o) $(FILES2:%.c=%.o) 
BOBJS		=	$(FILESB:%.c=%.o)
# ==============================================================================

all:		$(NAME)

$(NAME):	$(OBJS)
	@echo "$(GREEN)Creating $(NAME)...$(RESET)"
	@ar rc $(NAME) $(OBJS)
	@echo "$(GREEN)$(NAME) created$(RESET)"

$(OBJS):
	@cc $(CFLAGS) -c $(@:.o=.c)

bonus:	
	@echo "$(CYAN)Adding bonus files to $(NAME)...$(RESET)"
	@make OBJS="$(BOBJS)" --no-print-directory
	@echo "$(CYAN)Bonus files added to $(NAME).$(RESET)"

clean:
	@echo "$(GRAY)Removing objects...$(RESET)"
	@rm -rf *.o
	@echo "$(GRAY)Objects removed.$(RESET)"

fclean:		clean
	@echo "$(PURPLE)Removing $(NAME)...$(RESET)"
	@rm -rf $(NAME)
	@echo "$(PURPLE)$(NAME) removed.$(RESET)"

re:			fclean all
	@echo "$(RED)Update completed.$(RESET)"

norme:
	@echo "$(YELLOW)Running norminette...$(RESET)"
	@norminette *.c *.h
	@echo "$(YELLOW)Everything OK.$(RESET)"

.PHONY: all bonus clean fclean re norme
