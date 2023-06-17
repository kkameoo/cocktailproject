package Function;

public class MemberIVO {
    private Integer ID;
    private String name;
    private String ing;
    private String ins;
    private String img;
    private String theme;


    public MemberIVO() { }

    public MemberIVO(Integer ID,String name,String ing, String ins, String img, String theme) {
        this.ID = ID;
        this.name = name;
        this.ing = ing;
        this.ins = ins;
        this.img = img;
        this.theme = theme;
    }
    public Integer getID() {
        return ID;
    }

    public String getName() {
        return name;
    }
    public String getIng() {
        return ing;
    }
    public String getIns() {
        return ins;
    }
    public String getTheme() {
        return theme;
    }

    public String getImg() { return img; }
    public void setID(Integer ID) {
        this.ID = ID;
    }

    public void setName(String name) {
        this.name = name;
    }
    public void setIng(String ing) {
        this.ing = ing;
    }
    public void setIns(String ins) {
        this.ins = ins;
    }

    public void setImg(String img) {
        this.img = img;
    }
    public void setTheme(String theme) {
        this.theme = theme;
    }
}
