package com.feng.entity;

public class Manager{

    private int id;
    private String name;
    private int password;
    private int money;

    public Manager(int id, String name, int password, int money) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.money = money;
    }

    @Override
    public String toString() {
        return "Manager{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password=" + password +
                ", money=" + money +
                '}';
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public Manager() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPassword() {
        return password;
    }

    public void setPassword(int password) {
        this.password = password;
    }


}
