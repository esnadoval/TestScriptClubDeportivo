/* ========================================================================
 * Copyright 2014 testers
 *
 * Licensed under the MIT, The MIT License (MIT)
 * Copyright (c) 2014 testers

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
 * ========================================================================


Source generated by CrudMaker version 1.0.0.201408112050

*/

package co.edu.uniandes.csw.testers.country.persistence.converter;

import java.util.ArrayList;
import java.util.List;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;


import co.edu.uniandes.csw.testers.country.logic.dto.CountryDTO;
import co.edu.uniandes.csw.testers.country.persistence.entity.CountryEntity;

public abstract class _CountryConverter {

	public static CountryDTO entity2PersistenceDTO(CountryEntity entity){
		if (entity != null) {
			CountryDTO dto = new CountryDTO();
					dto.setId(entity.getId());
					dto.setName(entity.getName());
					dto.setPopulation(entity.getPopulation());
			return dto;
		}else{
			return null;
		}
	}
	
	public static CountryEntity persistenceDTO2Entity(CountryDTO dto){
		if(dto!=null){
			CountryEntity entity=new CountryEntity();
					entity.setId(dto.getId());
			
					entity.setName(dto.getName());
			
					entity.setPopulation(dto.getPopulation());
			
			return entity;
		}else {
			return null;
		}
	}
	
	public static List<CountryDTO> entity2PersistenceDTOList(List<CountryEntity> entities){
		List<CountryDTO> dtos=new ArrayList<CountryDTO>();
		for(CountryEntity entity:entities){
			dtos.add(entity2PersistenceDTO(entity));
		}
		return dtos;
	}
	
	public static List<CountryEntity> persistenceDTO2EntityList(List<CountryDTO> dtos){
		List<CountryEntity> entities=new ArrayList<CountryEntity>();
		for(CountryDTO dto:dtos){
			entities.add(persistenceDTO2Entity(dto));
		}
		return entities;
	}
}