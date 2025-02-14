# Hello Ruby Steep

このプロジェクトは、Rubyで「FizzBuzz」プログラムをSOLID原則に基づいて設計したものです。

SOLID原則は、ソフトウェア設計における5つの基本原則を指し、コードの可読性、保守性、拡張性を向上させることを目的としています。

* rbs でインターフェースを定義しています。
* テストコードを記述しています。
* steep を使用して型チェックを行っています。

```bash
rbenv install 3.4.1
rbenv local 3.4.1
gem install rbs steep
rbenv rehash
steep check
ruby test_fizzbuzz.rb
ruby fizzbuzz.rb
```
