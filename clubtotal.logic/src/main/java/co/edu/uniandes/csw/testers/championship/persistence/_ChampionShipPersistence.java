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

package co.edu.uniandes.csw.testers.championship.persistence;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import co.edu.uniandes.csw.testers.championship.logic.dto.ChampionShipDTO;
import co.edu.uniandes.csw.testers.championship.persistence.api._IChampionShipPersistence;
import co.edu.uniandes.csw.testers.championship.persistence.converter.ChampionShipConverter;
import co.edu.uniandes.csw.testers.championship.persistence.entity.ChampionShipEntity;

public abstract class _ChampionShipPersistence implements _IChampionShipPersistence {

  	@PersistenceContext(unitName="clubtotalPU")
 
	protected EntityManager entityManager;
	
	public ChampionShipDTO createChampionShip(ChampionShipDTO championShip) {
		ChampionShipEntity entity=ChampionShipConverter.persistenceDTO2Entity(championShip);
		entityManager.persist(entity);
		return ChampionShipConverter.entity2PersistenceDTO(entity);
	}

	@SuppressWarnings("unchecked")
	public List<ChampionShipDTO> getChampionShips() {
		Query q = entityManager.createQuery("select u from ChampionShipEntity u");
		return ChampionShipConverter.entity2PersistenceDTOList(q.getResultList());
	}

	public ChampionShipDTO getChampionShip(Long id) {
		return ChampionShipConverter.entity2PersistenceDTO(entityManager.find(ChampionShipEntity.class, id));
	}

	public void deleteChampionShip(Long id) {
		ChampionShipEntity entity=entityManager.find(ChampionShipEntity.class, id);
		entityManager.remove(entity);
	}

	public void updateChampionShip(ChampionShipDTO detail) {
		ChampionShipEntity entity=entityManager.merge(ChampionShipConverter.persistenceDTO2Entity(detail));
		ChampionShipConverter.entity2PersistenceDTO(entity);
	}

}