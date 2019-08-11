package cn.zjdev.coursekill.model;

//选课表
public class Course_choose {

    private int stuId;
    private int classId;
    private int score;

    public Course_choose() {
    }

    public Course_choose(int stuId, int classId, int score) {
        this.stuId = stuId;
        this.classId = classId;
        this.score = score;
    }

    public void setStuId(int stuId) {
        this.stuId = stuId;
    }

    public void setClassId(int classId) {
        this.classId = classId;
    }

    public void setScore(int score) {
        this.score = score;
    }

}
