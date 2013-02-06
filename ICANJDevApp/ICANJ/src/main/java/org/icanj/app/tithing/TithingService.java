package org.icanj.app.tithing;

import java.math.BigDecimal;
import java.security.Principal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.icanj.app.directory.entity.Member;
import org.icanj.app.directory.service.DirectoryService;
import org.icanj.app.utils.HTTPUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.authentication.encoding.PasswordEncoder;
import org.springframework.security.core.codec.Base64;
import org.springframework.stereotype.Service;

@Service
public class TithingService {
	
	
	private static final Logger logger = LoggerFactory.getLogger(TithingService.class);
	
	@Autowired
	private TithingDAO tithingDAO;
	
	@Autowired
	private PasswordEncoder memberIdEncoder;	
	
	@Autowired
	private DirectoryService directoryServiceImpl;
	
	public List<Tithe> getlatestTransactions(){
		List<Tithe> formattedTithe=new ArrayList<Tithe>();
		List<Tithe> tithes = tithingDAO.getlatestTransactions();
		for(Tithe t:tithes){
			String mID= decoder(t.getMemberID());
			Member m =directoryServiceImpl.getMember(Long.parseLong(mID));
			System.out.println(m.getEmail());
			t.setMemberID(m.getFirstName() + " " + m.getLastName());
			formattedTithe.add(t);
		}
		
		return formattedTithe;
		
	}
	
	public Tithe getTitheByTransactId(long transactId){
		return tithingDAO.getTitheByTransactId(transactId);
		
	}
	
	public void deleteTransaction (long transactId){
		tithingDAO.deleteTransaction(transactId);
	}
	
	
	@Secured("ROLE_ADMIN")
	public void addTithingTransaction(HttpServletRequest request, String principal) {
		
		if (HTTPUtils.validateParameter(request, "memberId")
				&& HTTPUtils.validateParameter(request, "rcvdDate")
				&& HTTPUtils.validateParameter(request, "paymentType")
				&& HTTPUtils.validateParameter(request, "amount")) {
			
			
			
			
			try {
				
				Tithe tithe= null;
				Member member =null;
				if(HTTPUtils.validateParameter(request, "transactionId")){
				tithe = tithingDAO.getTitheByTransactId(Long.parseLong(request.getParameter("transactionId")));			
				}
				else{
					tithe = new Tithe();
					member = directoryServiceImpl.getMember(Long.parseLong(request.getParameter("memberId")));
					tithe.setMemberID(encoder(Long.toString(member.getMemberId())));
				 logger.debug("Adding a new Tithing transaction");
				}
				//Retrieving Member Info
				
				
				
				//tithe.setMemberID(memberIdEncoder.encodePassword(String.valueOf(member.getMemberId()), member.getFirstName()));
				
				
				logger.debug("Encoded Id = " + tithe.getMemberID());
				tithe.setPaymentType(request.getParameter("paymentType").trim());
				tithe.setAmount(new BigDecimal(request.getParameter("amount").trim()));
				tithe.setDateRecieved(getDatefromString(request.getParameter("rcvdDate").trim().split(" ")[0]));
				tithe.setCheckDate(getDatefromString(request.getParameter("checkDate").trim().split(" ")[0]));
				tithe.setLastUpdatedBy(principal);
				tithe.setLastUpdatedAt(new Date());
				
				logger.debug("Decoded Id = " + decoder(tithe.getMemberID()));
				
				if (HTTPUtils.validateParameter(request, "checkInfo")){
				tithe.setCheckInfo(request.getParameter("checkInfo").trim());	
				}
				
				if (HTTPUtils.validateParameter(request, "memo")){
					tithe.setMemo(request.getParameter("memo").trim());	
				}
				
				tithingDAO.addTithingTransaction(tithe);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				logger.warn(e.getMessage(),e);
			} 
			

			
			
		}else{
			logger.debug("Invalid Request Parameters.");
		}

	}
	
	private Date getDatefromString(String date) throws ParseException{
		//Expected Date Format "2012-02-18"
		String startDateString = date;
	    DateFormat df = new SimpleDateFormat("yyyy-MM-DD"); 
	    Date startDate = null;
	    
	   startDate = df.parse(startDateString);	        
	   
	    return startDate;
	}
	
	private String encoder(String id) throws Exception{
		
		byte[] encoded = Base64.encode(id.getBytes());
		return new String(encoded);
	}
	
	private String decoder(String id){
		byte[] decoded = Base64.decode(id.getBytes());
		return new String(decoded);
	}
}
