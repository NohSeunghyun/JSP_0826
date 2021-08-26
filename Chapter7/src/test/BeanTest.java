/*
 * JSP책 245~ 7장-자바빈 참조
 * <자바빈 사용 이유>
 * 디자인 부분과 비지니스 로직부분을 분리하여
 * 디자이너는 디자이너역할만, 프로그래머는 프로그래머 역할만 할 수 있도록 하기 위해서
 * 
 * 관련있는 데이터를 저장하는 하나의 클래스를 설계하여
 * 하나의 단위로 다루는 것이 훨씬 효율적이다.
 */
package test;
//<자바빈의 설계구약 4가지>
//1.클래스 접근 제어자는 반드시 public로 해야함
public class BeanTest {
	//2.멤버변수는 반드시 private로 해야함 (=속성=property)
	private String name="홍길동";

	//3.인자(=매개변수=인수=argument)없는 생성자가 반드시 존재해야함 = 기본생성자. 기본생성자는 코드를 적지않아도 존재하므로 작성안해도됨
	
	//4. get~()와 set~() 접근 제어자도 반드시 public로 해야함.
	//읽기 전용인 변수(값 변경 안되게 할 변수 ex)회원번호)일 경우 get메서드만 정의
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
