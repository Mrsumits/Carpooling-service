   /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package me;

import java.util.ArrayList;

public class CarBean {
    private String carName;
    private String carNumber;
    private String carAmount;
    private ArrayList carNames;
    private ArrayList carNumbers;
    private ArrayList carAmounts;
    
    public CarBean(){
        carNames=new ArrayList();
        carNumbers=new ArrayList();
        carAmounts=new ArrayList();
        }
    public ArrayList getCarNames() {
        return carNames;
    }

    public void setCarNames(ArrayList carNames) {
        this.carNames = carNames;
    }

    public ArrayList getCarNumbers() {
        return carNumbers;
    }

    public void setCarNumbers(ArrayList carNumbers) {
        this.carNumbers = carNumbers;
    }
    public ArrayList getCarAmounts(){
        return carAmounts;
    }
    public void setCarAmounts(ArrayList carAmounts){
        this.carAmounts = carAmounts;
    }
    
    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public String getCarNumber() {
        return carNumber;
    }

    public void setCarNumber(String carNumber) {
        this.carNumber = carNumber;
    }
    public String getCarAmount(){
        return carAmount;
    }
    public void setCarAmount(String carAmount){
        this.carAmount= carAmount;
    }
    
}
