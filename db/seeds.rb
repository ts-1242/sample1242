# coding: utf-8

User.create!( name: "管理者",
              email: "sample@email.com",
              password: "password",
              password_confirmation: "password",
              admin: true)
           
User.create!( name: "中山　航",
              email: "nakayama@email.com",
              password: "password",
              password_confirmation: "password")
               