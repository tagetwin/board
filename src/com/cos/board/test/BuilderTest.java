package com.cos.board.test;

// 1. 한 번 값이 정해지면 수정이 불가능하다.
// 2. 객체 생성시에 순서를 지킬 필요가 없다.
// 3. 순서를 지키지 않아도 되기 때문에 실수를 할 일이 없다.
// 4.파라메터의 개수를 지키지 않아도 된다.(필드, 속성 추가가 되도 프로그램에 영향을 미치지 않음)

class Product {
	
	private String name;
	private int price;
	
	
	public String getName() {
		return name;
	}
	public int getPrice() {
		return price;
	}

	public Product(Builder builder) {
		this.name = builder.name;
		this.price = builder.price;
	}
	
	static class Builder {
		
		private String name;
		private int price;
		
		public Builder() {}
		
		public Builder name(String value) {
			this.name = value;
			return this;
		}
		
		public Builder price(int value) {
			this.price = value;
			return this;
		}
		
		public Product build() {
			return new Product(this);
		}
	}
	
}

public class BuilderTest {
	public static void main(String[] args) {
		Product p = new Product.Builder()
				.name("홍길동")
				.price(100)
				.build();
		System.out.println(p.getName());
		System.out.println(p.getPrice());
	}
}
