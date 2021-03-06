// Place your Spring DSL code here
import util.marshalling.CustomObjectMarshallers
import com.smanggin.trackingmanagement.*

beans = {
	localeResolver(org.springframework.web.servlet.i18n.SessionLocaleResolver) {
      defaultLocale = new Locale("en","EN")
      java.util.Locale.setDefault(defaultLocale)
   	}

   	customObjectMarshallers( CustomObjectMarshallers ) {
        marshallers = [ 
        	new LineBalanceMarshaller(),
        	new UserPlantsMarshaller(),
        ]
    }
}
