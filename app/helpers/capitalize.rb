def to_capital(name)
  name.split.map(&:capitalize).join(' ')
end