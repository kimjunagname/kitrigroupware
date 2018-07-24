package com.groupware.email.dao;

import java.util.List;
import java.util.Map;

import com.groupware.email.model.EmailDto;

public interface EmailDao {

	List <EmailDto> getListEmail();
	
}
