/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package me;

import java.sql.Date;

/**
 *
 * @author brije
 */
public class BookRideBean {

    private String date;
    private String src;
    private String des;
    private String car;
    private String amount;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getCar() {
        return car;
    }

    public void setCar(String car) {
        this.car = car;
    }
    public String getAmount(){
        return amount;
    }
    public void setAmount(String amount){
        this.amount =amount;
    }
}
