class CustomFile
  def get_absolute_path(filename)
    File.expand_path(filename)
  end

  def check_file_is_directory(filename)
    File.directory?(filename)
  end

  def check_file_exist(filename)
    File.exist?(filename)
  end

  def get_file_change_time(filename)
    File.mtime(filename)
  end
end


class CustomHash
  def reject_with_block(hash, &block)
    hash.delete_if(&block)
  end


  def hash_is_empty(hash)
    hash.empty?
  end
end


CH = CustomHash.new
print(CH.reject_with_block({"a" => 1, "b" => 2}) {|k, v| v == 1})



class CustomSymbol
  def symbols_arr
    Symbol.all_symbols
  end

  def if_symbol_between(a, b, c)
    # Не знаю
  end
end

CS = CustomSymbol.new
print("\n\n")
print(CS.symbols_arr)



class CustomTime
  def time_now
    Time.now
  end

  def is_friday_today
    t = Time.now
    t.friday?
  end

  def my_timezone
    Time.now.zone
  end
end

print("\n\n")
CT = CustomTime.new
print(CT.time_now)
print("\nIs friday? ", CT.is_friday_today)
print("\nMy Timezone: ", CT.my_timezone)
