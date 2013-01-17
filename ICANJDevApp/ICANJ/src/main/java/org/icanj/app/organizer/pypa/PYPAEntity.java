package org.icanj.app.organizer.pypa;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="PYPA_SPONSORS")
public class PYPAEntity {
	
	@Id
	@GeneratedValue
	private long   itemId;
	
	@Column(nullable = false, length = 4)
	private String year;
	
	@Column(nullable = false, length = 16)
	private String meetingType;
	
	@Column(nullable = false, length = 50)
	private String fullName;
	
	@Column(nullable = false, length = 10)
	private int month;
	private Date   tentativeDate;
	private boolean selected;
	
	public String getYear() {
		return year;
	}
	
	public void setYear(String year) {
		this.year = year;
	}
	public String getMeetingType() {
		return meetingType;
	}
	public void setMeetingType(String meetingType) {
		this.meetingType = meetingType;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	public Date getTentativeDate() {
		return tentativeDate;
	}
	public void setTentativeDate(Date tentativeDate) {
		this.tentativeDate = tentativeDate;
	}
	public boolean isSelected() {
		return selected;
	}
	public void setSelected(boolean selected) {
		this.selected = selected;
	}
	public long getItemId() {
		return itemId;
	}
	public void setItemId(long itemId) {
		this.itemId = itemId;
	}
}
