package models;

public class Acount {
    private String firstName;
    private String lastName;
    private String user;
    private String pass;
    private String email;
    private String phoneNumber;
    private int day;
    private int month;
    private int year;

    private String birthDay;
    private String name;

    public Acount() {
    }

    public Acount(String name, String user, String pass, String email, String phoneNumber, String birthDay) {
        this.user = user;
        this.pass = pass;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.birthDay = birthDay;
        this.name = name;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getBirthDay() {
        return this.getDay() + "/" + this.getMonth() + "/" + this.getYear();
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public String getName() {
        return this.getFirstName() + " " + this.getLastName();
    }

    public void setName(String name) {
        this.name = name;
    }
}
