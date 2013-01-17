package org.icanj.app.organizer.pypa;

import java.util.ArrayList;
import java.util.List;

import org.icanj.app.directory.dao.DirectoryHibernateDao;
import org.icanj.app.directory.entity.Member;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class SponsorsDao {
	
	private static final Logger logger = LoggerFactory
			.getLogger(SponsorsDao.class);

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public List<List<PYPAEntity>> getAllItems(String year){
		
		List<List<PYPAEntity>> superList = new ArrayList<List<PYPAEntity>>();
		for(int i=1; i<=12;i++){
			List<PYPAEntity> pypaEnt = hibernateTemplate.find("from PYPAEntity m where m.month = ? and year=?",i,year);
			System.out.println(pypaEnt.size());
			superList.add(pypaEnt);
		}
		
		return superList;
			
	}
	
	@Transactional
	public void saveOrUpdateEntity(PYPAEntity entity) {
		// Persists Member Entity
		hibernateTemplate.saveOrUpdate(entity);

	}
}
