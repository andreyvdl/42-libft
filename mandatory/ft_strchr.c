/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adantas- <adantas-@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/01 21:00:28 by adantas-          #+#    #+#             */
/*   Updated: 2022/09/12 21:27:26 by adantas-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

char	*ft_strchr(const char *s, int c)
{
	int		i;

	i = 0;
	while ((char)c != s[i] && s[i] != '\0')
		i++;
	if ((char)c == s[i])
		return (&((char *)s)[i]);
	return (0x0);
}
