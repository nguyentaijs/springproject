package info.nguyentai.springproject.entity;
// Generated Nov 4, 2018 11:13:33 PM by Hibernate Tools 5.1.7.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Category generated by hbm2java
 */
@Entity
@Table(name = "category", catalog = "nguyentaijs")
public class Category implements java.io.Serializable {

	private Integer id;
	private String name;
	private int displayOrder;
	private byte status;
	private Integer parentId;

	public Category() {
	}

	public Category(String name, int displayOrder, byte status) {
		this.name = name;
		this.displayOrder = displayOrder;
		this.status = status;
	}

	public Category(String name, int displayOrder, byte status, Integer parentId) {
		this.name = name;
		this.displayOrder = displayOrder;
		this.status = status;
		this.parentId = parentId;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "name", nullable = false)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "display_order", nullable = false)
	public int getDisplayOrder() {
		return this.displayOrder;
	}

	public void setDisplayOrder(int displayOrder) {
		this.displayOrder = displayOrder;
	}

	@Column(name = "status", nullable = false)
	public byte getStatus() {
		return this.status;
	}

	public void setStatus(byte status) {
		this.status = status;
	}

	@Column(name = "parent_id")
	public Integer getParentId() {
		return this.parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

}
