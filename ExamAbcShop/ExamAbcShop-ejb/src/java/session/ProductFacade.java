/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import entity.Product;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author dongh
 */
@Stateless
public class ProductFacade extends AbstractFacade<Product> implements ProductFacadeLocal {

    @PersistenceContext(unitName = "ExamAbcShop-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ProductFacade() {
        super(Product.class);
    }

    @Override
    public String sellProduct(int productId, int quantity) {
        String success = "success";
        String fail = "fail";
        
        Query query = em.createNamedQuery("Product.findById");
        query.setParameter("id", productId);
        try {
            Product product = (Product) query.getSingleResult();
            if (product != null) {
                int qty = product.getQuantity();
                if (qty < quantity) {
                    return "Không đủ hàng!";
                } else {
                    product.setQuantity(qty - quantity);
                    edit(product);
                }
            }
            return success;
        } catch (Exception e) {
        }
        return fail;
    }
    
}
