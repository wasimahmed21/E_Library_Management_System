package library.management.entities;

import java.sql.Blob;
import java.sql.Date;

public class Book {
	private int bookId;
	private String bookName;
	private Blob bookCover; 
	private int bookPrice;
	private String bookGenre;
	private String bookPublication;
	private int bookEdition;
	private int bookQuantity;
	private Date bookPublishDate;
	private String authorName;	
	private boolean bookStatus;
	


	public Book(int bookId, String bookName, int bookPrice, String bookGenre, String bookPublication, int bookEdition,
			int bookQuantity, Date publishDate, String authorName, boolean bookStatus, Blob bookCover) {
		super();
		this.bookId = bookId;
		this.bookName = bookName;
		this.bookPrice = bookPrice;
		this.bookGenre = bookGenre;
		this.bookPublication = bookPublication;
		this.bookEdition = bookEdition;
		this.bookQuantity = bookQuantity;
		this.bookPublishDate = publishDate;
		this.authorName = authorName;
		this.bookStatus = bookStatus;
		this.bookCover = bookCover;
	}
	
	// Adding books by admin
	public Book(String bookName, int bookPrice, String bookGenre, String bookPublication, int bookEdition,
			int bookQuantity, Date publishDate, String authorName, boolean bookStatus, Blob bookCover) {
		super();
		this.bookName = bookName;
		this.bookPrice = bookPrice;
		this.bookGenre = bookGenre;
		this.bookPublication = bookPublication;
		this.bookEdition = bookEdition;
		this.bookQuantity = bookQuantity;
		this.bookPublishDate = publishDate;
		this.authorName = authorName;
		this.bookStatus = bookStatus;
		this.bookCover = bookCover;

	}

	public Book() {
		// TODO Auto-generated constructor stub
	}

	public Book(int i, String string, Object object, int j, String string2, String string3, Date valueOf, int k, int l,
			Date valueOf2, String string4, boolean b) {
		// TODO Auto-generated constructor stub
	}

	public boolean isBookStatus() {
		return bookStatus;
	}

	public void setBookStatus(boolean bookStatus) {
		this.bookStatus = bookStatus;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public int getBookPrice() {
		return bookPrice;
	}

	public void setBookPrice(int bookPrice) {
		this.bookPrice = bookPrice;
	}

	public String getBookGenre() {
		return bookGenre;
	}

	public void setBookGenre(String bookGenre) {
		this.bookGenre = bookGenre;
	}

	public String getBookPublication() {
		return bookPublication;
	}

	public void setBookPublication(String bookPublication) {
		this.bookPublication = bookPublication;
	}

	public int getBookEdition() {
		return bookEdition;
	}

	public void setBookEdition(int bookEdition) {
		this.bookEdition = bookEdition;
	}

	public int getBookQuantity() {
		return bookQuantity;
	}

	public void setBookQuantity(int bookQuantity) {
		this.bookQuantity = bookQuantity;
	}


	public Date getBookPublishDate() {
		return bookPublishDate;
	}

	public void setBookPublishDate(Date bookPublishDate) {
		this.bookPublishDate = bookPublishDate;
	}

	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

	public Blob getBookCover() {
		return bookCover;
	}

	public void setBookCover(Blob bookCover) {
		this.bookCover = bookCover;
	}

	@Override
	public String toString() {
		return "Book [bookId=" + bookId + ", bookName=" + bookName + ", bookCover=" + bookCover + ", bookPrice="
				+ bookPrice + ", bookGenre=" + bookGenre + ", bookPublication=" + bookPublication + ", bookEdition="
				+ bookEdition + ", bookQuantity=" + bookQuantity + ", bookPublishDate=" + bookPublishDate
				+ ", authorName=" + authorName + ", bookStatus=" + bookStatus + "]";
	}

	

	
}
