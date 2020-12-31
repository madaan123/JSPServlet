package org.studyeasy.hibernate.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="files")
@Table(name = "files")
public class Files {
	@Id
	@Column(name = "id")
	int id;
	
	@Column(name = "file_name")
	String FileName;
	
	@Column(name = "label")
	String label;
	
	@Column(name = "caption")
	String caption;

	public Files() {
	}

	public Files(String fileName) {
		this.FileName = fileName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFileName() {
		return FileName;
	}

	public void setFileName(String fileName) {
		FileName = fileName;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getCaption() {
		return caption;
	}

	public void setCaption(String caption) {
		this.caption = caption;
	}

	@Override
	public String toString() {
		return "Files [id=" + id + ", FileName=" + FileName + ", label=" + label + ", caption=" + caption + "]";
	}
}
