package kr.ac.kopo.consultation.vo;

public class AssetsVO {

    private String clientId;
    private int deposit;
    private int fund;
    private int stock;
    private int bond ;
    private int wrapAccount;
    
    
    
    
	public int getWrapAccount() {
		return wrapAccount;
	}
	public void setWrapAccount(int wrapAccount) {
		this.wrapAccount = wrapAccount;
	}
	public String getClientId() {
		return clientId;
	}
	public void setClientId(String clientId) {
		this.clientId = clientId;
	}
	public int getDeposit() {
		return deposit;
	}
	public void setDeposit(int deposit) {
		this.deposit = deposit;
	}
	public int getFund() {
		return fund;
	}
	public void setFund(int fund) {
		this.fund = fund;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getBond() {
		return bond;
	}
	public void setBond(int bond) {
		this.bond = bond;
	}
	@Override
	public String toString() {
		return "AssetsVO [clientId=" + clientId + ", deposit=" + deposit + ", fund=" + fund + ", stock=" + stock
				+ ", bond=" + bond + ", wrapAccount=" + wrapAccount + "]";
	}
	
	
    
    



}
