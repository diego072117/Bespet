/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaMail;

import Controlador.Sesiones;
import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author DIEGO
 */
public class PropiedadesCorreo {
    
    public static void envioCorreo(String host,String puerto, final String usuarioCorreo,
            final String clave, String direccion, String asunto, String mensaje) throws AddressException, MessagingException {
        //propiedades servidor SMTP
        Properties propiedades = new Properties();
        propiedades.put("mail.smtp.host", host);
        propiedades.put("mail.smtp.port", puerto);
        propiedades.put("mail.smtp.auth", "true");
        propiedades.put("mail.smtp.starttls.enable", "true");
        
        Authenticator autenticar = new Authenticator() {
        public PasswordAuthentication gePasswordAuthentication(){
            return new PasswordAuthentication(usuarioCorreo, clave);
        }
            
        };
        Session sesion = Session.getInstance(propiedades,autenticar);
        
        Message msg = new MimeMessage(sesion);
        msg.setFrom(new InternetAddress(usuarioCorreo));
       InternetAddress[] direcciones = {new  InternetAddress(direccion)};
       msg.setRecipients(Message.RecipientType.TO, direcciones);
       msg.setSubject(asunto);
       msg.setSentDate(new Date());
       msg.setText(mensaje);
       Transport.send(msg,usuarioCorreo,clave);
    }
    
}
