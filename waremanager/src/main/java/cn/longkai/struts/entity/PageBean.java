package cn.longkai.struts.entity;

import java.util.List;

import com.sun.org.apache.xml.internal.security.Init;

/**
 * 
 * @author jack 2015年7月24日
 *
 */
public class PageBean<T> {
	private List<T> list;// 要返回的某一项列表
	private int allRow;/* 总记录数 */
	private int totalPage;/* 总页数 */
	private int currentPage;// 当前页
	private int pageSize;// 每一页的记录数
	private boolean isFirstPage;// 是否为当前第一页
	private boolean isLastPage;// 是否为最后一页
	private boolean hasPreviousPage;// 是否有前一页
	private boolean hasNextPage;// 是否有下一页

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	public int getAllRow() {
		return allRow;
	}

	public void setAllRow(int allRow) {
		this.allRow = allRow;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public boolean isFirstPage() {
		return isFirstPage;
	}

	public void setFirstPage(boolean isFirstPage) {
		this.isFirstPage = isFirstPage;
	}

	public boolean isLastPage() {
		return isLastPage;
	}

	public void setLastPage(boolean isLastPage) {
		this.isLastPage = isLastPage;
	}

	public boolean isHasPreviousPage() {
		return hasPreviousPage;
	}

	public void setHasPreviousPage(boolean hasPreviousPage) {
		this.hasPreviousPage = hasPreviousPage;
	}

	public boolean isHasNextPage() {
		return hasNextPage;
	}

	public void setHasNextPage(boolean hasNextPage) {
		this.hasNextPage = hasNextPage;
	}

	/**
	 * 初始化页面信息
	 */
	public void init() {
		this.isFirstPage = isFirstPage;
		this.isLastPage = isLastPage;
		this.hasPreviousPage = hasNextPage;
		this.hasNextPage = hasNextPage;
	}

	/**
	 * 根据总记录数和每页的记录数计算总页数
	 * 
	 * @param pageSize
	 *            每页的记录数
	 * @param allRow
	 *            总记录数
	 * @return 总页数
	 */
	public static int countTotalPage(final int pageSize, final int allRow) {
		int totalPage = allRow % pageSize == 0 ? allRow / pageSize : allRow
				/ pageSize + 1;
		return totalPage;
	}
   /**
    * 计算当前也开始的记录数
    * @param pageSize 每页的记录数
    * @param currentPage 当前的页数
    * @return 当前也开始的记录号
    */
	public static int countOffset(final int pageSize, final int currentPage) {
           int offset=pageSize*(currentPage-1);
           return offset;
	}
	/**
	 * 计算当前的页数，若为0 或者请求URL中没有“?page=”则用1代替
	 * @param page 传入的参数，可能为0 或者为空返回1
	 * @return
	 */
	public static int countCurrentPage(int page) {
		final int curPage = (page==0?1:page);
		return curPage;
	}
}
