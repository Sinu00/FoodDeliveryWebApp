package com.fda.pojo;

public class user {
		private int uid;
		private String username;
		private String email;
		private String password;
		private int mobile;
		public int getUid() {
			return uid;
		}
		public void setUid(int uid) {
			this.uid = uid;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public int getMobile() {
			return mobile;
		}
		public void setMobile(int mobile) {
			this.mobile = mobile;
		}
		public user(String username, String email, String password, int mobile) {
			super();
			this.username = username;
			this.email = email;
			this.password = password;
			this.mobile = mobile;
		}
		
		
		public user(int uid, String username, String email, String password, int mobile) {
			super();
			this.uid = uid;
			this.username = username;
			this.email = email;
			this.password = password;
			this.mobile = mobile;
		}
		public user() {
			super();
		}
		@Override
		public String toString() {
			return "user [uid=" + uid + ", username=" + username + ", email=" + email + ", password=" + password
					+ ", mobile=" + mobile + "]";
		}
		
	}
