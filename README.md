# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## membersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|name|text|null: false|
|email|text|null: false|
|password|text|null: false|

### Association
- has_many :groups, through: :members

## groupテーブル

|Column|Type|Options|
|------|----|-------|
|group_id|integer|null: false|
|group_name|text|null: false|


### Association
- has_many :users, through: :members

## messageテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|
|image|url|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :member

