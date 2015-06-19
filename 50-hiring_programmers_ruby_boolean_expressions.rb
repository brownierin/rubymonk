# my code
is_an_experienced_programmer = hireable
  candidate.languages_worked_with.include?('Ruby') &&
  (candidate.github_points >= 500 || candidate.years_of_experience >= 2 ) &&
  !(candidate.applied_recently? || candidate.age < 15)

# allan and i refactored it
def worked_with_ruby?(c)
  c.languages_worked_with.include?('Ruby')
end

def awesome_githubber?(c)
  c.github_points >= 500
end

def super_experienced?(c)
  c.years_of_experience >= 2
end

def has_demonstrable_proficiency?(c)
  awesome_githubber(c) || super_experienced?(c)
end

def red_flagged?(c)
  c.applied_recently || c.age < 15
end

def qualified?(c)
  worked_with_ruby?(c) && has_demonstrable_proficiency?(c)
end


is_an_experienced_programmer = qualified?(c) && !redflagged?(c)

#solution
# is_an_experienced_ruby_programmer =
#   (candidate.languages_worked_with.include? 'Ruby') &&
#   (candidate.years_of_experience >= 2 || candidate.github_points >= 500) &&
#   ! (candidate.age < 15 || candidate.applied_recently?)
