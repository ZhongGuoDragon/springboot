package com.tom.concert;

public class BadPerformance implements Performance{
    public void perform() throws Exception{
        System.out.println("BadPerformance");
        throw new Exception();
    }
}
