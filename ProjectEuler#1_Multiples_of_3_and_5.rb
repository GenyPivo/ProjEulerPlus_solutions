# https://www.hackerrank.com/contests/projecteuler/challenges/euler001

# Sum of progression
def seq(n , d)
  n  * ((n - 1) * d)/2
end
# Union 3 and 5 progressions and substract 3 * 5
def seqs_sum(max, n1 , n2)
  seq((max - 1) / n1 + 1 , n1) + seq((max - 1) / n2 + 1, n2) - seq((max - 1) / (n2 * n1) + 1, n2 * n1)
end
ARGF.each_with_index do |n, id|
  if id != 0
    puts seqs_sum(n.to_i,3,5)
  end
end