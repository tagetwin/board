package com.cos.board.test;

// Javascript 는 Function 이 1급 객체
// Java 에 1급 객체 Class 가 유일

interface SendEventListener {
	// 1. return 받고 싶은 데이터 타입을 매개변수로 입력
	public abstract void callback(int money);
	
}

class 환전소 {
	private int money = 10;
	
	// 2. 함수를 void 로 변경
	// 3. 해당 함수에 매개변수로 SendEventListener 를 입력.
	public void send(SendEventListener sendEventListener) {
		
		new Thread(new Runnable() {
			
			// 새로운 쓰레드
			@Override
			public void run() {
				try {
					Thread.sleep(3000);
					money += 20;
					// 4번 새로운 쓰레드 종료시 callback 함수 호출
					sendEventListener.callback(money);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}).start();
	} 
}

public class Test5 {
	public static void main(String[] args) {
		환전소 u = new 환전소();
		u.send(new SendEventListener() {
			
			@Override
			public void callback(int money) {
				System.out.println("money :" + money);
			}
		});
		System.out.println("ho");
	}
}
