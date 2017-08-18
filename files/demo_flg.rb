program_desc '脚手架描述'

desc '命令简单描述'
long_desc """
命令的长描述
"""
command :hello_word do |c|
  c.action do |global, options, args|
    say 'hello word'
  end
end

# 具体查看 https://github.com/oxoooo/flg