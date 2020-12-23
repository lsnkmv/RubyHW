
class DataValidator
  def validate_name(name)
    if /^\D+$/.match(name)
      name
    else
      raise "Validation error in name"
    end
  end

  def validate_phone_number(phone_number)
    if /^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\.0-9]*$/.match(phone_number)
      phone_number
    else
      raise "Validation error in phone_number"
    end
  end

  def validate_country(country)
    if country
      if %w[Россия США Япония Китай Таиланд
          Германия Эстония Финляндия
          Беларусь Украина].include? country
        country
      else
        raise "Validation error in country"
      end
    end

  end

  def validate_organization(organization)
    if organization
      if /^\D+$/.match(organization)
        organization
      else
        raise "Validation error in organization"
      end
    end

  end

  def validate_position(position)
    if position
      if /^\D+$/.match(position)
        position
      else
        raise "Validation error in position"
      end
    end

  end

  def validate_user(second_name,
                    first_name,
                    third_name,
                    phone_number,
                    country,
                    birthday_date,
                    organization,
                    position)
    self.validate_name(second_name)
    self.validate_name(first_name)
    self.validate_name(third_name)
    self.validate_country(country)
    self.validate_phone_number(phone_number)
    self.validate_organization(organization)
    self.validate_position(position)
    true

  end

end

class User
  DV = DataValidator.new
  def initialize(second_name,
                 first_name,
                 third_name,
                 phone_number,
                 country=nil,
                 birthday_date=nil,
                 organization=nil,
                 position=nil)
    DV.validate_user(second_name, first_name, third_name, phone_number, country, birthday_date, organization, position)

    @second_name = second_name
    @first_name = first_name
    @third_name = third_name
    @phone_number = phone_number
    @country = country
    @birthday_date = birthday_date
    @organization = organization
    @position = position
    puts "Контакт добавлен"

  end

  def get_user_arr
    [@second_name, @first_name, @third_name, @phone_number, @country,
    @birthday_date, @organization, @position]
  end
end

user_1 = User.new('Кисель', 'Дмитрий', 'Григорьевич', '+79217694985', 'Россия')

class DBClient

  def connect
    puts "Успешное подключение к базе"
  end

  def fetch(sql)
    true
  end

end

$table_name = "users"

class ConvertForDB

  def arr_to_sql(arr)
    col_val = ""
    arr.each_with_index do |s,i|
      if i
        col_val += "column#{i+1} = #{s}, "
      else
        col_val += "column#{i+1} = Null, "
      end
    end
    col_val = col_val[0..col_val.length - 1]
    "UPDATE " + $table_name + " SET " + col_val + ";"
  end

end

CFDB = ConvertForDB.new
sql = CFDB.arr_to_sql(user_1.get_user_arr)
print(sql)
print("\n\nDB Fetch result: ")
DBC = DBClient.new
print(DBC.fetch(sql))