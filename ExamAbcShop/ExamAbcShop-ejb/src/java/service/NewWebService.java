/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import entity.Product;
import java.util.List;
import javax.ejb.EJB;
import javax.jws.WebService;
import javax.ejb.Stateless;
import javax.jws.Oneway;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import session.ProductFacadeLocal;

/**
 *
 * @author dongh
 */
@WebService(serviceName = "NewWebService")
@Stateless()
public class NewWebService {

    @EJB
    private ProductFacadeLocal ejbRef;// Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Web Service Operation")

    @WebMethod(operationName = "create")
    @Oneway
    public void create(@WebParam(name = "product") Product product) {
        ejbRef.create(product);
    }

    @WebMethod(operationName = "edit")
    @Oneway
    public void edit(@WebParam(name = "product") Product product) {
        ejbRef.edit(product);
    }

    @WebMethod(operationName = "remove")
    @Oneway
    public void remove(@WebParam(name = "product") Product product) {
        ejbRef.remove(product);
    }

    @WebMethod(operationName = "find")
    public Product find(@WebParam(name = "id") Object id) {
        return ejbRef.find(id);
    }

    @WebMethod(operationName = "findAll")
    public List<Product> findAll() {
        return ejbRef.findAll();
    }

    @WebMethod(operationName = "findRange")
    public List<Product> findRange(@WebParam(name = "range") int[] range) {
        return ejbRef.findRange(range);
    }

    @WebMethod(operationName = "count")
    public int count() {
        return ejbRef.count();
    }

    @WebMethod(operationName = "sellProduct")
    public String sellProduct(@WebParam(name = "productId") int productId, @WebParam(name = "quantity") int quantity) {
        return ejbRef.sellProduct(productId, quantity);
    }
    
}
