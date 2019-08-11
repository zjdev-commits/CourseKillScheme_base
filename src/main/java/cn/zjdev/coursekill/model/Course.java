package cn.zjdev.coursekill.model;


import java.util.List;

public class Course {
    private int classId;
    private String className;
    private int classNum;
    private int teaId;
    private String teaName;
    private int classChooseNum;
    private String insName;
    static  private String startTime;
    static  private String endTime;

    public int getClassId() {
        return classId;
    }

    public void setClassId(int classId) {
        this.classId = classId;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public int getClassNum() {
        return classNum;
    }

    public void setClassNum(int classNum) {
        this.classNum = classNum;
    }

    public int getTeaId() {
        return teaId;
    }

    public void setTeaId(int teaId) {
        this.teaId = teaId;
    }

    public String getTeaName() {
        return teaName;
    }

    public void setTeaName(String teaName) {
        this.teaName = teaName;
    }

    public int getClassChooseNum() {
        return classChooseNum;
    }

    public void setClassChooseNum(int classChooseNum) {
        this.classChooseNum = classChooseNum;
    }

    public String getInsName() {
        return insName;
    }

    public void setInsName(String insName) {
        insName = insName;
    }

    public static String getStartTime() {
        return startTime;
    }

    public static void setStartTime(String startTime) {
        Course.startTime = startTime;
    }

    public static String getEndTime() {
        return endTime;
    }

    public static void setEndTime(String endTime) {
        Course.endTime = endTime;
    }

    @Override
    public String toString() {
        return "Course{" +
                "classId=" + classId +
                ", className='" + className + '\'' +
                ", classNum=" + classNum +
            /*    ", teaId=" + teaId +*/
                ", teaName='" + teaName + '\'' +
                ", classChooseNum=" + classChooseNum +
                ", InsName='" + insName + '\'' +
                '}';
    }
}

