-- file: myproj.ex
puts(1, "Hello, I am ")
ifdef EUC then
    puts(1, "a translated")
end ifdef
ifdef EUI then
    puts(1, "an interpreted")
end ifdef
ifdef EUB then
    puts(1, "a bound")
end ifdef
ifdef EUB_SHROUD then
    puts(1, ", shrouded")
end ifdef
puts(1, " program.\n")