package com.smanggin.trackingmanagement
 import java.util.UUID
import java.text.*
/**
 * GlobalService
 * A service class encapsulates the core business logic of a Grails application
 */
class GlobalService {

    static transactional = true

    /* gereate unique id for server ID*/
    def UUIDGenerator(){

    	return UUID.randomUUID().toString();	
    }


    def valueQCDetail(qcHeader,qcMaster,qcQuestions){
    	def qcdetail = QCDetail.createCriteria().list(){
    		eq('qcHeader',qcHeader)
    		eq('qcMaster',qcMaster)
    		eq('qcQuestions',qcQuestions)
    	}

    	return qcdetail[0]?.results

    }

    def valueQCDetail2(qcHeader,qcMaster,qcQuestions){
    	def qcdetail = QCDetail.createCriteria().list(){
    		eq('qcHeader',qcHeader)
    		eq('qcMaster',qcMaster)
    		eq('qcQuestions',qcQuestions)
    	}

    	return qcdetail?.results

    }


    def qcOptionsBy(question){
    	def qcOptions = QCOptions.createCriteria().list(){
    		eq('qCQuestions',question)
    	} 

    	return qcOptions
    }

    def filterDate(startDate,endDate){
        def vd= []
        Calendar cal = Calendar.getInstance();
           cal.setTime(startDate);
           cal.set(Calendar.HOUR_OF_DAY, 0);
           cal.set(Calendar.MINUTE, 0);
           cal.set(Calendar.SECOND, 0);
           Date start = cal.getTime();

        Calendar calx = Calendar.getInstance();
           calx.setTime(endDate);
           calx.set(Calendar.HOUR_OF_DAY, 23);
           calx.set(Calendar.MINUTE, 59);
           calx.set(Calendar.SECOND, 59);
           Date end = calx.getTime();

        return [start:start,end:end] 
    }

    static correctDateTime(String input){
    	DateFormat df = new SimpleDateFormat( 'yyyy-MM-dd HH:mm:ss' )
        Date d = df.parse(input)
        return d
    }

    
    
}
