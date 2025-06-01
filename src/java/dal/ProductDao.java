/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import controller.DBContext;
import java.beans.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.SpecProduct;

/**
 *
 * @author manht
 */
public class ProductDao extends DBContext {

    private final String GET_ALL_PRODUCT = "SELECT ProductID, ProductName, "
            + "ProductQuantity, Description, Price, BrandID FROM Product";
    private final String GET_PRODUCT_TYPE = "SELECT Type.TypeName FROM Type "
            + "JOIN [dbo].[Product]P ON  Type.TypeID = "
            + "P.TypeID WHERE ProductID = ?";
    private final String GET_IMAGE_URL
            = "SELECT URL FROM Image WHERE ProductID = ?";
    private final String GET_SPEC_PRODUCT = """
				    SELECT h.SpecProduct, h.SpecProductValue, 
                                           s.SpecName, h.SpecID
				    FROM Has h
				    JOIN Specifications s ON h.SpecID = s.SpecID
				    WHERE h.ProductID = ?
				""";
    private final String GET_AVG_PRODUCCT_RATE
            = "SELECT AVG(CAST(Rate AS FLOAT)) AS AvgRate FROM "
            + "Rating WHERE ProductID = ?";
    private final String sql = """
                    SELECT COALESCE(SUM(od.OrderQuantity), 0) AS TotalSold
                    FROM OrderDetail od
                    JOIN [Order] o ON od.OrderID = o.OrderID
                    WHERE od.ProductID = ? AND o.Status = 1
				""";

    public List<Product> getProduct() {
        List<Product> list = new ArrayList<>();

        try (PreparedStatement stm = c.prepareStatement(GET_ALL_PRODUCT); 
                ResultSet rs = stm.executeQuery()) {
            while (rs.next()) {
                int productId = rs.getInt("ProductID");
                String name = rs.getString("ProductName");
                int quantity = rs.getInt("ProductQuantity");
                String description = rs.getString("Description");
                double price = rs.getDouble("Price");
                int brandId = rs.getInt("BrandID");
                int typeId = rs.getInt("TypeID");

                List<String> productType = getProductType(productId);
                List<SpecProduct> specs = getSpecProduct(productId);
                List<String> images = getImageProduct(productId);
                double avgRate = getAvgRate(productId);
                int sold = getSold(productId);

                list.add(new Product(productId, 
                        name, 
                        quantity, 
                        description, 
                        price, 
                        brandId, avgRate, 
                        sold, productType,
                        specs, images));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    	public void createProduct(Product product, List<Integer> typeIds) {
		String sql = "INSERT INTO Product (ProductName, ProductQuantity, Description, Price, BrandID) VALUES (?, ?, ?, ?, ?)";

		try (PreparedStatement stm = c.prepareStatement(sql)) {
			c.setAutoCommit(false);

			stm.setString(1, product.getProductName());
			stm.setInt(2, product.getProductQuantity());
			stm.setString(3, product.getDescription());
			stm.setDouble(4, product.getPrice());
			stm.setInt(5, product.getBrandID());
			stm.executeUpdate();

			int productId;
			try (ResultSet rs = stm.executeQuery()) {
				if (rs.next()) {
					productId = rs.getInt(1);
				} else {
					throw new Exception("Failed to retrieve product ID.");
				}
			}

			if (typeIds != null) {
				for (int typeId : typeIds) {
					createProductType(productId, typeId);
				}
			}

			if (product.getSpecProducts() != null) {
				for (SpecProduct spec : product.getSpecProducts()) {
					createProductSpec(productId, spec);
				}
			}

			if (product.getImageProduct() != null) {
				for (String url : product.getImageProduct()) {
					createProductImage(productId, url);
				}
			}

			c.commit();
		} catch (Exception e) {
			e.printStackTrace();
			try {
				c.rollback();
			} catch (Exception rollbackEx) {
				rollbackEx.printStackTrace();
			}
		}
	}

	public void createProductType(int productId, int typeId) throws Exception {
		String sql = "INSERT INTO ProductType (ProductID, TypeID) VALUES (?, ?)";
		try (PreparedStatement stm = c.prepareStatement(sql)) {
			stm.setInt(1, productId);
			stm.setInt(2, typeId);
			stm.executeUpdate();
		}
	}

	public void createProductSpec(int productId, SpecProduct spec) throws Exception {
		String sql = "INSERT INTO Has (SpecProduct, SpecProductValue, SpecID, ProductID) VALUES (?, ?, ?, ?)";
		try (PreparedStatement stm = c.prepareStatement(sql)) {
			stm.setString(1, spec.getSpecProduct() == null ? "" : spec.getSpecProduct());
			stm.setDouble(2, spec.getSpecValue() == null ? 0 : spec.getSpecValue());
			stm.setInt(3, spec.getSpecId());
			stm.setInt(4, productId);
			stm.executeUpdate();
		}
	}

	public void createProductImage(int productId, String url) throws Exception {
		String sql = "INSERT INTO Image (URL, ProductID) VALUES (?, ?)";
		try (PreparedStatement stm = c.prepareStatement(sql)) {
			stm.setString(1, url);
			stm.setInt(2, productId);
			stm.executeUpdate();
		}
	}
        
    public List<String> getProductType(int productId) {
        List<String> list = new ArrayList<>();

        try (PreparedStatement stm = c.prepareStatement(GET_PRODUCT_TYPE)) {
            stm.setInt(1, productId);
            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    list.add(rs.getString("TypeName"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<String> getImageProduct(int productId) {
        List<String> list = new ArrayList<>();

        try (PreparedStatement stm = c.prepareStatement(GET_IMAGE_URL)) {
            stm.setInt(1, productId);
            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    list.add(rs.getString("URL"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<SpecProduct> getSpecProduct(int productId) {
        List<SpecProduct> list = new ArrayList<>();

        try (PreparedStatement stm = c.prepareStatement(GET_SPEC_PRODUCT)) {
            stm.setInt(1, productId);
            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    String name = rs.getString("SpecName");
                    String spec = rs.getString("SpecProduct");
                    double value = rs.getDouble("SpecProductValue");
                    list.add(new SpecProduct(name, spec, value));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public double getAvgRate(int productId) {
        try (PreparedStatement stm = c.prepareStatement(GET_AVG_PRODUCCT_RATE)) {
            stm.setInt(1, productId);
            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    return rs.getDouble("AvgRate");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int getSold(int productId) {

        try (PreparedStatement stm = c.prepareStatement(sql)) {
            stm.setInt(1, productId);
            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt("TotalSold");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public Product getProductById(int productId) {
        String sql = "select * from [dbo].[Brand]\n"
                + "SELECT P.ProductID, ProductName, ProductQuantity, Description, Price, B.BrandID \n"
                + "FROM Product P\n"
                + "JOIN [dbo].[Brand] B\n"
                + "ON P.ProductID = B.ProductID\n"
                + "Where P.ProductID = 2";
        try (PreparedStatement stm = c.prepareStatement(sql)) {
            stm.setInt(1, productId);
            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    String name = rs.getString("ProductName");
                    int quantity = rs.getInt("ProductQuantity");
                    String description = rs.getString("Description");
                    double price = rs.getDouble("Price");
                    int brandId = rs.getInt("BrandID");

                    List<String> productType = getProductType(productId);
                    List<SpecProduct> specs = getSpecProduct(productId);
                    List<String> images = getImageProduct(productId);
                    double avgRate = getAvgRate(productId);
                    int sold = getSold(productId);

                    return new Product(productId, name, quantity, description, price, brandId, avgRate, sold,
                            productType, specs, images);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
