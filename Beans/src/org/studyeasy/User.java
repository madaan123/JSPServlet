package org.studyeasy;

public class User {
	private String firstName;
	private String lastName;
	
	public User() {
		firstName = "Ashish";
		lastName = "Madaan";
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
}
