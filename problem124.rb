def crop_hydrated(field)
  final = []
  height = field.size
  width = field[0].size
  field.each_with_index do |a, i|
    a.each_with_index do |b, j|
      if b == "w"
        aux = [[i - 1, j - 1], [i - 1, j], [i - 1, j + 1],
               [i, j - 1], [i, j], [i, j + 1],
               [i + 1, j - 1], [i + 1, j], [i + 1, j + 1]]
        final = final | aux.reject { |a| a.any? { |n| n.negative? } || a[0] == height || a[1] == width }
      end
    end
  end
  final.size == height * width
end

p crop_hydrated([["c", "c", "c", "c"],
                 ["w", "c", "c", "c"],
                 ["c", "c", "c", "c"],
                 ["c", "w", "c", "c"]])
p crop_hydrated([
  ["w", "c"],
  ["w", "c"],
  ["c", "c"],
])
