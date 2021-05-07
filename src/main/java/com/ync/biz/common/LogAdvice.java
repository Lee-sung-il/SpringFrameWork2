package com.ync.biz.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

@Service
@Aspect	//aspect = PointCut + Advice
public class LogAdvice {
	@Pointcut("execution(* com.ync.biz..*Impl.*(..))")
	public void allPointcut() {}
	
	@Before("allPointcut()")
	public void printLog(JoinPoint jp) {
		System.out.println("[공통 로그] 비지니스 로직 수행 전 동작");
	}
}
