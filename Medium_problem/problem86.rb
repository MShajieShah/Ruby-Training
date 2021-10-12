# A frog wants to cross a river. Unfortunately, he can't jump across in a single leap. Luckily, there are n stones  in the river.
# The frog can jump from the near bank to stone 1 and from stone n to the far bank. He can also jump from  stone to stone, forward and backward. However, on each stone, a number j is written and he must only jump  exactly j stones backward or forward.
# Return the minimum number of jumps to cross the river (including jumps to the first stone and from the last  stone (or any other stone, if possible) to the far bank) or no chance :-( if it's not possible to cross the river.
# Examples
# jumping_frog(5, [1, 1, 1, 1, 1]) ➞ 6
# jumping_frog(5, [1, 3, 1, 1, 1]) ➞ 4
# jumping_frog(5, [1, 1, 0, 1, 1]) ➞ "no chance :-("
def jumping_frog(_, s)
  len = s.length
  c = 1
  i = 0
  while i < len
    n = s[i]
    if n == 0
      return "no chance :-("
    end
    if i + n < len && i - n >= 0 && i - n + s[i - n] > i + n + s[i + n]
      i -= n
    else
      i += n
    end
    c += 1
  end
  c
end

p jumping_frog(5, [1, 1, 1, 1, 1])
