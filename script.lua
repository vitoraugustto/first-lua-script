texts = { 'Babe please stop!', 'You are not Malenia', 'Blade of Miquella' }
operators = { '+', '-', '/', '*' }

texts_file = io.open('texts.txt', 'w')
calcs_file = io.open('calc.txt', 'w')

function calc(value1, operator, value2)
  if operator == operators[1] then
    return value1 .. ' plus ' .. value2 .. ' results in ' .. value1 + value2
  elseif  operator == operators[2] then
    return value1 .. ' minus ' .. value2 .. ' results in ' .. value1 - value2
  elseif operator == operators[3] then
    return value1 .. ' divided by ' .. value2 .. ' results in ' .. value1 / value2
  elseif operator == operators[4] then
    return value1 .. ' multiplied by ' .. value2 .. ' results in ' .. value1 * value2
  else 
    error('Invalid operator. Must be one of "+", "-", "*" or "/".')
  end
end

number_of_lines = 50

i = 0
while i < number_of_lines do
  texts_file:write(texts[math.random(1, #texts)], '\n')
  calcs_file:write(calc(math.random(20, 100), operators[math.random(1, #operators)], math.random(1, 15)), '\n')

  i = i + 1
end
