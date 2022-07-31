package com.web.root.mybatis.reservation;

import com.web.root.dto.ReservationDTO;

public interface ReservationMapper {

	public ReservationDTO find_movie(String phone);
	
}
