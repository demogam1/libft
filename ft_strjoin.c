/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: misaev <misaev@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/03/26 16:47:06 by misaev            #+#    #+#             */
/*   Updated: 2021/04/06 14:17:16 by misaev           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strjoin(char const *s1, char const *s2)
{
	size_t	i;
	size_t	b;
	size_t	c;
	char	*new;

	if (!s1 || !s2)
		return (NULL);
	b = ft_strlen(s2);
	i = ft_strlen(s1);
	c = i + b;
	new = malloc(sizeof(char) * c);
	if (!new)
		return (NULL);
	b = 0;
	i = -1;
	while (s1[++i] != '\0')
		new[i] = s1[i];
	while (s2[b] != '\0')
	{
		new[i] = s2[b];
		b++;
		i++;
	}
	new[i] = '\0';
	return (new);
}
