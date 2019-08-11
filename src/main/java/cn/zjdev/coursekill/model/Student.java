package cn.zjdev.coursekill.model;

public class Student {
    private int stuId;
    private String stuPass;
    private String stuName;
    private int insId;

    public void setStuId(int stuId) {
        this.stuId = stuId;
    }

    public void setStuPass(String stuPass) {
        this.stuPass = stuPass;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public void setInsId(int insId) {
        this.insId = insId;
    }

    public int getStuId() {
        return stuId;
    }

    public String getStuPass() {
        return stuPass;
    }

    public String getStuName() {
        return stuName;
    }

    public int getInsId() {
        return insId;
    }


}
