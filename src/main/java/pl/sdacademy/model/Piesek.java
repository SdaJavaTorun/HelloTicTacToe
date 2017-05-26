package pl.sdacademy.model;

public class Piesek {

    private final int age;
    private int bodyCount;

    public Piesek() {
        age = 0;
    }

    public Piesek(int age) {
        this.age = age;
    }

    public int getBodyCount() {
        return bodyCount;
    }

    public void setBodyCount(int bodyCount) {
        this.bodyCount = bodyCount;
    }

    public int getAge() {
        return age;
    }
}
