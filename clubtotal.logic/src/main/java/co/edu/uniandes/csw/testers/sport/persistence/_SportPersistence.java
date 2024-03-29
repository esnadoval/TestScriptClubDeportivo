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

package co.edu.uniandes.csw.testers.sport.persistence;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import co.edu.uniandes.csw.testers.sport.logic.dto.SportDTO;
import co.edu.uniandes.csw.testers.sport.persistence.api._ISportPersistence;
import co.edu.uniandes.csw.testers.sport.persistence.converter.SportConverter;
import co.edu.uniandes.csw.testers.sport.persistence.entity.SportEntity;

public abstract class _SportPersistence implements _ISportPersistence {

  	@PersistenceContext(unitName="clubtotalPU")
 
	protected EntityManager entityManager;
	
	public SportDTO createSport(SportDTO sport) {
		SportEntity entity=SportConverter.persistenceDTO2Entity(sport);
		entityManager.persist(entity);
		return SportConverter.entity2PersistenceDTO(entity);
	}

	@SuppressWarnings("unchecked")
	public List<SportDTO> getSports() {
		Query q = entityManager.createQuery("select u from SportEntity u");
		return SportConverter.entity2PersistenceDTOList(q.getResultList());
	}

	public SportDTO getSport(Long id) {
		return SportConverter.entity2PersistenceDTO(entityManager.find(SportEntity.class, id));
	}

	public void deleteSport(Long id) {
		SportEntity entity=entityManager.find(SportEntity.class, id);
		entityManager.remove(entity);
	}

	public void updateSport(SportDTO detail) {
		SportEntity entity=entityManager.merge(SportConverter.persistenceDTO2Entity(detail));
		SportConverter.entity2PersistenceDTO(entity);
	}

}