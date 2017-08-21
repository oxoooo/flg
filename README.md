# Flg

本工具是一个团队效率工具，快速构建非rails项目的脚手架，兼容其他语言。

## 安装

1. 安装 Ruby 版本要求2.0以上
2. gem install flg

如果安装很慢的话，请使用国内[ruby源](https://gems.ruby-china.org/)

## 使用

1. 在你的项目里新建 generators 文件夹
2. 在 generators 里面创建 flg 目录
3. 上面的 generators 是一个例子

## API 备忘

### commod

[link](http://naildrivin5.com/gli/)

### TTY
[link]()

### File API

[link](https://github.com/piotrmurach/tty-file)

### Data handle


```ruby
'active_record'.camelize                # => "ActiveRecord"
'active_record'.camelize(:lower)        # => "activeRecord"
```

```ruby
'ham_and_eggs'.classify # => "HamAndEgg"
'posts'.classify        # => "Post"
```

```ruby
'employee_salary'.humanize              # => "Employee salary"
'author_id'.humanize                    # => "Author"
'author_id'.humanize(capitalize: false) # => "author"
'_id'.humanize                          # => "Id"
```

```ruby
'ActiveModel'.underscore         # => "active_model"
'ActiveModel::Errors'.underscore # => "active_model/errors"
```

```ruby
'RawScaledScorer'.tableize # => "raw_scaled_scorers"
'ham_and_egg'.tableize     # => "ham_and_eggs"
'fancyCategory'.tableize   # => "fancy_categories"
```

```ruby
'posts'.singularize            # => "post"
'octopi'.singularize           # => "octopus"
'sheep'.singularize            # => "sheep"
'word'.singularize             # => "word"
'the blue mailmen'.singularize # => "the blue mailman"
'CamelOctopi'.singularize      # => "CamelOctopus"
'leyes'.singularize(:es)       # => "ley"
```

```ruby
'post'.pluralize             # => "posts"
'octopus'.pluralize          # => "octopi"
'sheep'.pluralize            # => "sheep"
'words'.pluralize            # => "words"
'the blue mailman'.pluralize # => "the blue mailmen"
'CamelOctopus'.pluralize     # => "CamelOctopi"
'apple'.pluralize(1)         # => "apple"
'apple'.pluralize(2)         # => "apples"
'ley'.pluralize(:es)         # => "leyes"
'ley'.pluralize(1, :es)      # => "ley"
```
