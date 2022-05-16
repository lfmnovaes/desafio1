##
# It splits the expression into tokens, and for each token, if it's an operator, it pops the top two
# elements off the stack, applies the operator to them, and pushes the result back onto the stack;
# otherwise, it pushes the token onto the stack
#
# Args:
#   expression: a string containing the expression to be evaluated (operators and numbers
#     separated by white spaces)

class App
  def run
    puts 'RPN (Reverse Polish Notation) Calculator'
    puts 'Enter an expression to be evaluated (operators and numbers separated by white spaces or new line)'
    puts 'Enter "=" to show the result'
    input = gets("=\n").chomp
    expression = input.gsub(%r{[\/\n,=]}, ' ').strip
    puts "The answer of the expression #{expression} is: #{rpn_calculator(expression)}"
  end

  def rpn_calculator(expression)
    stack = []
    expression.split.each do |token|
      case token
      when '+', '-', '*', '/'
        op2 = stack.pop
        op1 = stack.pop
        stack.push(op1.send(token, op2))
      else
        stack.push(token.to_i)
      end
    end
    stack.last.round(3)
  end
end

def main
  app = App.new
  app.run
end

main if __FILE__ == $0
