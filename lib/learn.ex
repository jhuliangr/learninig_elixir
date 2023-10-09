defmodule Learn do
  def concurrency do
    pid = spawn(fn() -> loop() end)
    pid2 = spawn(fn() -> loop() end)

    send(pid, {:resend, 10})
    send(pid2, {:resend, 20})
  end
  def loop() do
    receive do
      {:resend, 0} -> 
        IO.puts "Done"
      {:resend, number} -> 
        send(self(), {:resend, number-1})
        IO.puts "--> #{number}"
        loop()
    after
      200 -> IO.puts "Time Up"
    end
  end
  def mod do
    Mo.imprimir() 
  end
end
