import java.util.Date;

public class Titles {
    private long emp_no;
    private String title;
    private Date from_date;
    private Date to_date;

    public Titles() {
    }

    public Titles(long emp_no, String title, Date from_date, Date to_date) {
        this.emp_no = emp_no;
        this.title = title;
        this.from_date = from_date;
        this.to_date = to_date;
    }

    public long getEmp_no() {
        return emp_no;
    }

    public void setEmp_no(long emp_no) {
        this.emp_no = emp_no;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getFrom_date() {
        return from_date;
    }

    public void setFrom_date(Date from_date) {
        this.from_date = from_date;
    }

    public Date getTo_date() {
        return to_date;
    }

    public void setTo_date(Date to_date) {
        this.to_date = to_date;
    }
}
