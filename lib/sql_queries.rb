def selects_all_female_bears_return_name_and_age
  "SELECT bears.name, bears.age FROM bears WHERE sex='F'"
end

def selects_all_bears_names_and_orders_in_alphabetical_order
  "SELECT name FROM bears ORDER BY name ASC"
end

def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
  "SELECT name, age FROM bears WHERE alive = 1 ORDER BY age ASC;"
end

def selects_oldest_bear_and_returns_name_and_age
   "SELECT name, age FROM bears WHERE age = (SELECT MAX(age) FROM bears) AND name IS NOT NULL;"
end

def select_youngest_bear_and_returns_name_and_age
  "SELECT name, age FROM bears WHERE age = (SELECT MIN(age) FROM bears);"
end
