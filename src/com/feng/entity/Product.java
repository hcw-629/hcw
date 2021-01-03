package com.feng.entity;
/*
定义商品实体类
 */
public class Product {
    private int prodouctid;//商品id
    private String prodouctname;//商品名称
    private String prodouctdescription;//商品描述
    private int prodouctprice;//商品价格
    private int prodouctstock;//商品库存
    private String prodouctfilename;//商品图片地址

    public Product(int prodouctid, String prodouctname, String prodouctdescription, int prodouctprice, int prodouctstock, String prodouctfilename) {
        this.prodouctid = prodouctid;
        this.prodouctname = prodouctname;
        this.prodouctdescription = prodouctdescription;
        this.prodouctprice = prodouctprice;
        this.prodouctstock = prodouctstock;
        this.prodouctfilename = prodouctfilename;
    }

    public Product() {

    }

    public int getProdouctid() {
        return prodouctid;
    }

    public void setProdouctid(int prodouctid) {
        this.prodouctid = prodouctid;
    }

    public String getProdouctname() {
        return prodouctname;
    }

    public void setProdouctname(String prodouctname) {
        this.prodouctname = prodouctname;
    }

    public String getProdouctdescription() {
        return prodouctdescription;
    }

    public void setProdouctdescription(String prodouctdescription) {
        this.prodouctdescription = prodouctdescription;
    }

    public int getProdouctprice() {
        return prodouctprice;
    }

    public void setProdouctprice(int prodouctprice) {
        this.prodouctprice = prodouctprice;
    }

    public int getProdouctstock() {
        return prodouctstock;
    }

    public void setProdouctstock(int prodouctstock) {
        this.prodouctstock = prodouctstock;
    }

    public String getProdouctfilename() {
        return prodouctfilename;
    }

    public void setProdouctfilename(String prodouctfilename) {
        this.prodouctfilename = prodouctfilename;
    }

    @Override
    public String toString() {
        return "Product{" +
                "prodouctid=" + prodouctid +
                ", prodouctname='" + prodouctname + '\'' +
                ", prodouctdescription='" + prodouctdescription + '\'' +
                ", prodouctprice=" + prodouctprice +
                ", prodouctstock=" + prodouctstock +
                ", prodouctfilename='" + prodouctfilename + '\'' +
                '}';
    }

}
