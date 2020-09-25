module MyFirstGenieApp

using Logging, LoggingExtras

function main()
  Base.eval(Main, :(const UserApp = MyFirstGenieApp))

  include(joinpath("..", "genie.jl"))

  Base.eval(Main, :(const Genie = MyFirstGenieApp.Genie))
  Base.eval(Main, :(using Genie))
end; main()

end
