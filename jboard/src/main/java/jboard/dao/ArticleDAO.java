package jboard.dao;

import jboard.dto.ArticleDTO;
import jboard.util.DBHelper;

public class ArticleDAO extends DBHelper{
	private final static ArticleDAO INSTANCE = new ArticleDAO();
	public static ArticleDAO getInstance() {
		return INSTANCE;
	}
	
	private ArticleDAO() {}
	
	public void insert(ArticleDTO dto) {}
	public void select(ArticleDTO dto) {}
	public void selectAll(ArticleDTO dto) {}
	public void update(ArticleDTO dto) {}
	public void delete(int ano) {}
	
	

}
