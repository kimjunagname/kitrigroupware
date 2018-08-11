package com.groupware.util;

public class PageNavigation {

	private String root;
	private int pageNo;
	private int newArticleCount;
	private int totalArticleCount;
	private int totalPageCount;
	private boolean nowFirst;
	private boolean nowEnd;
	private String navigator;

	public String getRoot() {
		return root;
	}

	public void setRoot(String root) {
		this.root = root;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getNewArticleCount() {
		return newArticleCount;
	}

	public void setNewArticleCount(int newArticleCount) {
		this.newArticleCount = newArticleCount;
	}

	public int getTotalArticleCount() {
		return totalArticleCount;
	}

	public void setTotalArticleCount(int totalArticleCount) {
		this.totalArticleCount = totalArticleCount;
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	public boolean isNowFirst() {
		return nowFirst;
	}

	public void setNowFirst(boolean nowFirst) {
		this.nowFirst = nowFirst;
	}

	public boolean isNowEnd() {
		return nowEnd;
	}

	public void setNowEnd(boolean nowEnd) {
		this.nowEnd = nowEnd;
	}

	public String getNavigator() {
		return navigator;
	}

	public void makeNavigator() {
		StringBuffer tmpNavigator = new StringBuffer();
	      
	      int listSize = KitriConstance.BOARD_LIST_SIZE; //TODO ���߿� �ٹ��̶� ��
	      int pageSize = KitriConstance.NAVIGATOR_SIZE;
	      
	      int preEnd = (pageNo -1) / pageSize * pageSize;

	      tmpNavigator.append("<ul class='pagination' style='float: right;'> \n");
	   
	      if (this.isNowFirst()) {//�ֽŸ���̸� ��ũx
	         tmpNavigator.append("<li class='page-item'><a id='firstpage' href='#' style='color: black;'>�ֽŸ��</a></li> \n");
	         tmpNavigator.append("<li class='page-item'><a href='#' style='color: black;'>Previous</a></li> \n");         
	      } else {//�ֽ��� �ƴϸ� ��ũo 
	         tmpNavigator.append("<li class='page-item'><a id='totalarticle' href='#' style='color: black;'>�ֽŸ��</a></li> \n");
	         tmpNavigator.append("<li class='page-item'><a  class='mvpage' move-page-no='" + preEnd + "' href='#' style='color: black;'>Previous</a></li> \n");         
	      }      
	      
	      int startPage = preEnd +1;
	      int endPage = preEnd + pageSize;
	      if(endPage > totalPageCount) {
	         endPage = totalPageCount;
	      }
	      
	      for (int i = startPage; i <= endPage; i++) {
	         if (pageNo == i) {
	            tmpNavigator.append("<li class='page-item active'><a  href='#' style='background-color: #56aebf; border-color: #56aebf'>" + i + "</a></li> \n");
	            
	         } else {
	            tmpNavigator.append("<li class='page-item'><a class='mvpage' move-page-no='" + i + "' href='#' style='color: #56aebf;'>" + i + "</a></li> \n");
	            
	         }
	      }
	            
	      if (this.isNowEnd()) {//������ �������� ��ũx
	         tmpNavigator.append("<li class='page-item'><a href='#' style='color: black;'>Next</a></li>");
	         tmpNavigator.append("<li class='page-item'><a href='#' style='color: black;'>�����</a></li>");
	         
	      } else {//������ �������� �ƴϸ� ��ũo  
	         tmpNavigator.append("<li class='page-item'><a class='mvpage' move-page-no='" + (preEnd + pageSize + 1) + "' href='#' style='color: black;'>Next</a></li>");
	         tmpNavigator.append("<li class='page-item'><a class='mvpage' move-page-no='" + totalPageCount + "' href='#' style='color: black;'>�����</a></li>");
	         
	      }
	   
	      tmpNavigator.append("</ul> \n");

	      this.navigator = tmpNavigator.toString();
	   }
	
	@Override
	public String toString() {
		return "PageNavigation [root=" + root + ", pageNo=" + pageNo + ", newArticleCount=" + newArticleCount
				+ ", totalArticleCount=" + totalArticleCount + ", totalPageCount=" + totalPageCount + ", nowFirst="
				+ nowFirst + ", nowEnd=" + nowEnd + "]";
	}

}
