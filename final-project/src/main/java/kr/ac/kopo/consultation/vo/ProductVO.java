package kr.ac.kopo.consultation.vo;

public class ProductVO {
	
	private int financialCode;
	private String productName;
	private String productType;
	private String productGrade;
	private String productTerms;
	
	
	public int getFinancialCode() {
		return financialCode;
	}
	public void setFinancialCode(int financialCode) {
		this.financialCode = financialCode;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	public String getProductGrade() {
		return productGrade;
	}
	public void setProductGrade(String productGrade) {
		this.productGrade = productGrade;
	}
	public String getProductTerms() {
		return productTerms;
	}
	public void setProductTerms(String productTerms) {
		this.productTerms = productTerms;
	}
	
	
	@Override
	public String toString() {
		return "ProductVO [financialCode=" + financialCode + ", productName=" + productName + ", productType="
				+ productType + ", productGrade=" + productGrade + ", productTerms=" + productTerms + "]";
	}
	
	
	

}
