package com.bana.database.model;
import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "Analysts")
public class Analysts {
	@Id
	//@GeneratedValue(strategy = GenerationType.AUTO)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Analyst_ID")
	private int id;

	@Column(name = "Analyst_Last")
	private String analystLast;

	@Column(name = "Analyst_First")
	private String analystFirst;

	@Column(name = "Analyst_Org")
	private String analystOrg;

	@Column(name = "LastUpdated")
	private Date lastUpdated;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAnalystLast() {
		return analystLast;
	}

	public void setAnalystLast(String analystLast) {
		this.analystLast = analystLast;
	}

	public String getAnalystFirst() {
		return analystFirst;
	}

	public void setAnalystFirst(String analystFirst) {
		this.analystFirst = analystFirst;
	}

	public String getAnalystOrg() {
		return analystOrg;
	}

	public void setAnalystOrg(String analystOrg) {
		this.analystOrg = analystOrg;
	}

	public Date getLastUpdated() {
		return lastUpdated;
	}

	public void setLastUpdated(Date lastUpdated) {
		this.lastUpdated = lastUpdated;
	}

	@Override
	public String toString() {
		return "Analysts [id=" + id + ", analystLast=" + analystLast + ", analystFirst=" + analystFirst
				+ ", analystOrg=" + analystOrg + ", lastUpdated=" + lastUpdated + "]";
	}
}
