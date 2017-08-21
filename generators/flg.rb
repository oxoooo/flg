program_desc '命令行描述'

desc '简短说明'
long_desc '长说明'
command :add do |c|
  c.action do |global, options, args|
    say 'active_record'.camelize
  end
end

command :run do |c|
  c.action do |global, options, args|
    shell "bundle"
  end
end

command :mkdir do |c|
  c.action do |global, options, args|
    copy_file "a.text", "./app.txt"
  end
end

command :t do |c|
  c.action do |global, options, args|
    template name: 'demo.js.erb',
           data: {
            class_name: args.first.camelize
           },
           path: './demo.js'
  end
end