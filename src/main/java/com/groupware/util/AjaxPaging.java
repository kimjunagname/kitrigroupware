package com.groupware.util;

public class AjaxPaging {
	public String pageIndexList (int totalCnt, int current_page) {
		// �� �������� ��µ� �Խù� �� (countList)
		// �� ȭ�鿡 ��µ� ������ �� (countPage)
		// ���� ������ ��ȣ (���� page)
		// �� �������� ��µ� �Խù� ��
		int countList = 10;
		// �� �������� ��µ� ������ ��
		int countPage = 10;
		// ���� ������ ��ȣ
		int page = current_page;
		// ��� �Խù��� ��
		int totalCount = totalCnt;
		// �Խù��� 105���� 105 / 10 = 10.5 
		// int���̱� ������ 10�� ����.
		int totalPage = totalCount / countList;
		// �������� �����Ѵٸ� + 1
		if (totalCount % countList > 0) {
			totalPage++;
		}
		// ����, �� ������ ���� ���� �������� ���ٸ�
		// ���� �������� ������ �� �������� �����Ѵ�.
		if (totalPage < page) {
			page = totalPage;
		}
		// ���� ������
		int startPage = ((page - 1) / 10) * 10 + 1;
		// ������ ������
		int endPage = startPage + countPage - 1;
		// ������ �������� �� ������ ���� ũ�ٸ� 
		// ������ �������� �� �������� �ȴ�.
		if (endPage > totalPage) {
			endPage = totalPage;
		}	
		// ���
		String result = "<ul class='pagination'>";	
		if (startPage > 1) {
			result = "<li><a href=\"?page=1\">ó��</a></li>";
		}
		if (page > 10) {
			result += "<li><a href=\"?page=" + (startPage - 1)  + "\">����</a></li>";
		}
		for (int iCount = startPage; iCount <= endPage; iCount++) {
			if (iCount == page) {
				result += "<li class='active'><a href='?page=" + iCount  + "'>" + iCount + "</a></li>";
			} else {
				result += "<li><a href='?page=" + iCount  + "'>" + iCount + "</a></li>";
			}
		}
		if ((startPage + 10) < totalPage) {
			result += "<li><a href=\"?page=" + (startPage + 10)  + "\">����</a></li>";
		}
		if (endPage < totalPage) {
			result += "<li><a href=\"?page=" + totalPage + "\">��</a></li>";
		}	
		result += "</ul>";	
		return result;
	}
	public String pageIndexListAjax (int totalCnt, int current_page) {
		// �� �������� ��µ� �Խù� �� (countList)
		// �� ȭ�鿡 ��µ� ������ �� (countPage)
		// ���� ������ ��ȣ (���� page)
		// �� �������� ��µ� �Խù� ��
		int countList = 10;
		// �� �������� ��µ� ������ ��
		int countPage = 10;
		// ���� ������ ��ȣ
		int page = current_page;
		// ��� �Խù��� ��
		int totalCount = totalCnt;
		// �Խù��� 105���� 105 / 10 = 10.5 
		// int���̱� ������ 10�� ����.
		int totalPage = totalCount / countList;
		// �������� �����Ѵٸ� + 1
		if (totalCount % countList > 0) {
			totalPage++;
		}
		// ����, �� ������ ���� ���� �������� ���ٸ�
		// ���� �������� ������ �� �������� �����Ѵ�.
		if (totalPage < page) {
			page = totalPage;
		}
		// ���� ������
		int startPage = ((page - 1) / 10) * 10 + 1;
		// ������ ������
		int endPage = startPage + countPage - 1;
		// ������ �������� �� ������ ���� ũ�ٸ� 
		// ������ �������� �� �������� �ȴ�.
		if (endPage > totalPage) {
			endPage = totalPage;
		}
		// ���
		String result = "<ul id='pageIndexListAjax' class='pagination'>";
		if (startPage > 1) {
			result = "<li><a href='#' data-page='1'>ó��</a></li>";
		}
		if (page > 10) {
			result += "<li><a href='#' data-page='" + (startPage - 1) + "'>����</a></li>";
		}
		for (int iCount = startPage; iCount <= endPage; iCount++) {
			if (iCount == page) {
				result += "<li class='active'><a href='#' data-page='" + iCount  + "'>" + iCount + "</a></li>";
			} else {
				result += "<li><a href='#' data-page='" + iCount  + "'>" + iCount + "</a></li>";
			}
		}
		if ((startPage + 10) < totalPage) {
			result += "<li><a href='#' data-page='" + (startPage + 10)  + "'>����</a></li>";
		}
		if (endPage < totalPage) {
			result += "<li><a href='#' data-page='" + totalPage + "'>��</a></li>";
		}
		result += "</ul>";	
		return result;
	}
	
	public String pageIndexLista (int totalCnt, int current_page, String ntc_div) {
		// �� �������� ��µ� �Խù� �� (countList)
		// �� ȭ�鿡 ��µ� ������ �� (countPage)
		// ���� ������ ��ȣ (���� page)
		// �� �������� ��µ� �Խù� ��
		int countList = 10;
		// �� �������� ��µ� ������ ��
		int countPage = 10;
		// ���� ������ ��ȣ
		int page = current_page;
		// ��� �Խù��� ��
		int totalCount = totalCnt;
		// �Խù��� 105���� 105 / 10 = 10.5 
		// int���̱� ������ 10�� ����.
		int totalPage = totalCount / countList;
		// �������� �����Ѵٸ� + 1
		if (totalCount % countList > 0) {
			totalPage++;
		}
		// ����, �� ������ ���� ���� �������� ���ٸ�
		// ���� �������� ������ �� �������� �����Ѵ�.
		if (totalPage < page) {
			page = totalPage;
		}
		// ���� ������
		int startPage = ((page - 1) / 10) * 10 + 1;
		// ������ ������
		int endPage = startPage + countPage - 1;
		// ������ �������� �� ������ ���� ũ�ٸ� 
		// ������ �������� �� �������� �ȴ�.
		if (endPage > totalPage) {
			endPage = totalPage;
		}	
		// ���
		String result = "<ul class='pagination'>";
		if (startPage > 1) {
			result = "<li><a href=\"?"+ntc_div+"&page=1\">ó��</a></li>";
		}
		if (page > 10) {
			result += "<li><a href=\"?"+ntc_div+"&page=" + (startPage - 1)  + "\">����</a></li>";
		}
		for (int iCount = startPage; iCount <= endPage; iCount++) {
			if (iCount == page) {
				result += "<li class='active'><a href='?"+ntc_div+"&page=" + iCount  + "'>" + iCount + "</a></li>";
			} else {
				result += "<li><a href='?"+ntc_div+"&page=" + iCount  + "'>" + iCount + "</a></li>";
			}
		}
		if ((startPage + 10) < totalPage) {
			result += "<li><a href=\"?"+ntc_div+"&page=" + (startPage + 10)  + "\">����</a></li>";
		}
		if (endPage < totalPage) {
			result += "<li><a href=\"?"+ntc_div+"&page=" + totalPage + "\">��</a></li>";
		}	
		result += "</ul>";	
		return result;
	}
}
