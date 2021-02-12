defmodule HighOrderFunctions do
  def extract_user(user) do
    case Enum.filter(
           ["login", "email", "password"],
           fn key -> Map.has_key?(user, key) end
         ) do
      [] -> IO.puts("No missing fileds")
      missing_fields -> Enum.each(missing_fields, fn missing_field -> IO.puts(missing_field) end)
    end
  end
end
