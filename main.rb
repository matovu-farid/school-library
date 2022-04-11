require_relative 'src/app'
require_relative './src/case_statement'
require_relative './src/display_classes/default'

def main
  choice = ''
  app = App.new
  until choice == '7'
    choice = Default.new.choose
    CaseStatement.new(choice, app).run
  end
end

main
