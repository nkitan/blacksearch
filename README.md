___________________________________________________________________________________________________________

BLACKSEARCH ,the tool search for BlackArch Linux

- access to over 2000 tools
- provides easy tool discovery
- supports sh detection
- uses blackarch as base

-------------------------------------------------

BUILD IT YOURSELF

1. Clone the Repository using - git clone https://github.com/nkitan/blacksearch 
2. Head over to blacksearch directory using - cd blacksearch
3. set execution privilages using - chmod +x blacksearch.sh
4. execute script using - ./blacksearch.sh


You can now run it using blacksearch along with the search query / item
for eg.
$> blacksearch QUERY                                                                                                              <ENTER>                                                                                                                           QUERY-RESULTS                                                                                                                            $>

------------------------------------------------ 

it has bugs as of right now.
it leaves behind with the user able to grep anything outta good ol' sudo'ed pacman. This shall be our main priority(to fix, obviously). Please feel free to contribute and talk to me about it. Forking is also a thing, feel free to fork your very own custom search.

based on the MIT license
written by nkitan on feb, the 17th
