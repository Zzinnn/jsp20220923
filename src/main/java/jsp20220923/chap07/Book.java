package jsp20220923.chap07;

public class Book {
	private String title;
	private Integer price;

	
	public Book(String title, Integer price) {
		super();
		this.title = title;
		this.price = price;
	}
	
//	
//	@Override
//	public String toString() {
//		return "Book [title=" + title + ", price=" + price + "]";
//	}


	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	
	
}
