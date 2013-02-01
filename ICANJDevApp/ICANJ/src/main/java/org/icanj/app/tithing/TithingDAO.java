package org.icanj.app.tithing;

import java.security.Principal;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class TithingDAO {
	
	private static final Logger logger = LoggerFactory
			.getLogger(TithingDAO.class);

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public void addTithingTransaction(Tithe tithe) throws Exception {
		hibernateTemplate.saveOrUpdate(tithe);
	}
	
	public List<Tithe> getlatestTransactions(){
		HibernateTemplate ht = hibernateTemplate;
		ht.setMaxResults(20);
		List<Tithe> lOfTithe = ht.find("from Tithe t order by t.lastUpdatedAt desc");
		return lOfTithe;
		
	}
	
	public Tithe getTitheByTransactId(long transactId){
		try {
			return hibernateTemplate.get(Tithe.class, transactId);
		} catch (DataAccessException e) {
			e.printStackTrace();
			return null;
		}
		
	}

}
