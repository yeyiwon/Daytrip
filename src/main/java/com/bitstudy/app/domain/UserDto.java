package com.bitstudy.app.domain;

public class UserDto {
    private int U_num; //유저 번호
    private String U_id; // 유저 id
    private String U_pw; // 유저 pw
    private String U_name; // 유저 이름
    private String U_email; // 유저 이메일
    private String U_phoneNum; // 유저 폰넘
    private String U_imgUrl; // 유저 프사

    public UserDto() {}

    public int getU_num() {
        return U_num;
    }

    public void setU_num(int u_num) {
        U_num = u_num;
    }

    public String getU_id() {
        return U_id;
    }

    public void setU_id(String u_id) {
        U_id = u_id;
    }

    public String getU_pw() {
        return U_pw;
    }

    public void setU_pw(String u_pw) {
        U_pw = u_pw;
    }

    public String getU_name() {
        return U_name;
    }

    public void setU_name(String u_name) {
        U_name = u_name;
    }

    public String getU_email() {
        return U_email;
    }

    public void setU_email(String u_email) {
        U_email = u_email;
    }

    public String getU_phoneNum() {
        return U_phoneNum;
    }

    public void setU_phoneNum(String u_phoneNum) {
        U_phoneNum = u_phoneNum;
    }

    public String getU_imgUrl() {
        return U_imgUrl;
    }

    public void setU_imgUrl(String u_imgUrl) {
        U_imgUrl = u_imgUrl;
    }

    public UserDto(int u_num, String u_id, String u_pw, String u_name, String u_email, String u_phoneNum, String u_imgUrl) {
        U_num = u_num;
        U_id = u_id;
        U_pw = u_pw;
        U_name = u_name;
        U_email = u_email;
        U_phoneNum = u_phoneNum;
        U_imgUrl = u_imgUrl;
    }

    @Override
    public String toString() {
        return "UserDto{" +
                "U_num=" + U_num +
                ", U_id='" + U_id + '\'' +
                ", U_pw='" + U_pw + '\'' +
                ", U_name='" + U_name + '\'' +
                ", U_email='" + U_email + '\'' +
                ", U_phoneNum='" + U_phoneNum + '\'' +
                ", U_imgUrl='" + U_imgUrl + '\'' +
                '}';
    }
}


